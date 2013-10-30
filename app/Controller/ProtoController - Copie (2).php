<?php
	//include_once '../../lib/Cake/Model/ConnectionManager.php';
	//include_once 'AppController.php';
	App::uses('AppController','Controller');
	App::uses('Model', 'Model');
	App::uses('AppModel', 'Model');
	App::uses('Taxon', 'Model');
	App::uses('Taxon_Name', 'Model');
	App::uses('Taxon_Addi', 'Model');
	define("base", "narc_ereleve"); //name of database use
	define("limit",0);  //sql limit default value
	define("offset",0); //sql offset default value
	define("cache_time",3600);
	
	class ProtoController extends AppController{
		var $helpers = array('Xml', 'Text','form','html','Cache','Json');
		public $components = array('RequestHandler');
		var $typereturn;			
		public $cacheAction = array(  //set the method(webservice) with a cached result
			'proto_list' => cache_time,
			//'station_get' => cache_time,  
			'proto_taxon_get' => cache_time,
			'proto_get' => cache_time
		);
		
		function index(){
			$this->loadModel('Taxon');
			//$this->loadModel('TaxonName');
			//$this->loadModel('TaxonAddi');
			$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
			fwrite($fp, print_r($this->Taxon->find('all',array('limit'=>10)),true))/*.'\n'.$this->TaxonAddi->find('first')*/;
			
			//$this->TaxonName->find('first');
			
		}
		
		//controller method for the list of protocole
		function proto_list(){
			$base=base;
			$table="TProtocole";
			$test=false;
			//verify if it's a test
			if(isset($this->params['url']['test']) && $this->params['url']['test']==1 && $this->params['url']['tabletest']){
				$base="test";
				$table=$this->params['url']['tabletest'];
				$test=true;
				$this->set("test","test");
			}
		
			$model = new AppModel("TProtocole",$table,$base);	
			$conditions=array();
			$debug="";			
			
			//case with a keyword parameter
			if(isset($this->params['url']['motcle'])){
				$mot=$this->params['url']['motcle'];
				$mot=str_replace(" ","%",$mot);
				$conditions=array("Relation LIKE"=>"%$mot%");
			}	
			
			$table = $model->find("all",array("conditions"=>array("Active" => 1)+$conditions));	
			$this->set("debug",$debug);
			$this->set('protos', $table);
			// Set response as XML
			$this->RequestHandler->respondAs('xml');
			$this->viewPath .= '/xml';
			$this->layout='xml';
			$this->layoutPath = 'xml';		
		}
		
		
		
		//get station for a datatable js can be filtered by protocoles and other param
		function station_get(){	
			$this->typereturn="DatatableJSON";
			$find=1;
			$debug="";
			$table_name="TStations"; //if proto name not set
			$place="";
			$region="";
			$date="";
			$search="";
			$tsearch="";
			$Stationjoin=array();
			$Stationjoinstringname="";
			$dot="";
			$Distinct=array();
			$ModelName="AppModel"; //for the array returned by find
			
			if(isset($this->params['url']['to_carto']) && $this->params['url']['to_carto']!=""){
				if($this->params['url']['to_carto']=="yes"){
					$find=2;
				}
			}
			
			$test=0;
			$base=base;
			//verify if it's a test
			if(isset($this->params['url']['test']) && $this->params['url']['test']==1 && $this->params['url']['tabletest']){
				$test=1;
				$base="test";
				$table_name=$this->params['url']['tabletest'];
				$this->set("test","test");
			}
			
			//if protocole filter join to station
			if(isset($this->params['url']['id_proto']) && $this->params['url']['id_proto']!="" && $test==0){
				$Distinct= array();
				$id_proto=$this->params['url']['id_proto'];
				$model_list_proto = new AppModel("TProtocole","TProtocole",base);
				$table_name_array=$model_list_proto->find('first',array("conditions" => array("TTheEt_PK_ID"=>$id_proto)));
				if(isset($table_name_array['AppModel']['Relation']))
					$table_name="TProtocol_".$table_name_array['AppModel']['Relation'];
				$Stationjoinstringname="TStationsJoin";
				$dot=".";
				$Stationjoin=array('joins' => array(
						array(
							'table' => 'TStations',	
							'alias' => $Stationjoinstringname,	
							'type' => 'INNER',
							'conditions' => array(
								"FK_TSta_ID = $Stationjoinstringname.TSta_PK_ID"
							),
							'group'=>"$Stationjoinstringname.TSta_PK_ID"
						)
					)
				);
				$ModelName=$Stationjoinstringname;	
			}
			
			
			
			if($table_name!="TProtocol_"&& $table_name!=""){
				$Stationjoinstringnamedot=$Stationjoinstringname.$dot;
				$model_proto = new AppModel('TStation',$table_name,$base);
				$this->set("Model",$model_proto);
				//array that contain the column return
				$column_array = array($Stationjoinstringnamedot."TSta_PK_ID",$Stationjoinstringnamedot."FieldActivity_Name"
				,$Stationjoinstringnamedot."Name",$Stationjoinstringnamedot."DATE",$Stationjoinstringnamedot."Region",$Stationjoinstringnamedot."Place"
				,$Stationjoinstringnamedot."LAT",$Stationjoinstringnamedot."LON");
				$condition_array = array('LAT IS NOT NULL','LON IS NOT NULL');
				$limit=limit;
				$offset=offset;
				$sEcho="1";
				$total=$model_proto->find("count",array()+$Stationjoin);
				
				//BBOX param if map call
				if(isset($this->params['url']['bbox']) && $this->params['url']['bbox']!=""){
					$bbox=$this->params['url']['bbox'];
					$bbox_array=split(",",$bbox);
					$min_lon=$bbox_array[0];
					$max_lon=$bbox_array[2];
					$min_lat=$bbox_array[1];
					$max_lat=$bbox_array[3];
					$condition_array[] = array("LAT >= $min_lat and LAT <= $max_lat and LON >= $min_lon and LON <= $max_lon");
				}
				
				if(isset($this->params['url']['id_station']) && $this->params['url']['id_station']!=""){
					$id_stations=$this->params['url']['id_station'];
					$id_station_array=split(",",$id_stations);	
					$condition_id_sta="";
					for($i=0;$i<count($id_station_array);$i++){
						$or="or";
						if($i==count($id_station_array)-1)
							$or=" ";
						$condition_id_sta.="TSta_PK_ID = $id_station_array[$i] $or ";
					}					
					$condition_array[] = array($condition_id_sta);
					//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
					//fwrite($fp, print_r($condition_array,true));
				}
				$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
				fwrite($fp, print_r($condition_array,true));
				
				//take limit paramater for a limit filter
				if(isset($this->params['url']['iDisplayLength']) && $this->params['url']['iDisplayLength']!=""){
					$limit=intval($this->params['url']['iDisplayLength']);
				}
				//take offset parameter for a offset filter
				if(isset($this->params['url']['iDisplayStart']) && $this->params['url']['iDisplayStart']!=""){
					$offset=intval($this->params['url']['iDisplayStart']);	
				}
				//take sEcho parameter (param for the datable js)
				if(isset($this->params['url']['sEcho'])){
					$sEcho=$this->params['url']['sEcho'];	
				}			
				$sort_column=$column_array[0];
				$sort_dir="asc";
				//column sort
				if(isset($this->params['url']['iSortCol_0']) &&  $this->params['url']['sSortDir_0']){
					$index_col=intval($this->params['url']['iSortCol_0']);
					$sort_dir= $this->params['url']['sSortDir_0'];
					$sort_column=$column_array[$index_col];
				}
				//take taxonsearch parameter for a taxon filter
				if(isset($this->params['url']['taxonsearch']) && $this->params['url']['taxonsearch']!=""){
					$tsearch=$this->params['url']['taxonsearch'];
				}
				
				//take place parameter for a place filter
				if(isset($this->params['url']['place']) && $this->params['url']['place']!=""){
					$place=$this->params['url']['place'];					
				}
				
				//take region parameter for a region filter
				if(isset($this->params['url']['region']) && $this->params['url']['region']!=""){
					$region=$this->params['url']['region'];
				}
				//if date filter
				if(isset($this->params['url']['idate']) && $this->params['url']['idate']!=""){
					date_default_timezone_set('UTC');
					$date=$this->params['url']['idate'];	
				}
				
				//take the word for the research and do the research
				if(isset($this->params['url']['sSearch']) && $this->params['url']['sSearch']!=""){
					$search=$this->params['url']['sSearch'];				
				}
				
				//create condition array for the sql request
				$condition_array=$model_proto->filter_create($condition_array,$place,$region,$date,"","","",$search,$tsearch,"",true);				
				//find station with the right parameter without search				
				$station = $model_proto->find("all",array('recursive' => 0
														,'limit'=>$limit
														,'offset'=>$offset
														,'fields'=>$column_array
														,'order'=> array("$sort_column $sort_dir")
														,'conditions'=>$condition_array)+$Stationjoin
												);
				if($station){
					$totaldisplay = $model_proto->find("count",array('recursive' => 0
														,'fields'=>$column_array
														,'conditions'=>$condition_array)+$Stationjoin
												);	
				}								
				else 
					$totaldisplay=0;
				
			}
			else
				$find=-1;
			//$this->filedebug($totaldisplay);	
			$this->set("find",$find);			
			$this->set("sEcho",$sEcho);
			$this->set("table",$station);
			$this->set("schema",$column_array);
			$this->set("total",$total);
			$this->set("totaldisplay",$totaldisplay);
			$this->set("ModelName",$ModelName);
			$this->set("debug",$debug); 
			$this->RequestHandler->respondAs('json');
			$this->viewPath .= '/json';
			$this->layoutPath = 'json';											
		}
		
		//controller method for the getting taxon from protocole service 
		function proto_taxon_get(){
			$debug="";
			$find=1;
			$table_name="TProtocole";
			$base=base;
			$test=false;
			$taxons=array();
			if(isset($this->params['url']['id_proto']) || ($this->params['url']['test']==1 && $this->params['url']['tabletest'])){
				$id_proto = $this->params['url']['id_proto'];
				//for test
				if(isset($this->params['url']['test']) && $this->params['url']['test']==1){
					$table_name=$this->params['url']['tabletest'];
					$base='test';
					$test=true;
					$this->set("test","test");
				}
				//get the name of table from the id
				$model_list_proto = new AppModel($table_name,$table_name,$base);
				$pk_id_name="TTheEt_PK_ID";
				if(isset($id_proto_array['AppModel']["TTheEt_PK_ID"]))
					$id_proto=$id_proto_array['AppModel']["TTheEt_PK_ID"];
				else if(isset($id_proto_array['AppModel']["ttheEt_PK_ID"])){
					$id_proto=$id_proto_array['AppModel']["ttheEt_PK_ID"];	
					$pk_id_name="ttheEt_PK_ID";
				}
				$table_name_array=$model_list_proto->find('first',array("conditions" => array($pk_id_name=>$id_proto)));
				if(isset($table_name_array['AppModel']['Relation'])){
					if(!$test)
						$table_name="TProtocol_".$table_name_array['AppModel']['Relation'];
					else
						$table_name=$table_name_array['AppModel']['Relation']."s";
					
				}	
				else
					$find=-1;
				if($find!=-1){	
					$array_conditions=array();
					if(isset($this->params['url']['search']) && isset($this->params['url']['search'])!=""){
						$search=$this->params['url']['search'];
						$array_conditions+=array('Name_Taxon LIKE'=>'%'.$search.'%');	
					}				
					//finding taxon from table
					try{					
						$model_proto = new AppModel($table_name,$table_name,$base);	
						//check if the table have taxon field
						$taxon_find=false;
						foreach ($model_proto->schema() as $key=>$val){
							if($key=="Name_Taxon")
								$taxon_find=true;							
						}
						if($taxon_find){
							$taxons=$model_proto->find('all',array(
								'fields'=>array('Name_Taxon'),
								'group'=>array('Name_Taxon'),
								'conditions'=>$array_conditions
							));							
						}	
						else
							$find=-2;//no taxon in table
					}						
					catch(Exception $e){
						$this->set('find',-1); //table not exist
					}	
				}				
			}			
			else
				$find=0;	
			$this->set("taxons",$taxons);		
			$this->set("table_name",$table_name);	
			$this->set("debug",$debug);
			$this->set("find",$find);
			// Set response as XML
			
			$this->RequestHandler->respondAs('xml');		
			$this->viewPath .= '/xml';
			$this->layoutPath = 'xml';	
			$this->layout= "xml";
		}
		
		//controller method for the protocole struct service
		function proto_get(){
			//xdebug_start_code_coverage();
			$debug="";
			$find=1;
			$test=false;		
			if(isset($this->params['url']['test']) && $this->params['url']['test']==1 && $this->params['url']['tabletest']){
				$base="test";
				$table=$this->params['url']['tabletest'];
				$test=true;
				$this->set("test","test");
			}
			if(isset($this->params['url']['proto_name']) || isset($this->params['url']['id_proto']) || isset($this->params['url']['id_proto'])){ 
				$table_name="";
				$id_proto="";
				$pk_id_name="";
				$model_list_proto = new AppModel("TProtocole","TProtocole",base);
				
				foreach ($model_list_proto->schema() as $key=>$val){
					if($key=="TTheEt_PK_ID"){
						$pk_id_name="TTheEt_PK_ID";
					}
					if($key=="ttheEt_PK_ID"){
						$pk_id_name="ttheEt_PK_ID";
					}	
							
				}
				
				//get id from the name of the protocole
				if(isset($this->params['url']['proto_name'])){
					$table_name = $this->params['url']['proto_name'];	
					$name=str_replace("TProtocol_","",$table_name);
					$id_proto_array=$model_list_proto->find('first',array("conditions" => array("Relation"=>$name)));
					if(isset($id_proto_array['AppModel']["TTheEt_PK_ID"]))
						$id_proto=$id_proto_array['AppModel']["TTheEt_PK_ID"];
					else if(isset($id_proto_array['AppModel']["ttheEt_PK_ID"])){
						$id_proto=$id_proto_array['AppModel']["ttheEt_PK_ID"];	
					}	
				}	
				
				//get id from param
				if(isset($this->params['url']['id_proto'])){
					$id_proto=$this->params['url']['id_proto'];						
				}

				//get id from request param (case with this kind of url : proto/get/"id")
				if(isset($this->params['url']['id_proto'])){
					$id_proto= $this->params['url']['id_proto'];
				}	
				
				if($id_proto!=""){
					$table_name_array=$model_list_proto->find('first',array("conditions" => array($pk_id_name=>$id_proto)));
					if(isset($table_name_array['AppModel']['Relation']))
						$table_name="TProtocol_".$table_name_array['AppModel']['Relation'];					
					else{
						$find=-1;
						$this->set('find',-1);
					}
				}
				
				if($find!=-1){	
					//description view that contain the field type (if list contain also items)
					//$desc_query="SELECT t,c,cd,td From V_Qry_Column_Descr where t='dbo.$table_name'";
					$desc_query= "SELECT [table] as t,  [column] as c, CONVERT(nchar(40),column_desc)as cd, CONVERT(nchar(40),table_desc)as td
FROM         (SELECT     u.name + '.' + t.name AS [table], td.value AS table_desc, c.name AS [column], cd.value AS column_desc
                       FROM          sys.sysobjects AS t INNER JOIN
                                              sys.sysusers AS u ON u.uid = t.uid LEFT OUTER JOIN
                                              sys.extended_properties AS td ON td.major_id = t.id AND td.minor_id = 0 AND td.name = 'MS_Description' INNER JOIN
                                              sys.syscolumns AS c ON c.id = t.id LEFT OUTER JOIN
                                              sys.extended_properties AS cd ON cd.major_id = c.id AND cd.minor_id = c.colid AND cd.name = 'MS_Description'
                       WHERE      (t.type = 'u')) AS derivedtbl_1 where  [table]='dbo.$table_name'";
					try{
						$desc_proto = new AppModel("V_Qry_Column_Descr","V_Qry_Column_Descr",base);	
						$desc=$this->simply_table($desc_proto->query($desc_query));
						//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
						//fwrite($fp, print_r($desc,true));
						$this->set('desc',$desc);					
					}
					catch(Exception $e){
						$this->set('find',-3); //View not create
					}
					//		
					//create model from protocol and get table descr on the view for keyword protocol	
					try{					
						$model_proto = new Model($table_name,$table_name,base);		
						$this->set('find',1); //table find
						//just for take one column name
						$keycolarr=array_keys($model_proto->schema());
						$keycol=$keycolarr[0];						
						$table_desc= $desc[$keycol]['td'];
						$this->set("table_desc",$table_desc);
					}
					catch(Exception $e){
						$this->set('find',-1); //table not find
					}
					try{
						$model_thesaurus = new Model("Tthesaurus","Tthesaurus",base);					
						$this->set('model_T',$model_thesaurus);
					}
					catch(Exception $e){
						$this->set('find',-2); //table not defined
					}					
					$this->set('model',$model_proto);
					$this->set('nom',$table_name);
					$this->set('id_proto',$id_proto);
				}				
			}
			else{
				$this->set('nom',"");
				$this->set('find',0);
			}		
			
			$this->set("debug",$debug);
			// Set response as XML
			$this->RequestHandler->respondAs('xml');
			$this->viewPath .= '/xml';
			$this->layoutPath = 'xml';
			//var_dump(xdebug_get_code_coverage());
		}
		
		//column value list from a table webservice
		function column_list(){
			$table_name="";
			$column_name="";
			$array_conditions=array();
			$total="";
			$format="json";
			
			if(isset($this->params['url']['table_name'])){
				$table_name=$this->params['url']['table_name'];
			}
			
			if(isset($this->params['url']['format']) && $this->params['url']['format']!=""){
				if(stripos($this->params['url']['format'],"xml")!= false )
					$format="xml";
				else if(stripos($this->params['url']['format'],"json")!= false)	
					$format="json";
			}
			
			if(isset($this->request->params['table_name'])){
				$table_name=$this->request->params['table_name'];
			}
			
			if(isset($this->params['url']['column_name'])){
				$column_name=$this->params['url']['column_name'];
			}
			
			if(isset($this->request->params['column_name'])){
				$column_name=$this->request->params['column_name'];
			}
			
			if($column_name!="" && $table_name!=""){
				$field_array=array($column_name);
				if($table_name=="TTaxa_name"){
					$field_array=array($column_name,"FK_Taxon");
				}
				if(isset($this->params['url']['filter'])){
					$filter="%".$this->params['url']['filter']."%";
					$array_conditions += array("$column_name LIKE"=>$filter);
				}				
			
				$model=new AppModel($table_name,$table_name,"mycoflore");
				
				$model_result=$model->find("all",array(
								'fields'=>$field_array,
								'group'=>$field_array,
								'conditions'=>$array_conditions)
								);
				
				$nb=$model->find("count",array(
								'fields'=>$field_array,
								'group'=>$field_array,
								'conditions'=>$array_conditions)
								);	
				/*
				$total=$model->find("count",array(
								'fields'=>array($column_name),
								'group'=>array($column_name))								
								);		*/
								
				$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
				fwrite($fp, print_r($model_result,true));				
				$this->set("find",1);
				$this->set("nb",$nb);
				$this->set("total",$total);
				$this->set("table_name",$table_name);
				$this->set("column_name",$column_name);
				$this->set("result",$model_result);				
			}
			else{
				$this->find("find",-1);
				if($column_name=="" && $table_name==""){
					$this->find("mesage","Column name and table name parameter missing");					
				}
				else if($table_name==""){
					$this->find("mesage","table name parameter missing");					
				}
				else if($column_name==""){
					$this->find("mesage","Column name parameter missing");					
				}
			}
			
					
			// Set response as XML
			$this->RequestHandler->respondAs('xml');
			$this->viewPath .= '/xml';
			$this->layoutPath = 'xml';
			$this->layout = 'xml';
			if($table_name=="TTaxa_name" && $column_name=="NAME_WITHOUT_AUTHORITY")
				$this->render('taxon_name_list');
		}
		
		//taxon get webservice
		function taxon_get(){
			$model_taxon = new AppModel("TTaxa","TTaxa","mycoflore");
			$condition_array=array();
			$KINGDOM="";
			$NAME_VALID="";
			$NAME_WITHOUT_AUTHORITY="";
			$NAME_WITH_AUTHORITY="";
			$id_taxon="";
			$ID_NAME="";
			$ID_HIGHER_TAXON="";
			$AUTHORITY="";
			$NOM_VERN_FR="";
			$NOM_VERN_ENG="";
			$PHYLUM="";
			$CLASS="";
			$ORDER="";
			$FAMILY="";
			$RANK="";
			$TAXREF_CD_NOM="";
			$TAXREF_CD_TAXSUP="";
			$TAXREF_CD_REF="";
			$join=array();
			$format="json";
			$this->loadModel('Taxon');
			
			//get id from param
			if(isset($this->params['url']['id_taxon'])){
				$id_taxon=$this->params['url']['id_taxon'];						
			}

			if(isset($this->params['url']['format']) && $this->params['url']['format']!=""){
				if(stripos($this->params['url']['format'],"xml")!= false )
					$format="xml";
				else if(stripos($this->params['url']['format'],"json")!= false)	
					$format="json";
			}
			
			//get id from request param (case with this kind of url : proto/get/"id")
			if(isset($this->request->params['id_taxon']) && $this->request->params['id_taxon']!="[0-9]+"){
				$id_taxon= $this->request->params['id_taxon'];
			}

			//get kingdom param
			if(isset($this->params['url']['KINGDOM'])){
				$KINGDOM= $this->params['url']['KINGDOM'];
			}	
			
			//get name_valid param
			if(isset($this->params['url']['NAME_VALID'])){
				$NAME_VALID= $this->params['url']['NAME_VALID'];
			}
			
			//get name_id param
			if(isset($this->params['url']['ID_NAME'])){
				$ID_NAME= $this->params['url']['ID_NAME'];
			}
			
			//get name_without_authority param
			if(isset($this->params['url']['NAME_WITHOUT_AUTHORITY'])){
				$NAME_WITHOUT_AUTHORITY= $this->params['url']['Name_without_Authority'];
			}
			
			//get ID_HIGHER_TAXON param
			if(isset($this->params['url']['ID_HIGHER_TAXON'])){
				$ID_HIGHER_TAXON= $this->params['url']['ID_HIGHER_TAXON'];
			}
			
			//get NOM_VERN_FR param
			if(isset($this->params['url']['NOM_VERN_FR'])){
				$NOM_VERN_FR= $this->params['url']['NOM_VERN_FR'];
			}
						
			//get AUTHORITY param
			if(isset($this->params['url']['AUTHORITY'])){
				$AUTHORITY= $this->params['url']['AUTHORITY'];
			}
			
			//get NOM_VERN_ENG param
			if(isset($this->params['url']['NOM_VERN_ENG'])){
				$NOM_VERN_ENG= $this->params['url']['NOM_VERN_ENG'];
			}
			
			//get PHYLUM param
			if(isset($this->params['url']['PHYLUM'])){
				$PHYLUM= $this->params['url']['PHYLUM'];
			}
			
			//get CLASS param
			if(isset($this->params['url']['CLASS'])){
				$CLASS= $this->params['url']['CLASS'];
			}
			
			//get ORDER param
			if(isset($this->params['url']['ORDER'])){
				$ORDER= $this->params['url']['ORDER'];
			}
			
			//get FAMILY param
			if(isset($this->params['url']['FAMILY'])){
				$FAMILY= $this->params['url']['FAMILY'];
			}
			
			//get RANK param
			if(isset($this->params['url']['RANK'])){
				$RANK= $this->params['url']['RANK'];
			}
			
			//get TAXREF_CD_NOM param
			if(isset($this->params['url']['TAXREF_CD_NOM'])){
				$TAXREF_CD_NOM= $this->params['url']['TAXREF_CD_NOM'];
			}
			
			//get TAXREF_CD_NOM param
			if(isset($this->params['url']['TAXREF_CD_TAXSUP'])){
				$TAXREF_CD_TAXSUP= $this->params['url']['TAXREF_CD_TAXSUP'];
			}
			
			//get TAXREF_CD_REF param
			if(isset($this->params['url']['TAXREF_CD_REF'])){
				$TAXREF_CD_REF= $this->params['url']['TAXREF_CD_REF'];
			}
			
			$array_conditions=$model_taxon->taxon_filter($condition_array,$id_taxon,$ID_HIGHER_TAXON,$ID_NAME
			,$NAME_WITH_AUTHORITY,$AUTHORITY,$NAME_WITHOUT_AUTHORITY,$NAME_VALID,$NOM_VERN_FR,$NOM_VERN_ENG,$NOM_VERN_FR
			,$KINGDOM,$PHYLUM,$CLASS,$ORDER,$FAMILY,$RANK,$TAXREF_CD_NOM,$TAXREF_CD_TAXSUP,$TAXREF_CD_REF
			,true);
			
			$join=array('joins' => array(
						array(
							'table' => 'TTaxa_name',	
							'alias' => "TTaxa_name_join",	
							'type' => 'INNER',
							'conditions' => array(
								"FK_PREFERED_NAME = TTaxa_name_join.ID_NAME"
							)
						),
						array(
							'table' => 'TTaxa_additonal_values',	
							'alias' => 'TTaxa_additonal_values_join',	
							'type' => 'LEFT',
							'conditions' => array(
								"ID_NAME=TTaxa_additonal_values_join.FK_ID_NAME"
							),
							'group'=>"TTaxa_additonal_values_join.FK_ID_NAME"
						)
						
					)
				);
			
			$taxons=$this->Taxon->find("all",array(
				'conditions'=>$array_conditions,
				'order'=>array("ID_TAXON asc")
			));
			/*$taxons=$model_taxon->find("all",array(
				'fields'=>array("AppModel.*","TTaxa_name_join.ID_NAME","TTaxa_name_join.TAXREF_CD_NOM","TTaxa_name_join.NAME_WITH_AUTHORITY","TTaxa_name_join.AUTHORITY","TTaxa_name_join.NAME_WITHOUT_AUTHORITY","TTaxa_additonal_values_join.FK_value_type","TTaxa_additonal_values_join.value"),
				'conditions'=>$array_conditions,
				'order'=>array("ID_TAXON asc")
			)+$join);*/
			$nb_taxons=$model_taxon->find("count",array(
				'conditions'=>$array_conditions
			)+$join);
			
			//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');		
			//fwrite($fp, print_r($taxons,true));
			
			if(!($taxons && (count($taxons)>0)))
				$taxons=array();
			
			$this->set("taxons",$taxons);
			$this->set("nb",$nb_taxons);
			
			// Set response as XML
			$this->RequestHandler->respondAs('json');
			$this->viewPath .= '/json';
			$this->layoutPath = 'json';
			$this->layout='json';
		}
			
		//create a simplified table of this return by find->query
		function simply_table($table){
			$sTable = array();
			//$this->filedebug(print_r($table,true));
			for($i=0;$i<sizeof($table);$i++){
				$j=0;
				foreach($table[$i][0] as $key=>$val){
					if($j!=0){	
						if($j==1){	
							$tablename=$val;
							$sTable+=array($tablename=>array());
						}
						else
							$sTable[$tablename]+=array($key=>$val);
					}					
					$j++;
				}				
			}
			return $sTable;
		}	
		
		//for a possible insertion of value
		function insert_value($model,$data){
			$this->loadModel($model);
			/*$this->$model->save(Array
			(
				[$modele] => Array
				(
					[nomduchamp1] => 'valeur'
					[nomduchamp2] => 'valeur'
				)
			));*/
			
			/*
				$this->Post->set('title', 'Nouveau titre pour l\'article');
				$this->Post->save();
			*/
		}
		
		//for a possible table creation
		function proto_create(){
			/*$query = "CREATE TABLE customer 
						  (First_Name char(50), 
						  Last_Name char(50), 
						  Address char(50) default 'Unknown', 
						  City char(50) default 'Mumbai', 
						  Country char(25), 
						  Birth_Date date)";*/
			//$query = "Drop TABLE customer";			  
			$db = ConnectionManager::getDataSource(base);
			
			if($db->rawQuery($query))
				$this->set("query_result","true");
			else
				$this->set("query_result","false");
			// Set response as XML
			$this->RequestHandler->respondAs('xml');
			$this->viewPath .= '/xml';
			$this->layoutPath = 'xml';
		}
		
		
	}
?>