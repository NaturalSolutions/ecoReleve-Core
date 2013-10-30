<?php	include_once 'AppController.php';	App::uses('Model', 'Model');	App::uses('AppModel', 'Model');	App::uses('CartoModel', 'Model');	App::uses('HttpSocket', 'Network/Http');		define("cartobase","narc_ereleve");	define("cache_timec",3600);	class CartoController extends AppController{				var $helpers = array('Xml','Json', 'Text','form','html','cache');		public $components = array('RequestHandler');		public $cacheAction = array(						//'station_get' => cache_timec					);		var $stations;		var $filename;						//get station for a datatable js can be filtered by protocoles and other param		function station_get(){				ini_set('memory_limit', '7000M');			$find=1;			$debug="";			$zoom=0;			$table_name="TStations"; //if proto name not set			$place="";			$region="";			$idate="";			$tsearch="";			$clus="no";			$format="json";			$layout="json";						$ModelName="CartoModel"; //for the array returned by find			$HttpSocket = new HttpSocket();			$bbox="";						$model_proto=new CartoModel();			/**______getting filters parameters for the url of station get__________________**/			$id_proto="";			if(isset($this->params['url']['id_proto']) && $this->params['url']['id_proto']!=""){				$id_proto=$this->params['url']['id_proto'];			}			$tsearch="";			if(isset($this->params['url']['taxonsearch']) && $this->params['url']['taxonsearch']!=""){				$tsearch=$this->params['url']['taxonsearch'];			}			$place="";			if(isset($this->params['url']['place']) && $this->params['url']['place']!=""){				$place=$this->params['url']['place'];			}			$region="";			if(isset($this->params['url']['region']) && $this->params['url']['region']!=""){				$region=$this->params['url']['region'];			}			$idate="";			if(isset($this->params['url']['idate']) && $this->params['url']['idate']!=""){				$idate=$this->params['url']['idate'];			}			$search="";			if(isset($this->params['url']['sSearch']) && $this->params['url']['sSearch']!=""){				$search=$this->params['url']['sSearch'];			}			/**_________________________________________________________________________**/								//zoom parameter			$zoom="";			if(isset($this->params['url']['zoom']) && $this->params['url']['zoom']!=""){				$zoom=$this->params['url']['zoom'];			}						//cluster parameter			if(isset($this->params['url']['cluster']) && $this->params['url']['cluster']!=""){				$clus=$this->params['url']['cluster'];				}								//test case			$testparam="";			if(isset($this->params['url']['test']) && $this->params['url']['test']==1 && $this->params['url']['tabletest']){				$tabletest=$this->params['url']['tabletest'];				$testparam = "&test=1&tabletest=$tabletest";				$this->set("test","test");			}						//BBOX param			if(isset($this->params['url']['bbox']) && $this->params['url']['bbox']!=""){				$bbox=$this->params['url']['bbox'];							}						$uri_array=split("/",$_SERVER["REQUEST_URI"]);			$project_name=$uri_array[1];						//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');						//fwrite($fp, print_r("ici" ,true));			//post httprequest for get the stations				if(stristr($_SERVER["SERVER_SOFTWARE"], 'apache')){				$results = $HttpSocket->get("http://localhost:81/html/ecoReleve-core/station/get?id_proto=$id_proto&place=$place&region=$region&idate=$idate&taxonsearch=$tsearch&to_carto=yes"."&bbox=".$bbox.$testparam);				$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');							fwrite($fp, print_r($results->body ,true));			}			else{				$results = $HttpSocket->get("http://localhost/$project_name/station/get?id_proto=$id_proto&place=$place&region=$region&idate=$idate&taxonsearch=$tsearch&to_carto=yes".$testparam.$bbox);				//$fp = fopen('C:\wamp\www\re', 'w');						//fwrite($fp, print_r($project_name ,true));			}				$station = json_decode($results->body,true);				$this->set("find",$find);			if($clus=="yes"){				$stations_marquers_clustered=$model_proto->cluster($station,20,$zoom);				$this->set("table",$stations_marquers_clustered);							}				else					$this->set("table",$station);						$this->set("ModelName",$ModelName);			$this->set("debug",$debug); 			$this->RequestHandler->respondAs($format);			$this->viewPath .= '/json';			$this->layout="json";			$this->layoutPath = $layout;			}				//Get station using a round sql		function station_get2(){			/**				round test				round = 1 ~ zoom=9				round = 2 ~ zoom=12				round = 3 ~ zoom=15				round = 4 ~ zoom=17				round = 5 ~ zoom=18			*/			$round=5;			$find=1;			$zoom=2;			$place="";			$region="";			$fa="";			$min_date="";			$max_date="";			$bbox_condition="";			//zoom parameter			if(isset($this->params['url']['zoom']) && $this->params['url']['zoom']!=""){				$zoom=$this->params['url']['zoom'];			}						//place parameter			if(isset($this->params['url']['place']) && $this->params['url']['place']!=""){				$place="and place like '%".$this->params['url']['place']."%'";			}						//region parameter			if(isset($this->params['url']['region']) && $this->params['url']['region']!=""){				$region="and region like '%".$this->params['url']['region']."%'";			}						//field activity parameter			if(isset($this->params['url']['Name-fieldActivity']) && $this->params['url']['Name-fieldActivity']!=""){				$fa="and FieldActivity_Name like '%".$this->params['url']['Name-fieldActivity']."%'";			}						//year parameter			if(isset($this->params['url']['year']) && $this->params['url']['year']!=""){				$year=$this->params['url']['year'];			}						//month parameter			if(isset($this->params['url']['month']) && $this->params['url']['month']!=""){				$month=$this->params['url']['month'];			}						//date parameter			if(isset($this->params['url']['date']) && $this->params['url']['date']!=""){				$date=$this->params['url']['date'];			}						//min_date parameter			if(isset($this->params['url']['Min-date']) && $this->params['url']['Min-date']!=""){				$min_date="and CONVERT(VARCHAR, DATE, 120)>='".$this->params['url']['Min-date']."'";			}						//max_date parameter			if(isset($this->params['url']['Max-date']) && $this->params['url']['Max-date']!=""){				$max_date="and CONVERT(VARCHAR, DATE, 120)<='".$this->params['url']['Max-date']."'";			}						//BBOX param			if(isset($this->params['url']['bbox']) && $this->params['url']['bbox']!=""){				$bbox=$this->params['url']['bbox'];				$bbox_array=split(",",$bbox);				$min_lon=$bbox_array[0];				$max_lon=$bbox_array[2];				$min_lat=$bbox_array[1];				$max_lat=$bbox_array[3];								$bbox_condition=" and LON >= $min_lon and LAT >= $min_lat and LON <= $max_lon and LAT <= $max_lat";			}									switch($zoom){				case ($zoom<=9):					$round=1;					break;				case ($zoom>9 && $zoom<=12):					$round=2;					break;				case ($zoom>12 && $zoom<=15):					$round=3;					break;				case ($zoom>15 && $zoom<=17):					$round=4;					break;				case ($zoom>=18):					$round=5;					break;				}			//$round=0;			$desc_query= "SELECT DISTINCT 			count(*) OVER(PARTITION BY rLat, rLon) AS [count],			rLat, rLon			FROM (				SELECT round(LAT,$round) AS rLat, round(LON,$round) AS rlon				FROM  tstations 				WHERE NOT LAT IS NULL AND NOT LON IS NULL $region $bbox_condition $place $fa $min_date $max_date			) roundTsta";						$desc_proto = new CartoModel("Sta","TStations",cartobase);							$table=$desc_proto->query($desc_query);			//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res", 'w');					//fwrite($fp, print_r($table,true));			$cluster=array();			if($table && count($table)>0){				$cluster=$desc_proto->cluster2($table,20,$zoom);				//$fp = fopen($_SERVER['DOCUMENT_ROOT']."/tmp/res2", 'w');					//fwrite($fp, print_r($cluster,true));			}			$this->set("find",$find);			$this->set("debug","");			//$this->set("table",$table);			$this->set("table",$cluster);				$this->RequestHandler->respondAs("json");			$this->viewPath .= '/json';			$this->layoutPath = 'json';			$this->layout = 'json';		}	}	?>	