USE [ecoReleve_Data]
GO
/****** Object:  Table [dbo].[TViewIndividual]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TViewIndividual](
	[Individual_Obj_PK] [int] NOT NULL,
	[id2@Thes_Age] [int] NULL,
	[id2@Thes_Age_Precision] [nvarchar](150) NULL,
	[id3@TCaracThes_Transmitter_Shape] [int] NULL,
	[id3@TCaracThes_Transmitter_Shape_Precision] [nvarchar](150) NULL,
	[id4@TCaracThes_Transmitter_Model] [int] NULL,
	[id4@TCaracThes_Transmitter_Model_Precision] [nvarchar](150) NULL,
	[id5@TCarac_Transmitter_Frequency] [int] NULL,
	[id6@TCarac_Transmitter_Serial_Number] [nvarchar](100) NULL,
	[id7@TCaracThes_Release_Ring_Position] [int] NULL,
	[id7@TCaracThes_Release_Ring_Position_Precision] [nvarchar](150) NULL,
	[id8@TCaracThes_Release_Ring_Color] [int] NULL,
	[id8@TCaracThes_Release_Ring_Color_Precision] [nvarchar](150) NULL,
	[id9@TCarac_Release_Ring_Code] [nvarchar](100) NULL,
	[id10@TCaracThes_Breeding_Ring_Position] [int] NULL,
	[id10@TCaracThes_Breeding_Ring_Position_Precision] [nvarchar](150) NULL,
	[id11@TCaracThes_Breeding_Ring_Color] [int] NULL,
	[id11@TCaracThes_Breeding_Ring_Color_Precision] [nvarchar](150) NULL,
	[id12@TCarac_Breeding_Ring_Code] [nvarchar](100) NULL,
	[id13@TCarac_Chip_Code] [nvarchar](100) NULL,
	[id14@TCaracThes_Mark_Color_1] [int] NULL,
	[id14@TCaracThes_Mark_Color_1_Precision] [nvarchar](150) NULL,
	[id15@TCaracThes_Mark_Position_1] [int] NULL,
	[id15@TCaracThes_Mark_Position_1_Precision] [nvarchar](150) NULL,
	[id16@TCaracThes_Mark_Color_2] [int] NULL,
	[id16@TCaracThes_Mark_Color_2_Precision] [nvarchar](150) NULL,
	[id17@TCaracThes_Mark_Position_2] [int] NULL,
	[id17@TCaracThes_Mark_Position_2_Precision] [nvarchar](150) NULL,
	[id19@TCarac_PTT] [int] NULL,
	[id20@TCaracThes_PTT_manufacturer] [int] NULL,
	[id20@TCaracThes_PTT_manufacturer_Precision] [nvarchar](150) NULL,
	[id22@TCaracThes_PTT_model] [int] NULL,
	[id22@TCaracThes_PTT_model_Precision] [nvarchar](150) NULL,
	[id30@TCaracThes_Sex] [int] NULL,
	[id30@TCaracThes_Sex_Precision] [nvarchar](150) NULL,
	[id33@Thes_Origin] [int] NULL,
	[id33@Thes_Origin_Precision] [nvarchar](150) NULL,
	[id34@TCaracThes_Species] [int] NULL,
	[id34@TCaracThes_Species_Precision] [nvarchar](150) NULL,
	[id35@Birth_date] [datetime] NULL,
	[id36@Death_date] [datetime] NULL,
	[id37@Comments] [nvarchar](255) NULL,
	[id55@TCarac_Mark_code_1] [nvarchar](100) NULL,
	[id56@TCarac_Mark_code_2] [nvarchar](100) NULL,
	[id59@TCaracThes_Individual_Status] [nvarchar](250) NULL,
	[id60@TCaracThes_Monitoring_Status] [int] NULL,
	[id60@TCaracThes_Monitoring_Status_Precision] [nvarchar](150) NULL,
	[id61@TCaracThes_Survey_type] [int] NULL,
	[id61@TCaracThes_Survey_type_Precision] [nvarchar](150) NULL,
 CONSTRAINT [PK_TViewIndividual] PRIMARY KEY CLUSTERED 
(
	[Individual_Obj_PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TViewIndividual_ChipCode] ON [dbo].[TViewIndividual] 
(
	[id13@TCarac_Chip_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TViewIndividual_Specie] ON [dbo].[TViewIndividual] 
(
	[id34@TCaracThes_Species_Precision] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TObj_Carac_theme]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TObj_Carac_theme](
	[Carac_theme_Pk] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Fk_Object] [int] NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [aaaaaCarac_theme_Pk] PRIMARY KEY NONCLUSTERED 
(
	[Carac_theme_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TObj_Carac_type]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TObj_Carac_type](
	[Carac_type_Pk] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Fk_Theme] [int] NULL,
	[label] [nvarchar](250) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[Constant] [bit] NOT NULL,
 CONSTRAINT [aaaaaCarac_type_Pk] PRIMARY KEY NONCLUSTERED 
(
	[Carac_type_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TObj_Obj_CaracList]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TObj_Obj_CaracList](
	[Obj_CaracList_Pk] [int] IDENTITY(1,1) NOT NULL,
	[fk_Object_type] [int] NOT NULL,
	[fk_Carac_type] [int] NOT NULL,
	[value_type] [nvarchar](250) NOT NULL,
	[value_precision] [nvarchar](250) NULL,
	[Constant] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[position] [int] NULL,
	[importance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Obj_CaracList_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TObj_Obj_Type]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TObj_Obj_Type](
	[Obj_Type_Pk] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[relation] [nvarchar](250) NOT NULL,
	[fath_obj] [int] NULL,
	[fath_relation] [nvarchar](250) NULL,
	[cardinality] [nvarchar](250) NULL,
	[label_fr] [varchar](255) NULL,
	[label_en] [varchar](255) NULL,
 CONSTRAINT [aaaaaObj_Type_PK] PRIMARY KEY NONCLUSTERED 
(
	[Obj_Type_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateObjectView]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural solution
-- Create date: 02/12/2008
-- Description:    Fonction qui permet de créer une vue d'un objet défini dans la table Object_type
-- Entrée : @object_name = nom du type d'objet
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_CreateObjectView]  
    -- Add the parameters for the stored procedure here
(
    @object_name nvarchar(250),
    @Object_Pk int = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    SET DATEFORMAT 'DMY';
    
    DECLARE @object_id int
    SELECT @object_id= OBJ_Type_pk FROM dbo.TObj_Obj_type WHERE name LIKE @object_name
    
    --Selection de la liste des caractéristiques propres aux individus--
    DECLARE c CURSOR  for select distinct cType.carac_type_pk, cType.name, cList.value_type , cList.value_precision
							FROM dbo.TObj_Carac_type cType JOIN dbo.TObj_Obj_CaracList AS cList 
							ON cType.Carac_type_Pk = cList.fk_Carac_type 
							WHERE fk_Object_type = @object_id AND cList.available = 1
							order by cType.Carac_type_Pk

    -- @sql : début de la clasue select requête sql
    -- @create : début de la clasue create requête sql
    -- @select : fin de la clause select de la requête sql : champ des caractérististiques variables
    -- @condition : clause FROM, GROUP BY de la requête sql
    -- @id : identifiant de la caractéristique
    -- @name : nom de la caractéristique
    -- @value : type de valeur de la caractéristique
    -- @fieldCarac
    -- @Create pk script permettant la création de la clée primaire
    
    declare @sql nvarchar(50), @fieldObj nvarchar(Max),  @fieldCarac nvarchar(Max), @select nvarchar(Max),  @condition nvarchar(Max), @champ nvarchar(250), @id int, @name nvarchar(250), @value nvarchar(250), @viewName nvarchar(1000)
    declare @sql2 nvarchar(50), @insertfieldname nvarchar(Max);
    declare @type nvarchar(200),@value_precision nvarchar(200), @length int, @typecomplet nvarchar(200), @createPK nvarchar(200);
    Set @viewName = 'TView'+@object_name ;

    
    PRINT @object_name
    
    --Selection des données constantes des individus 
    set @sql= ' INSERT INTO TView'+@object_name --+'   SELECT DISTINCT '
    set @sql2 = ' SELECT DISTINCT ';
    set @insertfieldname = @object_name + '_Obj_PK';
    set @fieldObj ='  ';
    set @fieldCarac = ' '+ @object_name+'_Obj_PK int NOT NULL, ';
    set @select ='fk_object '+CHAR(13);
    set @condition = '';
    
    open c
        -- Parcours du curseur : Pour chaque caractéristiques variables d'individu
        fetch c into @id, @name, @value, @value_precision
        while @@FETCH_STATUS = 0
            begin
            -- SI caractéristique de type thésaural alors sélection du champ précision
            If @value LIKE 'Thesaurus' 
            BEGIN
                -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 v.value FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList ON fk_carac = fk_Carac_type WHERE fk_carac = ';
                set @select = @select + CAST(@id AS nvarchar(100));
                set @fieldCarac = @fieldCarac +' id'+ CAST(@id AS VARCHAR) +'@'+@name +' int ,'+ char(13);
                set @insertfieldname = @insertfieldname +', id'+ CAST(@id AS VARCHAR) +'@'+@name + char(13);
                set @select = @select + ' AND fk_object = obj.fk_object AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +' AND ((Constant = 0 AND end_date IS NULL) OR (Constant = 1)) ORDER BY begin_date DESC  )'+CHAR(13);
                -- Nom du thésaurus
                set @select = @select + ', (SELECT TOP 1  v.value_precision FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList ON fk_carac = fk_Carac_type WHERE fk_carac = ';
                set @select = @select + CAST(@id AS nvarchar(300));
                set @select = @select + ' AND fk_object =  obj.fk_object  AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +'  AND ((Constant = 0 AND end_date IS NULL) OR (Constant = 1)) ORDER BY begin_date DESC  )'+CHAR(13);
                set @fieldCarac = @fieldCarac+' id' + CAST(@id AS VARCHAR) +'@'+ @name +'_Precision   nvarchar(150), ';
                set @insertfieldname = @insertfieldname +', id'+ CAST(@id AS VARCHAR) +'@'+@name +'_Precision '+ char(13);
            END
            ELSE If @value = 'datetime'
            BEGIN
				 -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 convert('+@value+ ', v.value) FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList as c ON fk_carac = fk_Carac_type WHERE fk_carac = ';
                set @select = @select + CAST(@id AS nvarchar(100));
                set @select = @select + ' AND fk_object = obj.fk_object AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +' AND ((Constant = 0 AND end_date IS NULL) OR (Constant = 1)) ORDER BY begin_date DESC  )'+CHAR(13);
                set @fieldCarac = @fieldCarac +' id'+ CAST(@id AS VARCHAR) +'@'+@name +' '+@value+' ,';
                set @insertfieldname = @insertfieldname +', id'+ CAST(@id AS VARCHAR) +'@'+@name + char(13);
                
            END
            ELSE If @value = 'function'
            BEGIN
				 -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 value FROM '+@value_precision +' ( fk_object )  )'+CHAR(13);
                set @fieldCarac = @fieldCarac +' id'+ CAST(@id AS VARCHAR) +'@'+@name +' nvarchar(250) ,';
                set @insertfieldname = @insertfieldname +', id'+ CAST(@id AS VARCHAR) +'@'+@name + char(13);
            END    
            ELSE
            BEGIN
                -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 cast(v.value as ' +@value + ') FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList as c ON fk_carac = fk_Carac_type WHERE fk_carac = ';
                set @select = @select + CAST(@id AS nvarchar(100));
                set @select = @select + ' AND fk_object = obj.fk_object AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +' AND ((Constant = 0 AND end_date IS NULL) OR (Constant = 1)) ORDER BY begin_date DESC  )'+CHAR(13);
                set @fieldCarac = @fieldCarac +' id'+ CAST(@id AS VARCHAR) +'@'+@name +' '+@value+' ,';
                set @insertfieldname = @insertfieldname +', id'+ CAST(@id AS VARCHAR) +'@'+@name + char(13);
            END
            fetch c into @id, @name, @value, @value_precision
            end
    close c
    deallocate  c
    SET @condition = @condition + ' FROM dbo.TObj_Carac_value AS obj '--+CHAR(13);
    SET @condition = @condition + ' GROUP BY  fk_object';
    
    --Création de la vue
    SET @fieldCarac =  RTRIM( @fieldCarac ) ;
    SET @fieldCarac = left(@fieldCarac, len(@fieldCarac)-1);
    
    IF @Object_Pk IS NULL 
    BEGIN
        --PRINT '-------------------------------------------'
        PRINT '        CREATE VIEW'
        IF OBJECT_ID(@viewName, 'U') IS NOT NULL EXEC ('DROP TABLE '+@viewName);
        
        DECLARE @create nvarchar(Max)
        
        set @create= 'CREATE TABLE '+ @viewName+ ' ' + '( '+@fieldCarac +')';

        --PRINT @create;
        EXEC (@create);
        
        SET @createPK = ' ALTER TABLE '+ @viewName+ ' ADD CONSTRAINT PK_'+@viewName+' PRIMARY KEY ('+ @object_name+'_Obj_PK)'
        EXEC (@createPK);
        
        --PRINT '-------------------------------------------'
        SET @condition = @condition + ' HAVING obj.fk_object IN ( SELECT fk_object FROM dbo.TObj_Carac_value AS obj WHERE value_precision = '''+ @object_name+''')';
        
    END
    ELSE
    BEGIN
        --PRINT '-------------------------------------------'
        PRINT '        DELETE RECORD ' + CAST(@Object_Pk AS nvarchar(1000));
        DECLARE @delete nvarchar(Max)
        SET @delete = 'DELETE FROM '+@viewName+' WHERE '+@object_name+'_Obj_pk= '+ CAST(@Object_Pk AS nvarchar(1000));
        --PRINT @delete;
        EXEC (@delete);
        --PRINT '-------------------------------------------'
        ---
        SET @condition = @condition + ' HAVING obj.fk_object='+ CAST(@Object_Pk AS nvarchar(1000));
        
    END
    
    --PRINT '-------------------------------------------'
    --PRINT 'INSERTION for ' + CAST(@Object_Pk AS nvarchar(1000));
    --print @sql;
	--print '( '+ @insertfieldname + ')';
    --print @sql2;
    --print @select;
    --print @condition;
    
    --EXEC (@sql +'  '+@select+'  '+@condition);
    EXEC (@sql + '( '+ @insertfieldname + ')' + @sql2 + '  '+@select+'  '+@condition);
	
    PRINT 'Nouvelle table vue : '+@viewName+' créée ou remplacée'; 


END

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_ObjectValidPeriod]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 14/01/2010
-- Description:	Fonction qui test si la date de début est anterieur à la date de fin
-- IN : @beginTime : date de début de la période
--		@endTime : date de fin de la période
-- =============================================
CREATE FUNCTION    [dbo].[fnc_ObjectValidPeriod]
(
	@beginTime datetime,
	@endTime datetime
)
RETURNS bit
AS
BEGIN
	DECLARE @IsValid int
	
	SET @IsValid = 0

	IF (@endTime is not null)
	BEGIN	
		IF (@beginTime > COALESCE(@endTime, DATEADD(minute,1,CURRENT_TIMESTAMP)))
		BEGIN
			SET @IsValid = 1
		END
	END
	RETURN @IsValid

END
GO
/****** Object:  Table [dbo].[TObj_Objects]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TObj_Objects](
	[Object_Pk] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Id_object_type] [int] NOT NULL,
	[Name_object_type] [nvarchar](50) NOT NULL,
	[Creation_date] [datetime] NULL,
	[original_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Object_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_GetObjectTypeStr]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[fnc_GetObjectTypeStr]
(
	@fk_object int
)
RETURNS nvarchar(20)
AS
BEGIN
	DECLARE @Object_type nvarchar(20)
	select @Object_type = value_precision from tobj_carac_value where fk_carac = 54 and fk_object = @fk_object
	RETURN @Object_type
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_ObjectOverlapPeriodCount]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 14/01/2010
-- Description:	Fonction qui renvoie le nombre d'enregistrements d'une caractéristique
-- pour lesquelle les dates de début et de fin se chevauchent avec un enregistrement en cours d'INSERT ou UPDATE
-- IN : @beginTime : date de début de la période
--		@endTime : date de fin de la période
--		@objectFK : Identifiant de l'object considéré
--		@caracFK : Identifiant de la caractéristique considérée
--		@objValuePK : Identifiant du champ concerné par un INSERT ou un UPDATE donc à ne pas tester
-- =============================================
CREATE FUNCTION   [dbo].[fnc_ObjectOverlapPeriodCount]
(
	-- Add the parameters for the function here
	@beginTime datetime,
	@endTime datetime,
	@objectFK int, 
	@caracFK int,
	@objValuePK int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @OverlapNb int

	SELECT @OverlapNb = count(*)
	FROM TObj_Carac_value
	WHERE 
	TObj_Carac_value.fk_carac = @caracFK AND TObj_Carac_value.fk_object = @objectFK
	AND ( 
		-- 1 / c.b> i.b < v.e : Date de début non incluse dans une période
		( DATEADD(hour,1,@beginTime) BETWEEN TObj_Carac_value.begin_date AND CASE 
																				WHEN NOT TObj_Carac_value.end_date IS NULL THEN TObj_Carac_value.end_date
																				WHEN @beginTime > TObj_Carac_value.begin_date THEN @beginTime
																				ELSE CURRENT_TIMESTAMP
																			END
		)
		OR
		-- 2 / c.b> i.e < v.e : Date de fin non incluse dans une période
		(COALESCE(@endTime, DATEADD(hour,1,CURRENT_TIMESTAMP))  BETWEEN DATEADD(hour,2,TObj_Carac_value.begin_date) AND COALESCE(TObj_Carac_value.end_date, CURRENT_TIMESTAMP) )
		OR
		-- 3 / c.b> i.b && v.e < i.e : Pas de période existante incluse dans celle en cours d'insertion
		(TObj_Carac_value.begin_date > DATEADD(hour,1,@beginTime) AND COALESCE(TObj_Carac_value.end_date, DATEADD(hour,1,CURRENT_TIMESTAMP)) < COALESCE(@endTime, CURRENT_TIMESTAMP))
	)
	AND NOT TObj_Carac_value.Carac_value_PK = @objValuePK

	-- Return the result of the function
	RETURN @OverlapNb

END
GO
/****** Object:  Table [dbo].[TObj_Carac_value]    Script Date: 07/02/2014 14:07:30 ******/
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[TObj_Carac_value](
	[Carac_value_Pk] [int] IDENTITY(1,1) NOT NULL,
	[Fk_carac] [int] NULL,
	[fk_object] [int] NOT NULL,
	[value] [nvarchar](250) NOT NULL,
	[value_precision] [nvarchar](1000) NULL,
	[begin_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[creation_date] [datetime] NOT NULL,
	[comments] [nvarchar](255) NULL,
	[object_type] [nvarchar](20) NULL,
	[uniquePTT]  AS (case when [fk_carac]=(19) AND NOT [value] IS NULL AND [end_date] IS NULL AND [object_type]='Trx_Sat' then ([object_type]+'-')+[value] else 'pk'+CONVERT([nvarchar](250),[Carac_value_Pk],(0)) end),
	[uniqueReleaseCode]  AS (case when [fk_carac]=(9) AND NOT [value] IS NULL then [value] else 'pk_'+CONVERT([nvarchar](250),[Carac_value_Pk],(0)) end),
	[uniqueRadioSN]  AS (case when [fk_carac]=(6) AND NOT [value] IS NULL AND [end_date] IS NULL AND [object_type]='Trx_Radio' then ([object_type]+'-')+[value] else 'pk_'+CONVERT([nvarchar](250),[Carac_value_Pk],(0)) end),
	[uniqueChipCode]  AS (case when [fk_carac]=(13) AND NOT [value] IS NULL AND [end_date] IS NULL then [value] else 'pk_'+CONVERT([nvarchar](250),[Carac_value_Pk],(0)) end),
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TObj_Carac_value] PRIMARY KEY CLUSTERED 
(
	[Carac_value_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uniquePTT] UNIQUE NONCLUSTERED 
(
	[uniquePTT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_fkcarac] ON [dbo].[TObj_Carac_value] 
(
	[Fk_carac] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_fkobject] ON [dbo].[TObj_Carac_value] 
(
	[fk_object] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TObjVal_fkobj_valuepre_bdate_edate] ON [dbo].[TObj_Carac_value] 
(
	[Fk_carac] ASC
)
INCLUDE ( [fk_object],
[value_precision],
[begin_date],
[end_date]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_uniqueCaracAtDate] ON [dbo].[TObj_Carac_value] 
(
	[Fk_carac] ASC,
	[fk_object] ASC,
	[value] ASC,
	[begin_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE UNIQUE NONCLUSTERED INDEX [ind_uniqueChipCode] ON [dbo].[TObj_Carac_value] 
(
	[uniqueChipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE UNIQUE NONCLUSTERED INDEX [ind_uniqueRadioSN] ON [dbo].[TObj_Carac_value] 
(
	[uniqueRadioSN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE UNIQUE NONCLUSTERED INDEX [ind_uniqueReleaseCode] ON [dbo].[TObj_Carac_value] 
(
	[uniqueReleaseCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_fkCarac_fkObject] ON [dbo].[TObj_Carac_value] 
(
	[Fk_carac] ASC,
	[fk_object] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_MonitoringStatus@X]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_v_qry_MonitoringStatus@X](@Fk_Tind AS int, @StartDate AS Datetime, @XDays as int)
  RETURNS TABLE
  with schemabinding
AS
RETURN   
    select TOP 1 value_precision as [MonitoringStatus@XDays]
	from [dbo].TObj_Carac_value 
	where Fk_carac = 60
	and fk_object = @Fk_Tind
    and (@StartDate is not null and 
     CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <= 
		CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) 
	 and (end_date is null or
				CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) < 
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))	
	order by begin_date desc
GO
/****** Object:  Table [dbo].[TMonitoredStations]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMonitoredStations](
	[TGeo_pk_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Creation_date] [datetime] NULL,
	[Creator] [int] NULL,
	[Active] [bit] NOT NULL,
	[id_Type] [int] NULL,
	[name_Type] [nvarchar](200) NULL,
 CONSTRAINT [aaaaaTMonitoredStations_PK] PRIMARY KEY NONCLUSTERED 
(
	[TGeo_pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [pk_id] ON [dbo].[TMonitoredStations] 
(
	[TGeo_pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TLogTriggers]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TLogTriggers](
	[tableName] [nvarchar](100) NULL,
	[triggerName] [nvarchar](200) NULL,
	[date] [datetime] NULL,
	[result] [nvarchar](max) NULL,
	[duplistaname] [nvarchar](100) NULL,
	[PK] [int] NOT NULL,
 CONSTRAINT [PK_TLogTriggers] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TStations]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TStations](
	[TSta_PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FieldWorker1] [int] NULL,
	[FieldWorker2] [int] NULL,
	[NbFieldWorker] [int] NULL,
	[FieldActivity_ID] [int] NULL,
	[FieldActivity_Name] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Area] [nvarchar](255) NULL,
	[Locality] [nvarchar](50) NULL,
	[DATE] [datetime] NULL,
	[LAT] [decimal](9, 5) NULL,
	[LON] [decimal](9, 5) NULL,
	[Precision] [int] NULL,
	[ELE] [int] NULL,
	[Creator] [int] NULL,
	[Creation_date] [datetime] NULL,
	[TSta_FK_TGeo_ID] [int] NULL,
	[Comments] [nvarchar](250) NULL,
	[regionUpdate] [bit] NOT NULL,
 CONSTRAINT [PK__TStations__05CEBF1D] PRIMARY KEY CLUSTERED 
(
	[TSta_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tsta_CreationDate] ON [dbo].[TStations] 
(
	[Creation_date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tsta_Date] ON [dbo].[TStations] 
(
	[DATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TSta_FieldActivityID] ON [dbo].[TStations] 
(
	[FieldActivity_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tsta_Name] ON [dbo].[TStations] 
(
	[Name] ASC
)
INCLUDE ( [TSta_PK_ID],
[DATE],
[LAT],
[LON],
[Creation_date]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tsta_Precision] ON [dbo].[TStations] 
(
	[Precision] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TSta_Region] ON [dbo].[TStations] 
(
	[Area] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Sta_FieldactivityId_include_TstaPKID_Name_Date] ON [dbo].[TStations] 
(
	[FieldActivity_ID] ASC
)
INCLUDE ( [TSta_PK_ID],
[Name],
[DATE]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TSta_FK_TGeo_ID] ON [dbo].[TStations] 
(
	[TSta_FK_TGeo_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TSta_PK_ID] ON [dbo].[TStations] 
(
	[TSta_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Summary]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Summary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Ind] [int] NULL,
	[Fk_Station] [int] NULL,
	[StationType] [int] NULL,
	[LAT] [decimal](9, 5) NULL,
	[LON] [decimal](9, 5) NULL,
	[DATE] [datetime] NULL,
	[Fk_Protocole] [int] NULL,
	[Taxon] [nvarchar](250) NULL,
 CONSTRAINT [PK_TProtocol_Summary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProto_Summ_Fk_ind] ON [dbo].[TProtocol_Summary] 
(
	[Fk_Ind] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProto_Summ_Fk_ind_LAT_LON] ON [dbo].[TProtocol_Summary] 
(
	[Fk_Ind] ASC,
	[LAT] ASC,
	[LON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProto_Summ_LAT_LON] ON [dbo].[TProtocol_Summary] 
(
	[LAT] ASC,
	[LON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Capture_Group]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Capture_Group](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Capture_Method] [int] NULL,
	[Name_Capture_Method] [nvarchar](250) NULL,
	[Nb_Operator] [int] NULL,
	[Time_Begin] [datetime] NULL,
	[Failure_reason] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
	[Id_Taxon] [int] NULL,
	[Name_Taxon] [nvarchar](255) NULL,
	[Time_End] [datetime] NULL,
	[Nb_Individuals] [int] NULL,
 CONSTRAINT [TProtocol_Capture_Group_Pk] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoCaptureGroup_FKSta] ON [dbo].[TProtocol_Capture_Group] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_TProtoCaptureGroup_FKSta_IDSpecy] ON [dbo].[TProtocol_Capture_Group] 
(
	[FK_TSta_ID] ASC,
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoCaptureGroup_IDTaxon] ON [dbo].[TProtocol_Capture_Group] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Capture_Individual]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Capture_Individual](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_TInd_ID] [int] NULL,
	[FK_Group] [int] NULL,
	[Id_Assistant] [int] NULL,
	[Id_Observer] [int] NULL,
	[Release_Ind_Condition] [nvarchar](255) NULL,
	[Identification_criteria] [nvarchar](500) NULL,
	[Identification_type] [nchar](10) NULL,
	[Comments] [nvarchar](255) NULL,
	[Time_Capture] [datetime] NULL,
	[Time_Release] [datetime] NULL,
 CONSTRAINT [TProtocol_Individual_Capture_Pk] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [Unique_Individual_Capture_Station1] UNIQUE NONCLUSTERED 
(
	[FK_Group] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [Unique_Individual_Capture_Station2] UNIQUE NONCLUSTERED 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoCaptureIndiv_FKGroup] ON [dbo].[TProtocol_Capture_Individual] 
(
	[FK_Group] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoCaptureIndiv_FKInd] ON [dbo].[TProtocol_Capture_Individual] 
(
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoCaptureIndiv_FKSta] ON [dbo].[TProtocol_Capture_Individual] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Release_Group]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Release_Group](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Taxon] [int] NULL,
	[Name_Taxon] [nvarchar](255) NULL,
	[Id_Release_Method] [int] NULL,
	[Name_Release_Method] [nvarchar](250) NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [Pk_TProtoReleaseGroup] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoReleaseGroup_FKSta] ON [dbo].[TProtocol_Release_Group] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_TProtoReleaseGroup_FKSta_IDSpecy] ON [dbo].[TProtocol_Release_Group] 
(
	[FK_TSta_ID] ASC,
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Release_Individual]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Release_Individual](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_TInd_ID] [int] NULL,
	[FK_Group] [int] NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [Pk_TProtoReleaseIndiv] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_Individual_Release_Station] UNIQUE NONCLUSTERED 
(
	[FK_TInd_ID] ASC,
	[FK_Group] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoReleaseIndiv_FKGroup] ON [dbo].[TProtocol_Release_Individual] 
(
	[FK_Group] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoReleaseIndiv_FKInd] ON [dbo].[TProtocol_Release_Individual] 
(
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoReleaseIndividual_FKSta] ON [dbo].[TProtocol_Release_Individual] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_ArgosDataArgos]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_ArgosDataArgos](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_TInd_ID] [int] NOT NULL,
	[TADA_LC] [nvarchar](2) NULL,
	[TADA_IQ] [int] NULL,
	[TADA_NbMsg] [int] NULL,
	[TADA_NbMsg>-120Db] [int] NULL,
	[TADA_BestLevel] [int] NULL,
	[TADA_PassDuration] [int] NULL,
	[TADA_NOPC] [int] NULL,
	[TADA_Frequency] [decimal](10, 1) NULL,
	[TADA_Comments] [nvarchar](250) NULL,
 CONSTRAINT [PK_TProtocol_ArgosDataArgos] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_Argos_Unique_FKIND_FKSTA] ON [dbo].[TProtocol_ArgosDataArgos] 
(
	[FK_TInd_ID] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_Argos_Unique_FKSTA_FKIND] ON [dbo].[TProtocol_ArgosDataArgos] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TArgosArgos_FKInd_FKSta] ON [dbo].[TProtocol_ArgosDataArgos] 
(
	[FK_TInd_ID] ASC
)
INCLUDE ( [FK_TSta_ID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoArgos_FKSta_FKInd] ON [dbo].[TProtocol_ArgosDataArgos] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoArgosDataArgos__FK_ind] ON [dbo].[TProtocol_ArgosDataArgos] 
(
	[FK_TInd_ID] ASC
)
INCLUDE ( [FK_TSta_ID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_ArgosDataGPS]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_ArgosDataGPS](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_TInd_ID] [int] NOT NULL,
	[TADG_Course] [int] NULL,
	[TADG_Speed] [int] NULL,
	[TADG_Comments] [nvarchar](250) NULL,
 CONSTRAINT [PK_TProtocol_ArgosDataGPS] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_TArgosGPS_Unique_FKInd_FKSta] ON [dbo].[TProtocol_ArgosDataGPS] 
(
	[FK_TInd_ID] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Ind_TArgosGPS_Unique_FKSta_FKInd] ON [dbo].[TProtocol_ArgosDataGPS] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TPrGPS_FKInd_FKSta] ON [dbo].[TProtocol_ArgosDataGPS] 
(
	[FK_TInd_ID] ASC
)
INCLUDE ( [FK_TSta_ID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoArgosDataGPS__FK_ind] ON [dbo].[TProtocol_ArgosDataGPS] 
(
	[FK_TInd_ID] ASC
)
INCLUDE ( [FK_TSta_ID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoGPS_FKSta_FKInd] ON [dbo].[TProtocol_ArgosDataGPS] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Nest_Description]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Nest_Description](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Nb_Egg] [smallint] NULL,
	[Picture] [bit] NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[FK_TIND_ID] [int] NULL,
	[Identification_type] [nchar](10) NULL,
	[Identification_criteria] [nvarchar](500) NULL,
	[ID_Clutch_Size] [int] NULL,
	[Name_Clutch_Size] [nvarchar](250) NULL,
	[Id_Taxon] [int] NOT NULL,
	[Name_Taxon] [nvarchar](255) NULL,
	[Id_Clutch_Description] [int] NULL,
	[Name_Clutch_Description] [nvarchar](250) NULL,
	[Dummy_egg] [bit] NOT NULL,
 CONSTRAINT [aaaaaTProtocol_Nest_Description_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_Nest_FKIND] ON [dbo].[TProtocol_Nest_Description] 
(
	[FK_TIND_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoNest_FKSta] ON [dbo].[TProtocol_Nest_Description] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoNest_IDTaxon] ON [dbo].[TProtocol_Nest_Description] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Vertebrate_Individual_Death]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Vertebrate_Individual_Death](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_TInd_ID] [int] NULL,
	[Id_Remains] [int] NULL,
	[Name_Remains] [nvarchar](250) NULL,
	[Id_Death_Time] [int] NULL,
	[Name_Death_Time] [nvarchar](250) NULL,
	[Id_Death_Reason] [int] NULL,
	[Name_Death_Reason] [nvarchar](250) NULL,
	[Identification_criteria] [nvarchar](500) NULL,
	[Sure_reason] [bit] NOT NULL,
	[Identification_type] [nchar](10) NULL,
	[Comments] [nvarchar](500) NULL,
	[Name_Taxon] [nvarchar](255) NULL,
	[Id_Taxon] [int] NULL,
	[Sampled] [bit] NOT NULL,
 CONSTRAINT [TProtocol_Bustard_Death_Pk] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoDeath_FKInd] ON [dbo].[TProtocol_Vertebrate_Individual_Death] 
(
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoDeath_FKSta] ON [dbo].[TProtocol_Vertebrate_Individual_Death] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoDeath_IDTaxon] ON [dbo].[TProtocol_Vertebrate_Individual_Death] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Ind_TProtoVDeath_FKSta_FKInd] ON [dbo].[TProtocol_Vertebrate_Individual_Death] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_CHECK_TPrVertebrateIndividual_unique_IndID_StaID]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Natural Solutions
-- Create date: 2012-10-16
-- Description: Fonction qui permet d'assurer une contrainte d'unicité (Station, Individus identifié) sur la table vertebrate individual
-- =============================================
CREATE FUNCTION [dbo].[fnc_CHECK_TPrVertebrateIndividual_unique_IndID_StaID](@IndID int, @StaID int, @PK int)
RETURNS bit
AS
BEGIN
	IF (@IndID IS NULL) RETURN 0
	
	IF (SELECT COUNT(*) FROM TProtocol_Vertebrate_Individual WHERE Fk_TInd_ID = @IndID AND FK_TSta_ID = @StaID AND NOT PK=@PK) >0
	BEGIN	
		RETURN 1
	END
	RETURN 0
END
GO
/****** Object:  Table [dbo].[TProtocol_Vertebrate_Individual]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TProtocol_Vertebrate_Individual](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Fk_TInd_ID] [int] NULL,
	[Fk_Group] [int] NULL,
	[frequency] [int] NULL,
	[id_sex] [int] NULL,
	[name_sex] [nvarchar](50) NULL,
	[id_age] [int] NULL,
	[name_age] [nvarchar](50) NULL,
	[Id_signal_type] [int] NULL,
	[Name_signal_type] [nvarchar](250) NULL,
	[Id_Posture] [int] NULL,
	[Name_Posture] [nvarchar](250) NULL,
	[Id_Behaviour] [int] NULL,
	[Name_Behaviour] [nvarchar](250) NULL,
	[Identification_type] [char](10) NULL,
	[Identification_criteria] [nvarchar](500) NULL,
	[Comments] [nvarchar](540) NULL,
	[Sampled] [bit] NULL,
	[Disturbed] [bit] NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TProtocol_Individuals] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ind_idage] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[id_age] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_idbehaviour] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[Id_Behaviour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_idsex] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[id_sex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_nameage] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[name_age] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_namebehaviour] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[Name_Behaviour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_namesex] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[name_sex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoIndividuals_FKGroup] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[Fk_Group] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoIndividuals_FKInd] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[Fk_TInd_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoIndividuals_FKSta] ON [dbo].[TProtocol_Vertebrate_Individual] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_Equip@Station]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_AllIndivs_Equip@Station] 
AS 
select 
 T.PK AS pr_PK,
 T.Ind_ID,
 T.Taxon_ID,
 T.Taxon,
 T.Origin_ID,
 T.Origin,
 IndivVHF.[VHF@Station],
 IndivVHFModel.value_precision as [VHFModel@Station],
 IndivPTT.[PTT@Station],
 IndivPTTModel.value_precision as [PTTModel@Station],
 IndivSurveyType.value_precision as [SurveyType@Station],
 IndivMonitoringStatus.value_precision as [MonitoringStatus@Station],
 T.StaType,
 T.StaType_ID,
 T.Sta_ID,
 T.StaName,
 T.StaDate,
 T.SurveyType_Id [SurveyTypeID@Current],
 T.SurveyType [SurveyType@Current],
 T.MonitoringStatus_ID [MonitoringStatusID@Current],
 T.MonitoringStatus [MonitoringStatus@Current],
 T.IndividualStatus  [IndividualStatus@Current],
 freqOpti AS [freqOpti@Station]
 from
 (
select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
 'Death' as StaType,
 2 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from [dbo].TViewIndividual v 
inner join [dbo].TProtocol_Vertebrate_Individual_Death pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID 

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
'Nest' as StaType,
 10 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from 
[dbo].TViewIndividual v 
inner join [dbo].TProtocol_Nest_Description  pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
'Release' as StaType,
 20 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from 
[dbo].TViewIndividual v 
inner join [dbo].TProtocol_Release_Individual  pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
'Capture' as StaType,
 30 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from [dbo].TViewIndividual v 
inner join [dbo].TProtocol_Capture_Individual  pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID  

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
'GPS' as StaType,
 40 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from [dbo].TViewIndividual v 
inner join [dbo].TProtocol_ArgosDataGPS  pv
on v.Individual_Obj_PK  = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID AND FieldActivity_ID = 27

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 NULL AS freqOpti,
 'Argos' as StaType,
 50 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from [dbo].TViewIndividual v 
inner join [dbo].TProtocol_ArgosDataArgos  pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join [dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID AND FieldActivity_ID = 27

union

select v.Individual_Obj_PK as Ind_ID,
 v.id34@TCaracThes_Species as Taxon_ID,
 v.id34@TCaracThes_Species_Precision as Taxon,
 v.id33@Thes_Origin as Origin_ID,
 v.id33@Thes_Origin_Precision as Origin,
 v.id60@TCaracThes_Monitoring_Status as MonitoringStatus_ID,
 v.id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 v.id61@TCaracThes_Survey_type as SurveyType_ID,
 v.id61@TCaracThes_Survey_type_Precision as SurveyType,
 v.id59@TCaracThes_Individual_Status AS IndividualStatus,
 pv.frequency AS freqOpti,
 'VIndividual' as StaType,
 100 as StaType_ID,
 s.TSta_PK_ID as Sta_ID, s.Name as StaName, s.DATE as StaDate, PK
from 
[dbo].TViewIndividual v 
inner join
[dbo].TProtocol_Vertebrate_Individual pv
on v.Individual_Obj_PK = pv.Fk_TInd_ID 
inner join 
[dbo].TStations s
on pv.FK_TSta_ID = s.TSta_PK_ID 


) T
left outer join
-- PTT
(select fk_object, value as PTT@Station, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 19) IndivPTT
on T.Ind_ID = IndivPTT.fk_object
	AND T.StaDate >= IndivPTT.begin_date
	AND (IndivPTT.end_date IS NULL OR T.StaDate <= IndivPTT.end_date)
	
left outer join
-- PTT model
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 22) IndivPTTModel
on T.Ind_ID = IndivPTTModel.fk_object 
	AND T.StaDate >= IndivPTTModel.begin_date 
	AND (IndivPTTModel.end_date IS NULL OR T.StaDate <= IndivPTTModel.end_date)
	
left outer join
-- VHF
(select fk_object, value as VHF@Station, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 5) IndivVHF
on T.Ind_ID = IndivVHF.fk_object AND T.StaDate >= IndivVHF.begin_date AND (IndivVHF.end_date IS NULL OR T.StaDate <= IndivVHF.end_date)

left outer join
-- VHF model
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 4) IndivVHFModel
on T.Ind_ID = IndivVHFModel.fk_object AND T.StaDate >= IndivVHFModel.begin_date AND (IndivVHFModel.end_date IS NULL OR T.StaDate <= IndivVHFModel.end_date)

left outer join
-- Monitoring status
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 60) IndivMonitoringStatus
on T.Ind_ID = IndivMonitoringStatus.fk_object
	AND T.StaDate >= 
		IndivMonitoringStatus.begin_date
	AND (IndivMonitoringStatus.end_date IS NULL
		OR T.StaDate  <
			IndivMonitoringStatus.end_date)
			
left outer join
-- Survey type
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 61) IndivSurveyType
on T.Ind_ID = IndivSurveyType.fk_object
	AND T.StaDate  >= 
		IndivSurveyType.begin_date
	AND (IndivSurveyType.end_date IS NULL
		OR T.StaDate  <
			IndivSurveyType.end_date)
GO
/****** Object:  Table [dbo].[TStations_additional_values]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TStations_additional_values](
	[aditional_value_Pk] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NULL,
	[FK_value_type] [nvarchar](250) NOT NULL,
	[value] [nvarchar](250) NOT NULL,
	[value_precision] [nvarchar](1000) NULL,
	[comments] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[aditional_value_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_Stations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Modification de la vue V_Qry_AllIndivs_Stations
CREATE VIEW [dbo].[V_Qry_AllIndivs_Stations]
as
select 
Pr_PK,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FieldWorker1 as FW1,
T.FieldWorker2 as FW2,
SFW3.value as FW3,
SFW4.value as FW4,
SFW5.value as FW5,
T.FieldActivity_ID as FA_ID,
T.FieldActivity_Name as FA,
T.Creator,
T.Creation_date as CreationDate,
[Ind_ID],
[Taxon],
[Origin_ID],
[Origin],
[VHF@Station],
[VHFModel@Station],
[PTT@Station],
[PTTModel@Station],
[MonitoringStatus@Station],
[SurveyType@Station],
[StaType],
[StaType_ID],
[Sta_ID],
[StaName],
[StaDate],
[MonitoringStatus@Current],
[SurveyType@Current],
IndividualStatus@Current,
[freqOpti@Station]
from dbo.V_Qry_AllIndivs_Equip@Station as s
inner join dbo.TStations T
on T.TSta_PK_ID = s.Sta_ID
left outer join TStations_additional_values as SFW3
on T.TSta_PK_ID= SFW3.FK_TSta_ID and SFW3.FK_value_type='FieldWorker3'
left outer join TStations_additional_values as SFW4
on T.TSta_PK_ID= SFW4.FK_TSta_ID and SFW4.FK_value_type='FieldWorker4'
left outer join TStations_additional_values as SFW5
on T.TSta_PK_ID= SFW5.FK_TSta_ID and SFW5.FK_value_type='FieldWorker5'
GO
/****** Object:  View [dbo].[V_Qry_StationsForMap]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_StationsForMap]
AS
SELECT     dbo.TStations.TSta_PK_ID, usrField1.TUse_Nom + ' ' + usrField1.TUse_Prenom AS FieldWorker1, 
  usrField2.TUse_Nom + ' ' + usrField2.TUse_Prenom AS FieldWorker2,
  usrField3.TUse_Nom + ' ' + usrField3.TUse_Prenom AS FieldWorker3,
  usrField4.TUse_Nom + ' ' + usrField4.TUse_Prenom AS FieldWorker4,
  usrField5.TUse_Nom + ' ' + usrField5.TUse_Prenom AS FieldWorker5, 
  dbo.TStations.NbFieldWorker, dbo.TStations.FieldActivity_Name, 
  dbo.TStations.Name, CASE WHEN dbo.TStations.Area = '' THEN NULL ELSE dbo.TStations.Area END AS Area, dbo.TStations.Locality, 
  dbo.TStations.DATE, dbo.TStations.LAT, dbo.TStations.LON, dbo.TStations.Precision, dbo.TStations.ELE, 
  usrEntry.TUse_Nom + ' ' + usrEntry.TUse_Prenom AS Creator, dbo.TStations.Creation_date, 
  dbo.TStations.TSta_FK_TGeo_ID, dbo.TMonitoredStations.name AS Site_name, dbo.TMonitoredStations.id_Type AS Site_idType, dbo.TMonitoredStations.name_Type AS Site_type, 
  dbo.TStations.FieldActivity_ID
FROM         dbo.TStations LEFT OUTER JOIN
  dbo.TMonitoredStations ON dbo.TStations.TSta_FK_TGeo_ID = dbo.TMonitoredStations.TGeo_pk_id LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrField1 ON usrField1.TUse_Pk_ID = dbo.TStations.FieldWorker1 LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrField2 ON usrField2.TUse_Pk_ID = dbo.TStations.FieldWorker2 LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrEntry ON usrEntry.TUse_Pk_ID = dbo.TStations.Creator LEFT OUTER JOIN
  dbo.TStations_additional_values as FW3 ON (FW3.FK_TSta_ID=TSta_PK_ID and FW3.FK_value_type='FieldWorker3') LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrField3 ON usrField3.TUse_Pk_ID = FW3.value LEFT OUTER JOIN
  dbo.TStations_additional_values as FW4 ON (FW4.FK_TSta_ID=TSta_PK_ID and FW4.FK_value_type='FieldWorker4') LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrField4 ON usrField4.TUse_Pk_ID = FW4.value LEFT OUTER JOIN
  dbo.TStations_additional_values as FW5 ON (FW5.FK_TSta_ID=TSta_PK_ID and FW5.FK_value_type='FieldWorker5') LEFT OUTER JOIN
  [ECWP_TRACK_Securite].dbo.TUsers AS usrField5 ON usrField5.TUse_Pk_ID = FW5.value
GO
/****** Object:  Table [dbo].[TProtocol_Bird_Biometry]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TProtocol_Bird_Biometry](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TInd_ID] [int] NULL,
	[FK_TSta_ID] [int] NULL,
	[Id_Assistant] [int] NULL,
	[Id_Observer] [int] NULL,
	[Id_Sex] [int] NULL,
	[Name_Sex] [nvarchar](100) NULL,
	[Id_Age] [int] NULL,
	[Name_Age] [nvarchar](100) NULL,
	[Weight] [float] NULL,
	[Half_Culmen] [float] NULL,
	[Skull] [float] NULL,
	[Wings] [float] NULL,
	[Tarso_Metatarsus] [float] NULL,
	[Feather_Occipital] [float] NULL,
	[Feather_Black_Display] [float] NULL,
	[Feather_White_Display] [float] NULL,
	[Identification_criteria] [nvarchar](500) NULL,
	[Identification_type] [nchar](10) NULL,
	[Comments] [varchar](1000) NULL,
	[Adiposity_note] [int] NULL,
	[Muscle_note] [int] NULL,
	[Feather_thirdPrimaryFlight_length] [int] NULL,
	[Sampled] [bit] NOT NULL,
	[Tail] [float] NULL,
	[Sternum] [float] NULL,
	[Feather_Black_White] [float] NULL,
	[Bill_length_feather] [float] NULL,
	[Bill_length_nostril] [float] NULL,
	[Bill_width] [float] NULL,
	[Toe_middle_length] [float] NULL,
	[Bird_collected] [bit] NOT NULL,
	[Toe_middle_width] [float] NULL,
	[Toe_middle_width_max] [float] NULL,
	[Toe_middle_width_min] [float] NULL,
 CONSTRAINT [TProtocol_Bustard_Biometry_Pk] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [Unique_Biometry_Individual_Station] ON [dbo].[TProtocol_Bird_Biometry] 
(
	[FK_TSta_ID] ASC,
	[FK_TInd_ID] ASC
)
WHERE ([FK_TInd_ID] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetEquipAtDate]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_v_qry_GetEquipAtDate](@Ind_ID AS int, @StaDate as datetime)
  RETURNS TABLE
  with schemabinding
AS
RETURN
          
select top 1 
 T1.fk_object,
 IndivVHF.VHF as [VHF@Station],
 IndivVHFModel.VHFModel as [VHFModel@Station],
 IndivPTT.PTT as [PTT@Station],
 IndivPTTModel.PTTModel as [PTTModel@Station]
 
from
(select top 1 fk_object from [dbo].TObj_Carac_value 
	where fk_object = @Ind_ID
	and @StaDate is not null
) as T1
left outer join
(select fk_object, value as PTT, begin_date, end_date
		from [dbo].TObj_Carac_value 
		where Fk_carac = 19 
		and fk_object = @Ind_ID
		and (CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <=
			CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) 
		and (end_date is null or
				CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) <=
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))
) as IndivPTT
on T1.fk_object = IndivPTT.fk_object 

left outer join
(select fk_object, value_precision as PTTModel, begin_date, end_date
		from [dbo].TObj_Carac_value 
		where Fk_carac = 22 
		and fk_object = @Ind_ID
		and (CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <=
			CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) 
		and (end_date is null or
				CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) <=
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))
) as IndivPTTModel	
on T1.fk_object  = IndivPTTModel.fk_object 

				
left outer join
(select fk_object, value as VHF, begin_date, end_date
		from [dbo].TObj_Carac_value 
		where Fk_carac = 5 
		and fk_object = @Ind_ID
		and (CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <=
			CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) 
		and (end_date is null or
				CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) <=
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))
) as IndivVHF	
on T1.fk_object = IndivVHF.fk_object
left outer join
(select fk_object, value_precision as VHFModel, begin_date, end_date
		from [dbo].TObj_Carac_value 
		where Fk_carac = 4
		and fk_object = @Ind_ID
		and (CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <=
			CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) 
		and (end_date is null or
				CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) <=
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))
) as IndivVHFModel	
on T1.fk_object = IndivVHFModel.fk_object
ORDER BY IndivVHF.begin_date DESC, IndivPTTModel.begin_date DESC
GO
/****** Object:  View [dbo].[V_Qry_Released_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_FirstStation
CREATE VIEW [dbo].[V_Qry_Released_FirstStation]
AS
/*only 843 null*/ SELECT /*distinct*/ VInd.Individual_Obj_PK AS Ind_ID, VInd.id33@Thes_Origin_Precision AS Origin, 
          Vind.id34@TCaracThes_Species_Precision AS Taxon, 
          vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,VInd.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
          VInd.id5@TCarac_Transmitter_Frequency AS CurrentVHF, Vind.id4@TCaracThes_Transmitter_Model_Precision AS CurrentVHFModel, 
          Vind.id19@TCarac_PTT AS CurrentPTT, Vind.id22@TCaracThes_PTT_model_Precision AS CurrentPTTModel, IndivEquip.VHF@Station, 
          IndivEquip.VHFModel@Station, IndivEquip.PTT@Station, IndivEquip.PTTModel@Station, VInd.id30@TCaracThes_Sex_Precision AS Sex, 
          VInd.id12@TCarac_Breeding_Ring_Code AS BreedindRing, VInd.id9@TCarac_Release_Ring_Code AS ReleaseRing, 
          VInd.id13@TCarac_Chip_Code AS ChipCode, VInd.id14@TCaracThes_Mark_Color_1_Precision AS Mark1Color, 
          VInd.id15@TCaracThes_Mark_Position_1_Precision AS Mark1Position, VInd.id55@TCarac_Mark_code_1 AS Mark1Code, 
          VInd.id16@TCaracThes_Mark_Color_2_Precision AS Mark2Color, VInd.id17@TCaracThes_Mark_Position_2_Precision AS Mark2Position, 
          VInd.id56@TCarac_Mark_code_2 AS Mark2Code, VInd.id35@Birth_date AS BirthDate, VInd.id36@Death_date AS DeathDate, 
          firstBioSta.[Weight] AS WeightGrs, firstBioSta.Skull, firstBioSta.Tarso_Metatarsus, firstRelSta.Id_Release_Method AS RelMethod_ID, 
          firstRelSta.Name_Release_Method AS RelMethod, firstRelSta.RelComments AS RelComments, 'Release' AS StaType, 
          firstRelSta.TSta_PK_ID AS Sta_ID, firstRelSta.Name AS StaName, firstRelSta.DATE AS StaDate, 0 AS DaysSinceRelease, firstRelSta.Area, 
          firstRelSta.Locality, firstRelSta.LAT, firstRelSta.LON, firstRelSta.Precision, firstRelSta.FieldWorker1 AS FW1, firstRelSta.FieldWorker2 AS FW2, 
          firstRelSta.FieldWorker3 AS FW3,firstRelSta.FieldWorker4 AS FW4,firstRelSta.FieldWorker5 AS FW5,firstRelSta.FieldActivity_ID AS FA_ID, firstRelSta.FieldActivity_Name AS FA, firstRelSta.Creator, firstRelSta.Creation_date AS CreationDate, 
          cast(Vind.id37@Comments AS nvarchar(100)) AS IndivComments, firstBioSta.bioComments AS BiometryComments, 
          cast(ProtoInd.Comments AS nvarchar(100)) AS VertebrateIndivComments, firstBioSta.TSta_PK_ID AS BioStation_ID
FROM         (
	SELECT     *
	FROM TViewIndividual
	WHERE (id33@Thes_Origin = 18904 OR id33@Thes_Origin_Precision = 'rehab') AND id34@TCaracThes_Species_Precision LIKE '%Bustard%'
) AS VInd
LEFT OUTER JOIN (
	SELECT frel.*, pg.Id_Release_Method, pg.Name_Release_Method
	FROM (
		SELECT 
			cr.fk_group, cr.fk_tind_id, cr.Comments AS RelComments,  s.TSta_PK_ID, s.Name, s.DATE ,  s.Area, 
          s.Locality, s.LAT, s.LON, s.Precision, s.FieldWorker1, s.FieldWorker2, s.FieldWorker3,s.FieldWorker4,s.FieldWorker5,
          s.FieldActivity_ID, s.FieldActivity_Name, s.Creator, s.Creation_date , 
			ROW_NUMBER() OVER(ORDER BY FK_TInd_ID, DATE) - RANK() OVER(ORDER BY FK_TInd_ID) as r
		FROM TProtocol_Release_Individual cr 
		INNER JOIN V_Qry_StationsForMap s 
		ON cr.FK_TSta_ID = s.TSta_PK_ID
	) frel 
	INNER JOIN Tprotocol_Release_Group pg 
	ON pg.pk = frel.fk_group 
	WHERE r = 0
) AS firstRelSta 
ON VIND.Individual_obj_pk = firstRelSta.fk_tind_id 
OUTER apply fn_v_qry_GetEquipAtDate(VInd.Individual_Obj_PK, firstRelSta.DATE) 
AS IndivEquip 
LEFT OUTER JOIN(
	SELECT T1.*
	FROM (
		SELECT 
			b.fk_tind_id,b.[Weight] , b.Skull, b.Tarso_Metatarsus,  b.Comments AS bioComments, s.*, 
			ROW_NUMBER() OVER(ORDER BY FK_TInd_ID, DATE) - RANK() OVER(ORDER BY FK_TInd_ID) as r
		FROM TProtocol_Bird_Biometry b 
		INNER JOIN V_Qry_StationsForMap s ON b.FK_TSta_ID = s.TSta_PK_ID
	) T1 
	where r=0
) AS firstBioSta 
ON VIND.Individual_obj_pk = firstBioSta.fk_tind_id 
LEFT OUTER JOIN TProtocol_Vertebrate_individual AS ProtoInd 
ON ProtoInd.FK_TSta_ID = firstBioSta.TSta_PK_ID AND ProtoInd.Fk_TInd_ID = VInd.Individual_Obj_PK
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_Released_GetMaxStation@X]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_Released_GetMaxStation@X
CREATE FUNCTION [dbo].[fn_v_qry_Released_GetMaxStation@X](@Fk_Tind AS int, @XDays as int)
  RETURNS TABLE
AS
RETURN          
    select  
    T1.Ind_ID,
    T1.VHF@Station,
    T1.VHFModel@Station,
    T1.PTT@Station,
    T1.PTTModel@Station,
    T1.Sta_ID,
    T1.StaName,
    T1.MaxDate as StaDate,
	coalesce(v1.StaType, v2.StaType, v3.StaType, v4.StaType, v5.StaType, v6.StaType, v7.StaType) as StaType,
	T1.Area,
	T1.Locality,
	T1.LAT,
	T1.LON,
	T1.Precision,
	T1.FW1,
	T1.FW2,
	T1.FW3,
	T1.FW4,
	T1.FW5,
	T1.FA_ID,
	T1.FA,
	T1.Creator,
	T1.CreationDate,
	T1.MonitoringStatus@Current,
	T1.SurveyType@Station
	

from

(select TOP 1 va.Ind_ID, 
	va.StaDate as MaxDate,
	va.Sta_ID, 
	va.StaName, 
	va.PTT@Station, va.PTTModel@Station, 
	va.VHF@Station, va.VHFModel@Station,    
	vb.StaDate as RelStaDate,
	va.Area,
	va.Locality,
	va.LAT,
	va.LON,
	va.Precision,
	va.FW1,
	va.FW2,
	va.FW3,
	va.FW4,
	va.FW5,
	va.FA_ID,
	va.FA,
	va.Creator,
	va.CreationDate,
	va.MonitoringStatus@Current,
	va.SurveyType@Station
	from V_Qry_AllIndivs_Stations va
	inner join 
	     V_Qry_Released_FirstStation vb
		on va.Ind_ID = vb.Ind_ID
		and va.StaDate > vb.StaDate
	where 
		va.Ind_ID = @Fk_Tind
		and CAST(FLOOR(CAST(va.StaDate AS float)) AS datetime)  
			<= DATEADD(DAY, @XDays, CAST(FLOOR(CAST(vb.StaDate AS float)) AS datetime)) 

order by va.StaDate Desc
) as T1

left outer join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Death'
) v1
on v1.Ind_ID = T1.Ind_ID
and v1.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Nest'
) v2
on v2.Ind_ID = T1.Ind_ID
and v2.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Release'
) v3
on v3.Ind_ID = T1.Ind_ID
and v3.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Capture'
) v4
on v4.Ind_ID = T1.Ind_ID
and v4.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'GPS'
) v5
on v5.Ind_ID = T1.Ind_ID
and v5.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Argos'
) v6
on v6.Ind_ID = T1.Ind_ID
and v6.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'VIndividual'
) v7
on v7.Ind_ID = T1.Ind_ID
and v7.Sta_ID = T1.Sta_ID
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_SurveyType@X]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_v_qry_SurveyType@X](@Fk_Tind AS int, @StartDate AS Datetime, @XDays as int)
  RETURNS TABLE
  with schemabinding
AS
RETURN   
    select TOP 1 value_precision as [SurveyType@XDays]
	from [dbo].TObj_Carac_value 
	where Fk_carac = 61
	and fk_object = @Fk_Tind
    and (@StartDate is not null and 
     CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <= 
		CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) 
	 and (end_date is null or
				CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) < 
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))	
	order by begin_date desc
GO
/****** Object:  View [dbo].[V_Qry_Released_MaxStation@XDays]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_MaxStation@XDays
CREATE view [dbo].[V_Qry_Released_MaxStation@XDays] as
select
rel.Ind_ID,
rel.Origin,
rel.Taxon,
DATEADD(DAY, 365, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime)) as Date@XDays,
IndivMonitoringStatus@X.MonitoringStatus@XDays,
IndivSurveyType@X.SurveyType@XDays,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
v.BirthDate,
v.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
rel.RelSta_ID,
rel.RelStaName,
rel.RelStaDate,
rel.RelArea,
rel.RelLocality,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime),
		CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) as DaysSinceRelease,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FW3,
T.FW4,
T.FW5,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate

from 

(select 
Ind_ID,
Origin,
Taxon,
Mark1Color,
Mark1Position,
Mark1Code,
Mark2Color,
Mark2Position,
Mark2Code,
RelMethod_ID,
RelMethod,
Sta_ID as RelSta_ID,
StaName as RelStaName,
StaDate as RelStaDate,
Area as RelArea,
Locality as RelLocality

from V_Qry_Released_FirstStation 
) as rel

inner join

(select
VInd.Individual_Obj_PK as Ind_ID,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate

from TViewIndividual as VInd
) as v
on v.Ind_ID = rel.Ind_ID 

OUTER apply dbo.[fn_v_qry_MonitoringStatus@X](rel.Ind_ID, rel.RelStaDate, 365) as IndivMonitoringStatus@X
OUTER apply dbo.[fn_v_qry_SurveyType@X](rel.Ind_ID, rel.RelStaDate, 365)as IndivSurveyType@X	
outer apply fn_v_qry_Released_GetMaxStation@X(rel.Ind_ID, 365) as T
GO
/****** Object:  StoredProcedure [dbo].[sp_Qry_Released_MaxStation@XDays]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Qry_Released_MaxStation@XDays]
(
    @XDays int
)
AS
BEGIN

DECLARE @sql nvarchar(2500)

	IF NOT EXISTS (SELECT * FROM sys.views 
		WHERE object_id = OBJECT_ID(N'[dbo].[V_Qry_Released_MaxStation@XDays]'))
	BEGIN
		exec dbo.sp_executesql @statement = N'create view [dbo].[V_Qry_Released_MaxStation@XDays] as select * from V_Qry_Released_MaxStation@60Days'
	END

	 set @sql = 'alter view [dbo].[V_Qry_Released_MaxStation@XDays] as
	
select
rel.Ind_ID,
rel.Origin,
rel.Taxon,
DATEADD(DAY, ' + cast(@XDays as nvarchar(10)) + ', CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime)) as Date@XDays,
IndivStatus@X.Status@XDays,
v.CurrentStatus,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
v.BirthDate,
v.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
rel.RelSta_ID,
rel.RelStaName,
rel.RelStaDate,
rel.RelRegion,
rel.RelPlace,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime),
		CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) as DaysSinceRelease,
T.Region,
T.Place,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate

from 

(select 
Ind_ID,
Origin,
Taxon,
RelMethod_ID,
RelMethod,
Mark1Color,
Mark1Position,
Mark1Code,
Mark2Color,
Mark2Position,
Mark2Code,
Sta_ID as RelSta_ID,
StaName as RelStaName,
StaDate as RelStaDate,
Region as RelRegion,
Place as RelPlace

from V_Qry_Released_FirstStation 
) as rel

inner join

(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id1@Thes_Status_Precision as CurrentStatus,
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate

from TViewIndividual as VInd
) as v
on v.Ind_ID = rel.Ind_ID 

outer apply
	fn_v_qry_GetStatus@X(rel.Ind_ID, rel.RelStaDate, ' + cast(@XDays as nvarchar(10)) + ') as IndivStatus@X
	
outer apply
	fn_v_qry_Released_GetMaxStation@X(rel.Ind_ID, ' + cast(@XDays as nvarchar(10)) + ') as T
'

	exec dbo.sp_executesql @statement = @sql
	select * from V_Qry_Released_MaxStation@XDays
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetVHFSNAtDate]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[fn_v_qry_GetVHFSNAtDate](@Ind_ID AS int, @StaDate as datetime)
  RETURNS TABLE
AS
RETURN
          
select 
 T1.fk_object,
 IndivVHFSN.VHFSN as VHFSN@Station
 
from
(select top 1 fk_object from TObj_Carac_value 
	where fk_object = @Ind_ID
	and @StaDate is not null
) as T1
left outer join
(select fk_object, value as VHFSN, begin_date, end_date
		from TObj_Carac_value 
		where Fk_carac = 6 
		and fk_object = @Ind_ID
		and (CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <= 
			CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) 
		and (end_date is null or
				CAST(FLOOR(CAST(@StaDate AS float)) AS datetime) < 
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))
) as IndivVHFSN
on T1.fk_object = IndivVHFSN.fk_object
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetStatus@X]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_v_qry_GetStatus@X](@Fk_Tind AS int, @StartDate AS Datetime, @XDays as int)
  RETURNS TABLE
  with schemabinding
AS
RETURN   
    select TOP 1 value_precision as [Status@XDays]
	from [dbo].TObj_Carac_value 
	where Fk_carac = 1
	and fk_object = @Fk_Tind
    and (@StartDate is not null and 
     CAST(FLOOR(CAST(begin_date AS float)) AS datetime) <= 
		CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) 
	 and (end_date is null or
				CAST(FLOOR(CAST(DATEADD(DAY, @XDays, @StartDate) AS float)) AS datetime) < 
				CAST(FLOOR(CAST(end_date AS float)) AS datetime)))	
	order by begin_date desc
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetMinStation]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetMinStation
CREATE FUNCTION [dbo].[fn_v_qry_GetMinStation](@Fk_Tind AS int)
  RETURNS TABLE
AS
RETURN
          
select 
top 1
	Ind_ID,
	Origin,
	Taxon,
	VHF@Station,
	VHFModel@Station,
	PTT@Station,
	PTTModel@Station,
	SurveyType@Station,
	MonitoringStatus@Station,
	[freqOpti@Station],
	StaType,
	Sta_ID,
	StaName,
	StaDate,
	Area, Locality, LAT, LON, Precision, FW1, FW2,FW3,FW4,FW5, FA_ID, FA, Creator, CreationDate 
from V_Qry_AllIndivs_Stations v
where Ind_ID = @Fk_Tind
order by StaDate Asc, StaType_ID asc
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetMaxStationForPr]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetMaxStationForPr
CREATE FUNCTION [dbo].[fn_v_qry_GetMaxStationForPr](@Fk_Tind AS int, @Pr AS int)
  RETURNS TABLE
AS
RETURN          
select top 1 Ind_ID,
Origin,
Taxon,
VHF@Station,
VHFModel@Station,
PTT@Station,
PTTModel@Station,
SurveyType@Station, MonitoringStatus@Station,
[freqOpti@Station],
StaType,
Sta_ID,
StaName,
StaDate,
Area, Locality, LAT, LON, Precision, FW1, FW2,FW3,FW4,FW5, FA_ID, FA, Creator, CreationDate 
from V_Qry_AllIndivs_Stations v
where Ind_ID = @Fk_Tind AND StaType_ID = @Pr
order by StaDate Desc, StaType_ID asc
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetMaxStation]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetMaxStation
CREATE FUNCTION [dbo].[fn_v_qry_GetMaxStation](@Fk_Tind AS int)
  RETURNS TABLE
AS
RETURN          
select top 1 Ind_ID,
Origin,
Taxon,
VHF@Station,
VHFModel@Station,
PTT@Station,
PTTModel@Station,
SurveyType@Station, MonitoringStatus@Station,
SurveyType@Current, MonitoringStatus@Current,
freqOpti@Station,
StaType,
Sta_ID,
StaName,
StaDate,
Area, Locality, LAT, LON, Precision, FW1, FW2,FW3,FW4,FW5 FA_ID, FA, Creator, CreationDate 
from dbo.V_Qry_AllIndivs_Stations v
where Ind_ID = @Fk_Tind
order by StaDate Desc, StaType_ID asc
GO
/****** Object:  StoredProcedure [dbo].[sp_create_carac]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural solution
-- Create date: 10/04/2014
-- Description:    Fonction qui permet de faire une insertion dans la table TObj_Carac_value (crée afin d'éviter un bug iis)
-- Entrée : 
-- =============================================
CREATE PROCEDURE [dbo].[sp_create_carac]  
    -- Add the parameters for the stored procedure here
(
    @Fk_carac int,
    @fk_object int,
    @value  nvarchar(250),
    @value_precision  nvarchar(250),
    @begin_date datetime,
    @end_date datetime,
    @comments nvarchar(250),
    @object_type nvarchar(250)
)
AS
BEGIN
   Insert into TObj_Carac_value (Fk_carac,fk_object,value,value_precision,begin_date,end_date,comments,object_type)
   values (@Fk_carac,@fk_object,@value,@value_precision,@begin_date,@end_date,@comments,@object_type)
END

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[TProtocol_Vertebrate_Group]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Vertebrate_Group](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Name_Taxon] [nvarchar](250) NULL,
	[Id_Taxon] [int] NOT NULL,
	[Identity_sure] [bit] NOT NULL,
	[Ident_Occasional] [bit] NOT NULL,
	[Nb_Adult_Male] [int] NULL,
	[Nb_Adult_Female] [int] NULL,
	[Nb_Adult_Indeterminate] [int] NULL,
	[Nb_Juvenile_Male] [int] NULL,
	[Nb_Juvenile_Female] [int] NULL,
	[Nb_Juvenile_Indeterminate] [int] NULL,
	[Nb_NewBorn_Male] [int] NULL,
	[Nb_NewBorn_Female] [int] NULL,
	[Nb_NewBorn_Indeterminate] [int] NULL,
	[Nb_Indeterminate] [int] NULL,
	[Name_Behaviour] [nvarchar](250) NULL,
	[Id_Behaviour] [int] NULL,
	[Disturbed] [bit] NOT NULL,
	[Comments] [nvarchar](300) NULL,
	[Measured_Distance] [decimal](9, 2) NULL,
	[AngleNorth] [decimal](9, 2) NULL,
	[Estimated_Distance] [decimal](9, 2) NULL,
	[AngleTrack] [decimal](9, 2) NULL,
	[Nb_Total]  AS ((((((((([Nb_Adult_Male]+[Nb_Adult_Female])+[Nb_Adult_Indeterminate])+[Nb_Juvenile_Male])+[Nb_Juvenile_Female])+[Nb_Juvenile_Indeterminate])+[Nb_NewBorn_Male])+[Nb_NewBorn_Female])+[Nb_NewBorn_Indeterminate])+[Nb_Indeterminate]),
	[timestamp] [timestamp] NOT NULL,
	[observation_time] [datetime] NULL,
 CONSTRAINT [aaaaaTProtocol_Vertebrate_Group_Carac_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_VertebrateGroup_Taxon_Station_DistBearing] UNIQUE NONCLUSTERED 
(
	[FK_TSta_ID] ASC,
	[Id_Taxon] ASC,
	[Measured_Distance] ASC,
	[Estimated_Distance] ASC,
	[AngleNorth] ASC,
	[AngleTrack] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Vertebrate_Group] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Comportment] ON [dbo].[TProtocol_Vertebrate_Group] 
(
	[Id_Behaviour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Taxon] ON [dbo].[TProtocol_Vertebrate_Group] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Trigger [tr_Delete_DeleteIndividuals]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[tr_Delete_DeleteIndividuals]
   ON  [dbo].[TProtocol_Vertebrate_Group]
   AFTER DELETE
AS 
BEGIN
	
	SET NOCOUNT ON;

    -- Deletion de toutes les observations d'individus relatifs à ce groupe
    DELETE FROM dbo.TProtocol_Vertebrate_individual WHERE FK_GROUP  IN (SELECT PK FROM DELETED)
    

END
GO
/****** Object:  Table [dbo].[TViewTrx_Sat]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TViewTrx_Sat](
	[Trx_Sat_Obj_PK] [int] NOT NULL,
	[id1@Thes_Status] [int] NULL,
	[id1@Thes_Status_Precision] [nvarchar](150) NULL,
	[id6@TCarac_Transmitter_Serial_Number] [nvarchar](100) NULL,
	[id19@TCarac_PTT] [int] NULL,
	[id24@TCaracThes_Txt_Harness] [int] NULL,
	[id24@TCaracThes_Txt_Harness_Precision] [nvarchar](150) NULL,
	[id25@TCaracThes_Txt_Argos_DutyCycle] [int] NULL,
	[id25@TCaracThes_Txt_Argos_DutyCycle_Precision] [nvarchar](150) NULL,
	[id37@Comments] [nvarchar](255) NULL,
	[id41@TCaracThes_Model] [int] NULL,
	[id41@TCaracThes_Model_Precision] [nvarchar](150) NULL,
	[id42@TCaracThes_Company] [int] NULL,
	[id42@TCaracThes_Company_Precision] [nvarchar](150) NULL,
	[id43@TCarac_Weight] [float] NULL,
	[id44@TCarac_InitialLivespan] [int] NULL,
	[id49@TCarac_PTTAssignmentDate] [datetime] NULL,
 CONSTRAINT [PK_TViewTrx_Sat] PRIMARY KEY CLUSTERED 
(
	[Trx_Sat_Obj_PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TViewTrx_Radio]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TViewTrx_Radio](
	[Trx_Radio_Obj_PK] [int] NOT NULL,
	[id1@Thes_Status] [int] NULL,
	[id1@Thes_Status_Precision] [nvarchar](150) NULL,
	[id5@TCarac_Transmitter_Frequency] [int] NULL,
	[id6@TCarac_Transmitter_Serial_Number] [nvarchar](100) NULL,
	[id24@TCaracThes_Txt_Harness] [int] NULL,
	[id24@TCaracThes_Txt_Harness_Precision] [nvarchar](150) NULL,
	[id37@Comments] [nvarchar](255) NULL,
	[id40@TCaracThes_Shape] [int] NULL,
	[id40@TCaracThes_Shape_Precision] [nvarchar](150) NULL,
	[id41@TCaracThes_Model] [int] NULL,
	[id41@TCaracThes_Model_Precision] [nvarchar](150) NULL,
	[id42@TCaracThes_Company] [int] NULL,
	[id42@TCaracThes_Company_Precision] [nvarchar](150) NULL,
	[id43@TCarac_Weight] [float] NULL,
	[id44@TCarac_InitialLivespan] [int] NULL,
	[id46@TCaracThes_BatteryType] [int] NULL,
	[id46@TCaracThes_BatteryType_Precision] [nvarchar](150) NULL,
	[id57@TCarac_UpdatedLifeSpan] [int] NULL,
	[id58@TCarac_Date_UpdatedLifeSpan] [datetime] NULL,
 CONSTRAINT [PK_TViewTrx_Radio] PRIMARY KEY CLUSTERED 
(
	[Trx_Radio_Obj_PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TViewRFID]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TViewRFID](
	[RFID_Obj_pk] [int] NOT NULL,
	[id65@TCarac_rfid_Serial_number] [int] NULL,
	[id41@TCaracThes_Model] [int] NULL,
	[id41@TCaracThes_Model_Precision] [nvarchar](50) NULL,
	[id42@TCaracThes_Company] [int] NULL,
	[id42@TCaracThes_Company_Precision] [nvarchar](50) NULL,
	[id37@Comments] [nvarchar](250) NULL,
 CONSTRAINT [PK_TViewRFID] PRIMARY KEY CLUSTERED 
(
	[RFID_Obj_pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Qry_VHF_LastStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_VHF_LastStation
CREATE view [dbo].[V_Qry_VHF_LastStation] as
select --distinct
v.Ind_ID,
v.Origin,
v.Taxon,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentVHFSN,
T.VHF@Station,
T.VHFModel@Station,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
DATEDIFF(DAY,T.StaDate, Tmin.StaDate) AS DaysSinceFirstStation,
T.Area
from
(
(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id6@TCarac_Transmitter_Serial_Number as CurrentVHFSN
from TViewIndividual as VInd
where VInd.id5@TCarac_Transmitter_Frequency is not null
) as v	
outer apply
	fn_v_qry_GetMaxStation(v.Ind_ID) as T
outer apply
	fn_v_qry_GetMinStation(v.Ind_ID) as Tmin
)
GO
/****** Object:  View [dbo].[V_Qry_VHF_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_VHF_FirstStation
CREATE view [dbo].[V_Qry_VHF_FirstStation] as
select T1.ind_id, 
T1.Origin,
T1.Taxon,
T1.CurrentMonitoringStatus,
T1.CurrentSurveyType,
T1.CurrentVHF,
T1.CurrentVHFModel,
T1.CurrentVHFSN,

T1.VHF@Station,
T1.VHFModel@Station,
T2.VHFSN@Station,

T1.StaType,
T1.Sta_ID,
T1.StaName,
T1.StaDate,
T1.DaysSinceFirstStation,
T1.Area
from
(
select --distinct
v.Ind_ID,
v.Origin,
v.Taxon,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentVHFSN,

T.VHF@Station,
T.VHFModel@Station,

T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
DATEDIFF(DAY,Tmax.StaDate, T.StaDate) AS DaysSinceFirstStation,
T.Area
from
(
(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id6@TCarac_Transmitter_Serial_Number as CurrentVHFSN
from TViewIndividual as VInd
where VInd.id5@TCarac_Transmitter_Frequency is not null
) as v	
outer apply
	fn_v_qry_GetMinStation(v.Ind_ID) as T
outer apply
	fn_v_qry_GetMaxStation(v.Ind_ID) as Tmax
)
) T1
outer apply fn_v_qry_GetVHFSNAtDate(T1.Ind_ID, T1.StaDate) as T2
GO
/****** Object:  View [dbo].[V_Qry_Released_MaxStation@90Days]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_MaxStation@90Days
CREATE view [dbo].[V_Qry_Released_MaxStation@90Days] as
select
rel.Ind_ID,
rel.Origin,
rel.Taxon,
DATEADD(DAY, 90, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime)) as Date@XDays,
IndivMonitoringStatus@X.MonitoringStatus@XDays,
IndivSurveyType@X.SurveyType@XDays,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
v.BirthDate,
v.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
rel.RelSta_ID,
rel.RelStaName,
rel.RelStaDate,
rel.RelArea,
rel.RelLocality,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime),
CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) as DaysSinceRelease,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FW3,
T.FW4,
T.FW5,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate
from 
(select 
Ind_ID,
Origin,
Taxon,
Mark1Color,
Mark1Position,
Mark1Code,
Mark2Color,
Mark2Position,
Mark2Code,
RelMethod_ID,
RelMethod,
Sta_ID as RelSta_ID,
StaName as RelStaName,
StaDate as RelStaDate,
Area as RelArea,
Locality as RelLocality
from V_Qry_Released_FirstStation 
) as rel
inner join
(select
VInd.Individual_Obj_PK as Ind_ID,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate
from TViewIndividual as VInd
) as v
on v.Ind_ID = rel.Ind_ID 
OUTER apply dbo.[fn_v_qry_MonitoringStatus@X](rel.Ind_ID, rel.RelStaDate, 90) as IndivMonitoringStatus@X
OUTER apply dbo.[fn_v_qry_SurveyType@X](rel.Ind_ID, rel.RelStaDate, 90)as IndivSurveyType@X	
outer apply fn_v_qry_Released_GetMaxStation@X(rel.Ind_ID, 90) as T
GO
/****** Object:  View [dbo].[V_Qry_Released_MaxStation@60Days]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_MaxStation@60Days
CREATE view [dbo].[V_Qry_Released_MaxStation@60Days] as
select
rel.Ind_ID,
rel.Origin,
rel.Taxon,
DATEADD(DAY, 60, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime)) as Date@XDays,
IndivMonitoringStatus@X.MonitoringStatus@XDays,
IndivSurveyType@X.SurveyType@XDays,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
v.BirthDate,
v.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
rel.RelSta_ID,
rel.RelStaName,
rel.RelStaDate,
rel.RelArea,
rel.RelLocality,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime),
CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) as DaysSinceRelease,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FW3,
T.FW4,
T.FW5,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate
from 
(select 
Ind_ID,
Origin,
Taxon,
Mark1Color,
Mark1Position,
Mark1Code,
Mark2Color,
Mark2Position,
Mark2Code,
RelMethod_ID,
RelMethod,
Sta_ID as RelSta_ID,
StaName as RelStaName,
StaDate as RelStaDate,
Area as RelArea,
Locality as RelLocality
from V_Qry_Released_FirstStation 
) as rel
inner join
(select
VInd.Individual_Obj_PK as Ind_ID,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate
from TViewIndividual as VInd
) as v
on v.Ind_ID = rel.Ind_ID 
OUTER apply dbo.[fn_v_qry_MonitoringStatus@X](rel.Ind_ID, rel.RelStaDate, 60) as IndivMonitoringStatus@X
OUTER apply dbo.[fn_v_qry_SurveyType@X](rel.Ind_ID, rel.RelStaDate, 60)as IndivSurveyType@X	
outer apply fn_v_qry_Released_GetMaxStation@X(rel.Ind_ID, 60) as T
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetMinUMaxStation]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetMinUMaxStation
CREATE FUNCTION [dbo].[fn_v_qry_GetMinUMaxStation](@Fk_Tind AS int)
  RETURNS TABLE
AS
RETURN
          
    select  
    T1.Ind_ID,
    T1.VHF@Station,
    T1.VHFModel@Station,
    T1.PTT@Station,
    T1.PTTModel@Station,
    coalesce(v1.StaType, v31.StaType, v32.StaType, v4.StaType, v5.StaType, v6.StaType, v2.StaType) as StaType,
    T1.Sta_ID,
    T1.StaName,
    T1.StaDate,
	T1.DaysSinceFirstStation,
	s.Area,
	s.Locality,
	s.LAT,
	s.LON,
	s.Precision,
	s.FW1,
	s.FW2,
	s.FW3,
	s.FW4,
	s.FW5,
	s.FA_ID,
	s.FA,
	s.Creator,
	s.CreationDate

from
( 
  (select va1.Ind_ID,
          va1.PTT@Station,
		  va1.PTTModel@Station,
		  va1.VHF@Station,
		  va1.VHFModel@Station,
          va1.Sta_ID,
          va1.StaName,
          va1.StaDate,
          0 as DaysSinceFirstStation 
   from
	(select distinct Ind_ID, 
		StaDate,
		Sta_ID, 
		StaName, 
		PTT@Station,
		PTTModel@Station, 
		VHF@Station, 
		VHFModel@Station
	from V_Qry_AllIndivs_Equip@Station 
	where Ind_ID = @Fk_Tind
	) va1
	inner join
	(select Ind_ID, MIN(StaDate) as MinDate
	 from V_Qry_AllIndivs_Equip@Station 
	 where Ind_ID = @Fk_Tind
	 group by Ind_ID
	) vb
	ON va1.Ind_ID = vb.Ind_ID
	and va1.StaDate = vb.MinDate
  )
  union 
  (select va1.Ind_ID,
          va1.PTT@Station,
		  va1.PTTModel@Station,
		  va1.VHF@Station,
		  va1.VHFModel@Station,
          va1.Sta_ID,
          va1.StaName,
          va1.StaDate, 
	datediff(Day, CAST(FLOOR(CAST(vb.MinDate AS float)) AS datetime),
		CAST(FLOOR(CAST(vb.MaxDate AS float)) AS datetime)) 
    as DaysSinceFirstStation 
 from
	(select distinct Ind_ID, 
		StaDate,
		Sta_ID, 
		StaName, 
		PTT@Station, PTTModel@Station, 
		VHF@Station, VHFModel@Station
	from V_Qry_AllIndivs_Equip@Station 
	where Ind_ID = @Fk_Tind
	) va1
	inner join
	(select Ind_ID, MAX(StaDate) as MaxDate, MIN(StaDate) as MinDate
	 from V_Qry_AllIndivs_Equip@Station 
	 where Ind_ID = @Fk_Tind
	 group by Ind_ID
	 having MAX(StaDate) > MIN(StaDate)
	) vb
	ON va1.Ind_ID = vb.Ind_ID
	and va1.StaDate = vb.MaxDate
  )
) as T1

left outer join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Death'
) v1
on v1.Ind_ID = T1.Ind_ID
and v1.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Nest'
) v2
on v2.Ind_ID = T1.Ind_ID
and v2.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Release'
) v31
on v31.Ind_ID = T1.Ind_ID
and v31.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Capture'
) v32
on v32.Ind_ID = T1.Ind_ID
and v32.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'ArgosGPS'
) v4
on v4.Ind_ID = T1.Ind_ID
and v4.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'Argos'
) v5
on v5.Ind_ID = T1.Ind_ID
and v5.Sta_ID = T1.Sta_ID
left join
(select Ind_ID, StaType, Sta_ID
 from V_Qry_AllIndivs_Equip@Station
 where StaType = 'VIndividual'
) v6
on v6.Ind_ID = T1.Ind_ID
and v6.Sta_ID = T1.Sta_ID

inner join
(select TSta_PK_ID,
	Area,
	Locality,
	LAT,
	LON,
	Precision,
	FieldWorker1 as FW1,
	FieldWorker2 as FW2,
	FieldWorker3 as FW3,
	FieldWorker4 as FW4,
	FieldWorker5 as FW5,
	FieldActivity_ID as FA_ID,
	FieldActivity_Name as FA,
	Creator,
	Creation_date as CreationDate
	from V_Qry_StationsForMap
) s
on s.TSta_PK_ID = T1.Sta_ID
GO
/****** Object:  View [dbo].[V_Qry_Released_FirstULastStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_FirstULastStation
CREATE view [dbo].[V_Qry_Released_FirstULastStation] as
select
v.Ind_ID,
v.Origin,
v.Taxon,
v.CurrentSurveyType, v.CurrentMonitoringStatus, 
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
v.BirthDate,
v.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
T.DaysSinceFirstStation as DaysSinceRelease,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FW3,
T.FW4,
T.FW5,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate

from
(

(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate

from TViewIndividual as VInd
where Vind.id34@TCaracThes_Species_Precision Like '%Houbara%'
and VInd.id33@Thes_Origin = 18904 
) as v

inner join
(select 
Ind_ID,
Mark1Color,
Mark1Position,
Mark1Code,
Mark2Color,
Mark2Position,
Mark2Code,
RelMethod_ID,
RelMethod
from V_Qry_Released_FirstStation 
) as rel
on rel.Ind_ID = v.Ind_ID
	
outer apply
	fn_v_qry_GetMinUMaxStation(v.Ind_ID) as T
)
GO
/****** Object:  View [dbo].[V_Qry_Houbara_FirstULastStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Houbara_FirstULastStation
CREATE VIEW [dbo].[V_Qry_Houbara_FirstULastStation] as
select
v.Ind_ID,
v.Origin,
v.Taxon,
v.CurrentSurveyType, v.CurrentMonitoringStatus,
v.CurrentIndividualStatus,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
v.Mark1Color,
v.Mark1Position,
v.Mark1Code,
v.Mark2Color,
v.Mark2Position,
v.Mark2Code,
v.BirthDate,
v.DeathDate,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
T.DaysSinceFirstStation,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FW3,
T.FW4,
T.FW5,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate
from
(
(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
VInd.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
 vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
VInd.id55@TCarac_Mark_code_1 as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
VInd.id56@TCarac_Mark_code_2 as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate
from TViewIndividual as VInd
where Vind.id34@TCaracThes_Species_Precision Like '%ustard%'
) as v	
outer apply
	fn_v_qry_GetMinUMaxStation(v.Ind_ID) as T
)
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_FirstStation
CREATE VIEW [dbo].[V_Qry_AllIndivs_FirstStation] as
select
v.Ind_ID,
v.Origin,
v.Taxon,
v.CurrentSurveyType,v.CurrentMonitoringStatus,
v.CurrentIndividualStatus,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
T.SurveyType@Station, T.MonitoringStatus@Station,
T.[freqOpti@Station],
v.Sex,
coalesce(v.ReleaseRing,v.BreedingRing,'No Mark') as Ring,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
v.Mark1Color,
v.Mark1Position,
v.Mark1Code,
v.Mark2Color,
v.Mark2Position,
v.Mark2Code,
v.BirthDate,
v.DeathDate,
v.Age,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
0 as DaysSinceFirstStation,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate

from

(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
VInd.id60@TCaracThes_Monitoring_Status_Precision as CurrentMonitoringStatus,
VInd.id61@TCaracThes_Survey_type_Precision as CurrentSurveyType,
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
VInd.id55@TCarac_Mark_code_1 as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
VInd.id56@TCarac_Mark_code_2 as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate,
id2@Thes_Age_Precision as Age
from TViewIndividual as VInd
) as v
outer apply fn_v_qry_GetMinStation(v.ind_id) as T
GO
/****** Object:  View [dbo].[V_Qry_ArgosGSM_lastData_withFirstCaptRelData]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_ArgosGSM_lastData_withFirstCaptRelData
CREATE VIEW [dbo].[V_Qry_ArgosGSM_lastData_withFirstCaptRelData] AS
SELECT *, 
		GEOMETRY::STPointFromText('POINT (' + CAST(firstStaLON AS varchar)+' '+CAST(firstStaLAT AS varchar) +')', 4326) AS lastStageom
FROM (
	SELECT Individual_Obj_PK, 
		id19@TCarac_PTT AS PTT,
		RelCaptTag = CASE WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code ELSE id9@TCarac_Release_Ring_Code END, 
		id30@TCaracThes_Sex_Precision AS Sex,
		id33@Thes_Origin_Precision AS Origin,
		id60@TCaracThes_Monitoring_Status_Precision AS Monitoring_status,	
		id61@TCaracThes_Survey_type_Precision AS Survey_type,
		id34@TCaracThes_Species AS speciesId,
		id34@TCaracThes_Species_Precision AS species, 
		lastArgos.StaDate AS lastArgosDate,
		lastArgos.LAT AS lastArgosLat, 
		lastArgos.LON AS lastArgosLon,
		lastGPS.StaDate AS lastGPSDate,
		lastGPS.LAT AS lastGPSLat, 
		lastGPS.LON AS lastGPSLon,
		firstSta.StaType AS firstStaType,
		firstSta.Sta_ID AS firstStaID,
		firstSta.StaName AS firstStaName,
		firstSta.StaDate AS firstStaDate,
		firstSta.Area AS firstStaArea,
		firstSta.Locality AS firstStaLocality,
		firstSta.LAT AS firstStaLAT,
		firstSta.LON AS firstStaLON,
		
		firstSta.Precision AS firstStaPrecision,
		firstSta.FW1 AS firstStaFW1,
		firstSta.FW2 AS firstStaFW2,
		firstSta.FA_ID AS firstStaFA_ID,
		firstSta.FA AS firstStaFA, 
		
		CASE 
			WHEN lastGPS.StaDate IS NULL THEN LastArgos.LAT
			WHEN LastArgos.StaDate IS NULL THEN lastGPS.LAT
			WHEN LastArgos.StaDate = lastGPS.StaDate THEN lastGPS.LAT
			WHEN LastArgos.StaDate > lastGPS.StaDate THEN LastArgos.LAT
			ELSE lastGPS.LAT
		END as Lat, 
		CASE 
			WHEN lastGPS.StaDate IS NULL THEN LastArgos.LON
			WHEN LastArgos.StaDate IS NULL THEN lastGPS.LON
			WHEN LastArgos.StaDate = lastGPS.StaDate THEN lastGPS.LON
			WHEN LastArgos.StaDate > lastGPS.StaDate THEN LastArgos.LON
			ELSE lastGPS.LON
		END as Lon,
		CASE 
			WHEN lastGPS.StaDate IS NULL THEN LastArgos.Area
			WHEN LastArgos.StaDate IS NULL THEN lastGPS.Area
			WHEN LastArgos.StaDate = lastGPS.StaDate THEN lastGPS.Area
			WHEN LastArgos.StaDate > lastGPS.StaDate THEN LastArgos.Area
			ELSE lastGPS.Area
		END as Area,
		DATEDIFF(day, lastGPS.StaDate , CURRENT_TIMESTAMP) AS datediffGPS, 
		DATEDIFF(day, lastArgos.StaDate , CURRENT_TIMESTAMP) AS datediffArgos,
		lastGPS.Area as lastGPSArea, lastArgos.Area as lastArgosArea
	FROM (
		SELECT *
		FROM TViewIndividual 
		WHERE NOT id19@TCarac_PTT IS NULL AND ( NOT id60@TCaracThes_Monitoring_Status IS NULL OR NOT id61@TCaracThes_Survey_type IS NULL )
	) as equipedInd
	JOIN dbo.V_Qry_AllIndivs_FirstStation firstSta
	ON firstSta.Ind_ID = equipedInd.Individual_Obj_PK
	OUTER APPLY dbo.fn_v_qry_GetMaxStationForPr(equipedInd.Individual_Obj_PK, 40) AS lastGPS
	OUTER APPLY dbo.fn_v_qry_GetMaxStationForPr(equipedInd.Individual_Obj_PK, 50) AS lastArgos
) as satIndvData
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_Capture_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_Capture_FirstStation
CREATE VIEW [dbo].[V_Qry_AllIndivs_Capture_FirstStation]
AS
SELECT DISTINCT 
      VInd.Individual_Obj_PK AS Ind_ID, VInd.id33@Thes_Origin_Precision AS Origin, Vind.id34@TCaracThes_Species_Precision AS Taxon, 
      vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus, VInd.id61@TCaracThes_Survey_type_Precision CurrentSurveyType, VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
      VInd.id5@TCarac_Transmitter_Frequency AS CurrentVHF, 
      Vind.id4@TCaracThes_Transmitter_Model_Precision AS CurrentVHFModel, Vind.id19@TCarac_PTT AS CurrentPTT, 
      Vind.id22@TCaracThes_PTT_model_Precision AS CurrentPTTModel, IndivEquip.VHF@Station, IndivEquip.VHFModel@Station, IndivEquip.PTT@Station, 
      IndivEquip.PTTModel@Station, VInd.id30@TCaracThes_Sex_Precision AS Sex, VInd.id12@TCarac_Breeding_Ring_Code AS BreedindRing, 
      VInd.id9@TCarac_Release_Ring_Code AS ReleaseRing, VInd.id13@TCarac_Chip_Code AS ChipCode, VInd.id14@TCaracThes_Mark_Color_1_Precision AS Mark1Color,
       VInd.id15@TCaracThes_Mark_Position_1_Precision AS Mark1Position, VInd.id55@TCarac_Mark_code_1 AS Mark1Code, 
      VInd.id16@TCaracThes_Mark_Color_2_Precision AS Mark2Color, VInd.id17@TCaracThes_Mark_Position_2_Precision AS Mark2Position, 
      VInd.id56@TCarac_Mark_code_2 AS Mark2Code, VInd.id35@Birth_date AS BirthDate, VInd.id36@Death_date AS DeathDate, firstBioSta.[Weight] AS WeightGrs, 
      firstBioSta.Skull, firstBioSta.Tarso_Metatarsus, firstCaptSta.Id_Capture_Method AS CaptMethod_ID, firstCaptSta.Name_Capture_Method AS CaptMethod, 
      firstCaptSta.RelComments AS CaptComments, 'Capture' AS StaType, firstCaptSta.TSta_PK_ID AS Sta_ID, firstCaptSta.Name AS StaName, firstCaptSta.DATE AS StaDate, 
      0 AS DaysSinceFirstStation, firstCaptSta.Area, firstCaptSta.Locality, firstCaptSta.LAT, firstCaptSta.LON, firstCaptSta.Precision, firstCaptSta.FieldWorker1 AS FW1, 
      firstCaptSta.FieldWorker2 AS FW2,firstCaptSta.FieldWorker3 AS FW3,firstCaptSta.FieldWorker4 AS FW4
	  ,firstCaptSta.FieldWorker5 AS FW5, firstCaptSta.FieldActivity_ID AS FA_ID, firstCaptSta.FieldActivity_Name AS FA, firstCaptSta.Creator, 
      firstCaptSta.Creation_date AS CreationDate, cast(Vind.id37@Comments AS nvarchar(100)) AS IndivComments, firstBioSta.Weight AS BiometryWeight,  firstBioSta.bioComments AS BiometryComments, 
      cast(ProtoInd.Comments AS nvarchar(100)) AS VertebrateIndivComments, firstBioSta.TSta_PK_ID AS BioStation_ID
FROM(
	SELECT     T3.*
	FROM (
		SELECT     pg.Name_capture_method, pg.id_capture_method, cr.*, cr.Comments AS RelComments, s.*
		FROM          TProtocol_Capture_Individual cr 
		INNER JOIN Tprotocol_Capture_Group pg ON pg.pk = cr.fk_group 
		INNER JOIN V_Qry_StationsForMap s ON cr.FK_TSta_ID = s.TSta_PK_ID) T3 
		INNER JOIN(SELECT     cr.FK_TInd_ID, MIN(s.DATE) AS minDate
		FROM          TProtocol_Capture_Individual cr INNER JOIN
		tstations s ON cr.FK_TSta_ID = s.TSta_PK_ID
		GROUP BY cr.FK_TInd_ID) T4 ON (T3.FK_TInd_ID = T4.FK_TInd_ID AND T3.DATE = T4.minDate)
	) AS firstCaptSta 
	INNER JOIN (SELECT     * FROM          TViewIndividual) AS VInd 
	ON VIND.Individual_obj_pk = firstCaptSta.fk_tind_id 
	OUTER apply fn_v_qry_GetEquipAtDate(VInd.Individual_Obj_PK,	firstCaptSta.DATE) AS IndivEquip 
	LEFT OUTER JOIN (
		SELECT     T1.*
		FROM (
			SELECT     b.*, b.Comments AS bioComments, s.*
			FROM  TProtocol_Bird_Biometry b 
			INNER JOIN V_Qry_StationsForMap s 
			ON b.FK_TSta_ID = s.TSta_PK_ID
			) T1 
			INNER JOIN (SELECT FK_TInd_ID, MIN(s.DATE) AS minDate
			FROM TProtocol_Bird_Biometry b 
			INNER JOIN tstations s ON b.FK_TSta_ID = s.TSta_PK_ID
			WHERE      FieldActivity_ID = 26
			GROUP BY b.FK_TInd_ID
	) T2 
	ON (T1.FK_TInd_ID = T2.FK_TInd_ID AND T1.DATE = T2.minDate)
) AS firstBioSta
ON firstCaptSta.fk_tind_id = firstBioSta.fk_tind_id
LEFT OUTER JOIN TProtocol_Vertebrate_individual AS ProtoInd 
ON ProtoInd.FK_TSta_ID = firstBioSta.TSta_PK_ID AND ProtoInd.Fk_TInd_ID = VInd.Individual_Obj_PK
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_Released_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_Released_FirstStation
CREATE VIEW [dbo].[V_Qry_AllIndivs_Released_FirstStation] as
select --distinct
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
VInd.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
IndivEquip.VHF@Station,
IndivEquip.VHFModel@Station,
IndivEquip.PTT@Station,
IndivEquip.PTTModel@Station,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedindRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
VInd.id55@TCarac_Mark_code_1 as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
VInd.id56@TCarac_Mark_code_2 as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate,
firstBioSta.[Weight] as WeightGrs,
firstBioSta.Skull,
firstBioSta.Tarso_Metatarsus,
firstRelSta.Id_Release_Method as RelMethod_ID,
firstRelSta.Name_Release_Method as RelMethod,
firstRelSta.RelComments as RelComments,
'Release' as StaType,
firstRelSta.TSta_PK_ID as Sta_ID,
firstRelSta.Name as StaName,
firstRelSta.DATE as StaDate,
0 as DaysSinceRelease,
firstRelSta.Area,
firstRelSta.Locality,
firstRelSta.LAT,
firstRelSta.LON,
firstRelSta.ELE,
firstRelSta.Precision,
firstRelSta.FieldWorker1 as FW1,
firstRelSta.FieldWorker2 as FW2,
firstRelSta.FieldWorker2 as FW3,
firstRelSta.FieldWorker2 as FW4,
firstRelSta.FieldWorker2 as FW5,
firstRelSta.FieldActivity_ID as FA_ID,
firstRelSta.FieldActivity_Name as FA,
firstRelSta.Creator,
firstRelSta.Creation_date as CreationDate,
cast(Vind.id37@Comments as nvarchar(100)) as IndivComments,
firstBioSta.bioComments as BiometryComments,
firstBioSta.Weight as BiometryWeight,
cast(ProtoInd.Comments as nvarchar(100)) as VertebrateIndivComments,
firstBioSta.TSta_PK_ID as BioStation_ID

 from

(select T3.* from 
			(select pg.Name_release_method, pg.id_release_method, cr.*, cr.Comments as RelComments, s.*
				from TProtocol_Release_Individual cr
				inner join Tprotocol_Release_Group pg
				on pg.pk = cr.fk_group
				inner join V_Qry_StationsForMap s
				on cr.FK_TSta_ID = s.TSta_PK_ID
			) T3
			inner join
			(select cr.FK_TInd_ID, MIN(s.DATE) as minDate
				from TProtocol_Release_Individual cr inner join tstations s
				on cr.FK_TSta_ID = s.TSta_PK_ID 
				group by cr.FK_TInd_ID 
			)T4
			on (T3.FK_TInd_ID = T4.FK_TInd_ID and T3.DATE  = T4.minDate)
) as firstRelSta
inner join
(select * from TViewIndividual) as VInd
on VIND.Individual_obj_pk = firstRelSta.fk_tind_id

outer apply fn_v_qry_GetEquipAtDate( VInd.Individual_Obj_PK, firstRelSta.DATE) 
	as IndivEquip


left outer join
(select T1.* from 
			(select b.*, b.Comments as bioComments, s.*
				from TProtocol_Bird_Biometry b inner join V_Qry_StationsForMap s
				on b.FK_TSta_ID = s.TSta_PK_ID
			) T1
			inner join
			(select FK_TInd_ID, MIN(s.DATE) as minDate
				from TProtocol_Bird_Biometry b inner join tstations s
				on b.FK_TSta_ID = s.TSta_PK_ID 
				where FieldActivity_ID = 26
				group by b.FK_TInd_ID 
			)T2
			on (T1.FK_TInd_ID = T2.FK_TInd_ID and T1.DATE  = T2.minDate)
) as firstBioSta
on firstRelSta.fk_tind_id = firstBioSta.fk_tind_id
left outer join
TProtocol_Vertebrate_individual as ProtoInd
on ProtoInd.FK_TSta_ID = firstBioSta.TSta_PK_ID 
and ProtoInd.Fk_TInd_ID = VInd.Individual_Obj_PK
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_LastStations_WithFirstRelCaptData]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_LastStations_WithFirstRelCaptData
CREATE VIEW [dbo].[V_Qry_AllIndivs_LastStations_WithFirstRelCaptData]  as
select
v.Ind_ID,
T.Origin,
v.CurrentIndividualStatus,
v.CurrentSurveyType, 
v.CurrentMonitoringStatus,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
T.MonitoringStatus@Station,
T.SurveyType@Station,
T.[freqOpti@Station],
v.Sex,
v.BreedingRing,
v.ReleaseRing,
coalesce(v.ReleaseRing,v.BreedingRing,'No Mark') as Ring,
v.ChipCode,
v.Mark1Color,
v.Mark1Position,
v.Mark1Code,
v.Mark2Color,
v.Mark2Position,
v.Mark2Code,
v.BirthDate,
v.DeathDate,
v.Age,
coalesce(rel.sta_id, capt.sta_id, firstSta.sta_id) as RelCaptSta_ID,
coalesce(rel.staType, capt.staType, firstSta.staType) as RelCaptStaType,
coalesce(rel.stadate, capt.stadate, firstSta.stadate) as RelCaptStaDate,
coalesce(YEAR(rel.stadate), YEAR(capt.stadate), YEAR(firstSta.stadate)) as RelCaptYear,
coalesce(rel.Area,capt.Area,firstSta.Area) as RelCaptArea,
coalesce(rel.Locality, capt.Locality,firststa.Locality) as RelCaptLocality,
coalesce(rel.lat, capt.lat,firststa.lat) as RelCaptLAT,
coalesce(rel.lon, capt.lon,firststa.lon) as RelCaptLON,
coalesce(rel.RelMethod, capt.captmethod, null) as RelCaptMethod,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(coalesce(rel.stadate, capt.stadate, firstSta.stadate) AS float)) AS datetime),
		CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) 
 as DaysSinceFirstStation,
T.Area,
T.Locality,
T.LAT,
T.LON,
T.Precision,
T.FW1,
T.FW2,
T.FA_ID,
T.FA,
T.Creator,
T.CreationDate
from
(select
VInd.Individual_Obj_PK as Ind_ID,
vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
VInd.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType,
VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
VInd.id55@TCarac_Mark_code_1 as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
VInd.id56@TCarac_Mark_code_2 as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate,
VInd.id2@Thes_Age_Precision as Age
from TViewIndividual as VInd
) as v
left JOIN
  (SELECT  Ind_ID, RelMethod_ID , RelMethod, Sta_ID, staType,
              StaName, StaDate, Area, Locality, LAT, lon
    FROM          dbo.V_Qry_AllIndivs_Released_FirstStation
   ) AS rel ON rel.Ind_ID = v.Ind_ID 
left JOIN
  (SELECT     Ind_ID, CaptMethod_ID, CaptMethod, Sta_ID, staType,
              StaName, StaDate, Area, Locality, LAT, lon
    FROM          dbo.V_Qry_AllIndivs_Capture_FirstStation
   ) AS capt ON capt.Ind_ID = v.Ind_ID 
 left join
  (SELECT     Ind_ID, NULL as 'Method_ID', NULL as 'Method', Sta_ID , StaType,
              StaName , StaDate , Area , Locality, LAT, lon
    FROM          dbo.V_Qry_AllIndivs_FirstStation
   ) AS firstSta ON firstSta.Ind_ID = v.Ind_ID 
outer apply fn_v_qry_GetMaxStation(v.Ind_ID) as T
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_EquipmentData]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_AllIndivs_EquipmentData]
AS
SELECT  fk_object, [PTT_VHF], EquipType, begin_date, end_date, Individual_Obj_PK, 
	id59@TCaracThes_Individual_Status,
	id61@TCaracThes_Survey_type_Precision, id60@TCaracThes_Monitoring_Status_Precision, 
	id2@Thes_Age, 
	id2@Thes_Age_Precision, id3@TCaracThes_Transmitter_Shape, id3@TCaracThes_Transmitter_Shape_Precision, id4@TCaracThes_Transmitter_Model, 
	id4@TCaracThes_Transmitter_Model_Precision, id5@TCarac_Transmitter_Frequency, id6@TCarac_Transmitter_Serial_Number, 
	id7@TCaracThes_Release_Ring_Position, id7@TCaracThes_Release_Ring_Position_Precision, id8@TCaracThes_Release_Ring_Color, 
	id8@TCaracThes_Release_Ring_Color_Precision, id9@TCarac_Release_Ring_Code, id10@TCaracThes_Breeding_Ring_Position, 
	id10@TCaracThes_Breeding_Ring_Position_Precision, id11@TCaracThes_Breeding_Ring_Color, id11@TCaracThes_Breeding_Ring_Color_Precision, 
	id12@TCarac_Breeding_Ring_Code, id13@TCarac_Chip_Code, id14@TCaracThes_Mark_Color_1, id14@TCaracThes_Mark_Color_1_Precision, 
	id15@TCaracThes_Mark_Position_1, id15@TCaracThes_Mark_Position_1_Precision, id16@TCaracThes_Mark_Color_2, 
	id16@TCaracThes_Mark_Color_2_Precision, 
	id17@TCaracThes_Mark_Position_2, id17@TCaracThes_Mark_Position_2_Precision, id19@TCarac_PTT, id20@TCaracThes_PTT_manufacturer, 
	id20@TCaracThes_PTT_manufacturer_Precision, id22@TCaracThes_PTT_model, id22@TCaracThes_PTT_model_Precision, id30@TCaracThes_Sex, 
	id30@TCaracThes_Sex_Precision, id33@Thes_Origin, id33@Thes_Origin_Precision, id34@TCaracThes_Species, id34@TCaracThes_Species_Precision, 
	id35@Birth_date, id36@Death_date, id37@Comments, id55@TCarac_Mark_code_1, id56@TCarac_Mark_code_2
FROM  (
	SELECT     o.fk_object, o.value AS[PTT_VHF], 'PTT' AS EquipType, o.begin_date, o.end_date, v.Individual_Obj_PK, 
		v.id59@TCaracThes_Individual_Status,
		v.id61@TCaracThes_Survey_type_Precision, v.id60@TCaracThes_Monitoring_Status_Precision, 
		v.id2@Thes_Age, v.id2@Thes_Age_Precision, v.id3@TCaracThes_Transmitter_Shape, v.id3@TCaracThes_Transmitter_Shape_Precision, 
		v.id4@TCaracThes_Transmitter_Model, v.id4@TCaracThes_Transmitter_Model_Precision, v.id5@TCarac_Transmitter_Frequency, 
		v.id6@TCarac_Transmitter_Serial_Number, v.id7@TCaracThes_Release_Ring_Position, v.id7@TCaracThes_Release_Ring_Position_Precision, 
		v.id8@TCaracThes_Release_Ring_Color, v.id8@TCaracThes_Release_Ring_Color_Precision, v.id9@TCarac_Release_Ring_Code, 
		v.id10@TCaracThes_Breeding_Ring_Position, v.id10@TCaracThes_Breeding_Ring_Position_Precision, v.id11@TCaracThes_Breeding_Ring_Color, 
		v.id11@TCaracThes_Breeding_Ring_Color_Precision, v.id12@TCarac_Breeding_Ring_Code, v.id13@TCarac_Chip_Code, 
		v.id14@TCaracThes_Mark_Color_1, v.id14@TCaracThes_Mark_Color_1_Precision, v.id15@TCaracThes_Mark_Position_1, 
		v.id15@TCaracThes_Mark_Position_1_Precision, v.id16@TCaracThes_Mark_Color_2, v.id16@TCaracThes_Mark_Color_2_Precision, 
		v.id17@TCaracThes_Mark_Position_2, v.id17@TCaracThes_Mark_Position_2_Precision, v.id19@TCarac_PTT, v.id20@TCaracThes_PTT_manufacturer, 
		v.id20@TCaracThes_PTT_manufacturer_Precision, v.id22@TCaracThes_PTT_model, v.id22@TCaracThes_PTT_model_Precision, 
		v.id30@TCaracThes_Sex, v.id30@TCaracThes_Sex_Precision, v.id33@Thes_Origin, v.id33@Thes_Origin_Precision, v.id34@TCaracThes_Species, 
		v.id34@TCaracThes_Species_Precision, v.id35@Birth_date, v.id36@Death_date, v.id37@Comments, v.id55@TCarac_Mark_code_1, 
		v.id56@TCarac_Mark_code_2
	FROM (SELECT * FROM dbo.TObj_Carac_value WHERE Fk_carac = 19) AS o 
	INNER JOIN dbo.TViewIndividual AS v 
	ON v.Individual_Obj_PK = o.fk_object
	UNION
    SELECT o.fk_object, o.value AS [PTT_VHF], 'VHF' AS EquipType, o.begin_date, o.end_date, v.Individual_Obj_PK, 
		v.id59@TCaracThes_Individual_Status,
		v.id61@TCaracThes_Survey_type_Precision, v.id60@TCaracThes_Monitoring_Status_Precision, 
		v.id2@Thes_Age, v.id2@Thes_Age_Precision, v.id3@TCaracThes_Transmitter_Shape, v.id3@TCaracThes_Transmitter_Shape_Precision, 
		v.id4@TCaracThes_Transmitter_Model, v.id4@TCaracThes_Transmitter_Model_Precision, v.id5@TCarac_Transmitter_Frequency, 
		v.id6@TCarac_Transmitter_Serial_Number, v.id7@TCaracThes_Release_Ring_Position, v.id7@TCaracThes_Release_Ring_Position_Precision, 
		v.id8@TCaracThes_Release_Ring_Color, v.id8@TCaracThes_Release_Ring_Color_Precision, v.id9@TCarac_Release_Ring_Code, 
		v.id10@TCaracThes_Breeding_Ring_Position, v.id10@TCaracThes_Breeding_Ring_Position_Precision, v.id11@TCaracThes_Breeding_Ring_Color, 
		v.id11@TCaracThes_Breeding_Ring_Color_Precision, v.id12@TCarac_Breeding_Ring_Code, v.id13@TCarac_Chip_Code, 
		v.id14@TCaracThes_Mark_Color_1, v.id14@TCaracThes_Mark_Color_1_Precision, v.id15@TCaracThes_Mark_Position_1, 
		v.id15@TCaracThes_Mark_Position_1_Precision, v.id16@TCaracThes_Mark_Color_2, v.id16@TCaracThes_Mark_Color_2_Precision, 
		v.id17@TCaracThes_Mark_Position_2, v.id17@TCaracThes_Mark_Position_2_Precision, v.id19@TCarac_PTT, v.id20@TCaracThes_PTT_manufacturer, 
		v.id20@TCaracThes_PTT_manufacturer_Precision, v.id22@TCaracThes_PTT_model, v.id22@TCaracThes_PTT_model_Precision, v.id30@TCaracThes_Sex, 
		v.id30@TCaracThes_Sex_Precision, v.id33@Thes_Origin, v.id33@Thes_Origin_Precision, v.id34@TCaracThes_Species, 
		v.id34@TCaracThes_Species_Precision, v.id35@Birth_date, v.id36@Death_date, v.id37@Comments, v.id55@TCarac_Mark_code_1, 
		v.id56@TCarac_Mark_code_2
	FROM (SELECT * FROM dbo.TObj_Carac_value WHERE Fk_carac = 5) AS o 
	INNER JOIN dbo.TViewIndividual AS v ON v.Individual_Obj_PK = o.fk_object
) AS T
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la view V_Qry_AllIndivs_AllStations
CREATE VIEW [dbo].[V_Qry_AllIndivs_AllStations]
AS
SELECT     TOP (100) PERCENT 
 T.Ind_ID, T.Origin, T.Taxon, v.CurrentIndividualStatus, v.CurrentSurveyType, v.CurrentMonitoringStatus,v.CurrentPTT, 
  v.CurrentPTTModel, T.PTT@Station, T.PTTModel@Station, T.[MonitoringStatus@Station],T.[SurveyType@Station], v.Sex, 
  v.ReleaseRing, COALESCE (v.ReleaseRing, v.BreedingRing, 'No Mark') AS Ring, 
  v.ChipCode, v.BirthDate, v.DeathDate, firstSta.Sta_ID AS RelCaptSta_ID, 
  firstSta.StaType AS RelCaptStaType, firstSta.StaDate AS RelCaptStaDate, 
  YEAR(firstSta.StaDate) AS RelCaptYear, firstSta.Area AS RelCaptArea, 
  firstSta.Locality AS RelCaptLocality, firstSta.LAT AS RelCaptLAT, firstSta.LON AS RelCaptLON,
   T.StaType, T.Sta_ID, T.StaName, T.StaDate, T.Area, T.Locality, T.LAT, T.LON, 
  T.Precision, T.FW1, T.FW2,T.FW3,T.FW4,T.FW5, T.FA_ID, T.FA
FROM         (
	SELECT     
	Ind_ID, Origin, Taxon, VHF@Station, VHFModel@Station, PTT@Station,
	PTTModel@Station, [MonitoringStatus@Station],[SurveyType@Station],
	StaType, Sta_ID, StaName, StaDate, Area, 
    Locality, LAT, LON, Precision, FW1, FW2,FW3,FW4,FW5, FA_ID, FA, Creator, CreationDate
	FROM          dbo.V_Qry_AllIndivs_Stations
) AS T 
INNER JOIN  (
	SELECT     
		Individual_Obj_PK AS Ind_ID, 
		vInd.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus, 
		id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
		id5@TCarac_Transmitter_Frequency AS CurrentVHF, 
		id4@TCaracThes_Transmitter_Model_Precision AS CurrentVHFModel, id19@TCarac_PTT AS CurrentPTT, 
		id22@TCaracThes_PTT_model_Precision AS CurrentPTTModel, id30@TCaracThes_Sex_Precision AS Sex, 
		id12@TCarac_Breeding_Ring_Code AS BreedingRing, id9@TCarac_Release_Ring_Code AS ReleaseRing, 
		id13@TCarac_Chip_Code AS ChipCode, 
		id14@TCaracThes_Mark_Color_1_Precision AS Mark1Color, id15@TCaracThes_Mark_Position_1_Precision AS Mark1Position, 
		id55@TCarac_Mark_code_1 AS Mark1Code, id16@TCaracThes_Mark_Color_2_Precision AS Mark2Color, 
		id17@TCaracThes_Mark_Position_2_Precision AS Mark2Position, id56@TCarac_Mark_code_2 AS Mark2Code,
		id35@Birth_Date AS BirthDate, 
		id36@Death_Date AS DeathDate, id2@Thes_Age_Precision AS Age
        FROM          dbo.TViewIndividual AS VInd
) AS v ON v.Ind_ID = T.Ind_ID 
LEFT OUTER JOIN      (
	SELECT     Ind_ID, NULL AS 'Method_ID', NULL AS 'Method', Sta_ID, StaType, StaName, StaDate, Area, Locality, LAT, LON
	FROM          dbo.V_Qry_AllIndivs_FirstStation
) AS firstSta 
ON firstSta.Ind_ID = T.Ind_ID
GO
/****** Object:  Table [dbo].[TViewField_sensor]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TViewField_sensor](
	[Field_sensor_Obj_pk] [int] NOT NULL,
	[id62@TCaracThes_Field_sensor_type] [int] NULL,
	[id62@TCaracThes_Field_sensor_type_Precision] [varchar](255) NULL,
	[id41@TCaracThes_Model] [int] NULL,
	[id41@TCaracThes_Model_Precision] [varchar](255) NULL,
	[id42@TCaracThes_Company] [int] NULL,
	[id42@TCaracThes_Company_Precision] [varchar](255) NULL,
	[id37@Comments] [nvarchar](255) NULL,
 CONSTRAINT [PK_TViewField_sensor] PRIMARY KEY CLUSTERED 
(
	[Field_sensor_Obj_pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TViewCamera_trap]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TViewCamera_trap](
	[Camera_trap_Obj_pk] [int] NOT NULL,
	[id67@TCarac_cameratrap_Serial_number] [int] NULL,
	[id41@TCaracThes_Model] [int] NULL,
	[id41@TCaracThes_Model_Precision] [nvarchar](50) NULL,
	[id42@TCaracThes_Company] [int] NULL,
	[id42@TCaracThes_Company_Precision] [nvarchar](50) NULL,
	[id37@Comments] [nvarchar](250) NULL,
 CONSTRAINT [PK_TViewCamera_trap] PRIMARY KEY CLUSTERED 
(
	[Camera_trap_Obj_pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tthesaurus]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tthesaurus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Id_Type] [float] NULL,
	[Id_Parent] [int] NULL,
	[hierarchy] [nvarchar](500) NULL,
	[topic_fr] [nvarchar](255) NULL,
	[topic_en] [nvarchar](255) NULL,
	[definition_fr] [nvarchar](max) NULL,
	[definition_en] [nvarchar](max) NULL,
	[Reference] [nvarchar](255) NULL,
	[FK_Creator] [float] NULL,
	[Creation_date] [datetime] NULL,
	[FK_Contacts_Id_Modificateur] [nvarchar](255) NULL,
	[Date_heure_modification] [nvarchar](255) NULL,
	[available_EAU] [bit] NOT NULL,
	[available_Morocco] [bit] NOT NULL,
 CONSTRAINT [PK__Tthesaurus__69279377] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tthes_IDType] ON [dbo].[Tthesaurus] 
(
	[Id_Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_Tthes_topicEN] ON [dbo].[Tthesaurus] 
(
	[topic_en] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_Obj_UnEquipIndivWithTrxSat]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural Solutions
-- Create date: 03/03/2009
-- Description:    Procédure stockée permettant de déséquiper un individu de son équipement
-- =============================================
CREATE PROCEDURE[dbo].[sp_DB_Obj_UnEquipIndivWithTrxSat]
(
    @pkInd int, 
    @pkSat int = NULL, 
    @endDate varchar(100), 
    @idMonitoringStatus int = NULL, 
    @idSurveyType int = NULL, 
    @commentMonitoringStatus nvarchar(500) = NULL,
    @idStatusTrx int = NULL, 
    @nameStatusTrx nvarchar(100) = NULL,
    @DeathDate varchar(100) = NULL,
    @endCurrentStatus bit = 1
)
AS
BEGIN
    
    BEGIN TRAN transact
    SET DATEFORMAT 'DMY';
    DECLARE @myERROR int, @myRowCount int, @endDate2 datetime
    
    set @endDate2 = CONVERT(datetime, @endDate);
    
    --Mise a jour de la date de fin des caractéristiques relatives au transmitter
    UPDATE TObj_Carac_value SET end_date = @endDate2
    WHERE fk_carac IN (19,22,20) AND end_date IS NULL  AND fk_object = @pkInd
    
    --Insertion du nouveau status de l'individu
	IF not @DeathDate is NULL
	BEGIN   
		INSERT INTO [TObj_Carac_value] ([Fk_carac],[fk_object],[value],[begin_date],[creation_date])
		VALUES (36, @pkInd, @DeathDate ,@endDate2, CURRENT_TIMESTAMP)
		--VALUES (36, @pkInd, CONVERT(varchar, @endDate2, 103)+' 00:00:00',@endDate2, CURRENT_TIMESTAMP)    
	END 

    
     --Insertion du nouveau monitoring status
    IF (NOT @idMonitoringStatus IS NULL )
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
            (60, @pkInd, @idMonitoringStatus, (SELECT topic_en FROM Tthesaurus WHERE Id = @idMonitoringStatus),@endDate2, CURRENT_TIMESTAMP, NULL )       
    END 
     
    -- Mise a jour des anciens status => End date
    IF @endCurrentStatus = 1 
    BEGIN
		UPDATE [TObj_Carac_value] SET end_date = @endDate2, [comments] = @commentMonitoringStatus 
		WHERE Fk_carac=60 AND [fk_object] = @pkInd AND end_date IS NULL
		
		UPDATE [TObj_Carac_value] SET end_date = @endDate2
		WHERE Fk_carac=61 AND [fk_object] = @pkInd AND end_date IS NULL
    END
    
     --Insertion du nouveau survey type
    IF (NOT @idSurveyType IS NULL )
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
            (61, @pkInd, @idSurveyType, (SELECT topic_en FROM Tthesaurus WHERE Id = @idSurveyType),@endDate2, CURRENT_TIMESTAMP , NULL)       
    END  
    --Insertion du nouveau status du radio transmetteur
    IF ((NOT @idStatusTrx IS NULL ) AND (NOT @pkSat IS NULL ))
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
               (1, @pkSat, @idStatusTrx, @nameStatusTrx,@endDate2, CURRENT_TIMESTAMP, @commentMonitoringStatus )    
    END   
        
    SELECT @myERROR = @@ERROR, @myRowCount = @@ROWCOUNT
    IF @myERROR != 0 
    BEGIN
        RAISERROR('Error during data import', 16, 1)
        ROLLBACK TRAN transact
    END
    ELSE COMMIT TRAN transact
    

END



SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_Obj_UnEquipIndivWithTrxRadio]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_DB_Obj_UnEquipIndivWithTrxRadio]
(
    @pkInd int, 
    @pkRadio int = NULL,
    @endDate varchar(100), 
    @idMonitoringStatus int = NULL, 
    @idSurveyType int = NULL, 
    @commentMonitoringStatus nvarchar(500) = NULL,
    @idStatusTrx int = NULL, 
    @nameStatusTrx nvarchar(100) = NULL,
    @DeathDate varchar(100) = NULL,
    @endCurrentStatus bit = 1
)
AS
BEGIN
    
    BEGIN TRAN transact
    SET DATEFORMAT 'DMY';
    DECLARE @myERROR int, @myRowCount int, @endDate2 datetime
    
    set @endDate2 = CONVERT(datetime, @endDate);
    
    --Mise a jour de la date de fin des caractéristiques relatives au transmitter
    UPDATE TObj_Carac_value SET end_date = @endDate2
    WHERE fk_carac IN (3,4,5,6) AND end_date IS NULL  AND fk_object = @pkInd

    
    --Insertion du nouveau status de l'individu
	IF not @DeathDate is NULL
    BEGIN   
        INSERT INTO [TObj_Carac_value] ([Fk_carac],[fk_object],[value],[begin_date],[creation_date])
        VALUES (36, @pkInd, @DeathDate ,@endDate2, CURRENT_TIMESTAMP)
        --VALUES (36, @pkInd, CONVERT(varchar, @endDate2, 103)+' 00:00:00',@endDate2, CURRENT_TIMESTAMP)    
    END 
     
    -- Mise a jour des anciens status => End date
    IF @endCurrentStatus = 1 
    BEGIN
		UPDATE [TObj_Carac_value] SET end_date = @endDate2, [comments] = @commentMonitoringStatus 
		WHERE Fk_carac=60 AND [fk_object] = @pkInd AND end_date IS NULL
		
		UPDATE [TObj_Carac_value] SET end_date = @endDate2
		WHERE Fk_carac=61 AND [fk_object] = @pkInd AND end_date IS NULL
    END
    
     --Insertion du nouveau monitoring status
    IF (NOT @idMonitoringStatus IS NULL )
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
            (60, @pkInd, @idMonitoringStatus, (SELECT topic_en FROM Tthesaurus WHERE Id = @idMonitoringStatus),@endDate2, CURRENT_TIMESTAMP , NULL)       
    END 
     
     --Insertion du nouveau survey type
    IF (NOT @idSurveyType IS NULL )
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
            (61, @pkInd, @idSurveyType, (SELECT topic_en FROM Tthesaurus WHERE Id = @idSurveyType),@endDate2, CURRENT_TIMESTAMP , NULL)       
    END  
    
    --Insertion du nouveau status du radio transmetteur
    IF (( NOT @idStatusTrx IS NULL ) AND ( NOT @pkRadio IS NULL ))
    BEGIN
        INSERT INTO [TObj_Carac_value]
            ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
         VALUES
               (1, @pkRadio, @idStatusTrx, @nameStatusTrx,@endDate2, CURRENT_TIMESTAMP, @commentMonitoringStatus )    
    END   
    
    SELECT @myERROR = @@ERROR, @myRowCount = @@ROWCOUNT
    IF @myERROR != 0 
    BEGIN
        RAISERROR('Error during UnEquip', 16, 1)
        ROLLBACK TRAN transact
    END
    ELSE COMMIT TRAN transact

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_Obj_EquipIndivWithTrxSat]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural Solutions
-- Create date: 03/03/2009
-- Description:    Procédure stockée permettant d'équiper un individu avec un transmetteur Argos
--                    C'est à dire en dupliquant les caractéristiques des transmetteurs sur les individus
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_Obj_EquipIndivWithTrxSat]
(
    @pkInd int, 
    @pkSat int, 
    @beginDate varchar(100),
    @idMonitoringStatus int = NULL, 
    @idSurveyType int = NULL, 
    @commentMonitoringStatus nvarchar(500) = NULL,
    @idStatusTrx int = NULL, 
    @nameStatusTrx nvarchar(100) = NULL
)
AS
BEGIN
    
    BEGIN TRAN transact
    SET DATEFORMAT 'DMY';
    DECLARE @myERROR int, @myRowCount int, @beginDate2 datetime
    
    set @beginDate2 = CONVERT(datetime, @beginDate);

    --Vérification s'il existe un individu déjà équipé avec ce radio transmetteur
    IF (
        (SELECT count(*)
            FROM dbo.TViewIndividual AS ind
            JOIN dbo.TViewTrx_Sat AS sat
            ON (ind.id19@TCarac_PTT = sat.id19@TCarac_PTT)
            WHERE sat.Trx_Sat_Obj_PK = @pkSat
        ) >0)    
    BEGIN
        RAISERROR('Transmitter already deployed', 16, 1)
        ROLLBACK TRAN transact
    END    
    --Vérification que l'individu ne soit pas déjà équipé
    ELSE IF ((SELECT count(*) FROM dbo.TViewIndividual 
            WHERE (NOT id19@TCarac_PTT IS NULL 
                --OR NOT id20@TCaracThes_PTT_manufacturer IS NULL 
                --OR NOT id22@TCaracThes_PTT_model IS NULL
                )
                AND Individual_Obj_PK = @pkInd) >0)    
    BEGIN
        RAISERROR('Individual already equipped', 16, 1)
        ROLLBACK TRAN transact
    END    
    ELSE --Insertion des valeurs du radioTransmetteur pour l'individu concerné
    BEGIN
           
              
        INSERT INTO [TObj_Carac_value]([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
        SELECT 
            CASE Fk_carac
                WHEN 41 THEN 22 --PTT Model
                WHEN 42 THEN 20 --PTT Manuf
                ELSE Fk_carac   --PTT
            END AS Fk_carac, 
            @pkInd AS fk_object,[value],[value_precision], @beginDate2 AS begin_date, CURRENT_TIMESTAMP AS creation_date
        FROM TObj_Carac_value 
        WHERE fk_carac IN (19,41,42) AND end_date IS NULL  
        AND fk_object = @pkSat
	       
		
		 --Insertion du nouveau monitoring status
		IF (NOT @idMonitoringStatus IS NULL )
		BEGIN
			INSERT INTO [TObj_Carac_value]
				([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
			 VALUES
				(60, @pkInd, @idMonitoringStatus, (SELECT topic_en FROM Tthesaurus WHERE Id = @idMonitoringStatus),@beginDate2, CURRENT_TIMESTAMP , NULL)       
		END 
	     
		 --Insertion du nouveau survey type
		IF (NOT @idSurveyType IS NULL )
		BEGIN
			INSERT INTO [TObj_Carac_value]
				([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
			 VALUES
				(61, @pkInd, @idSurveyType, (SELECT topic_en FROM Tthesaurus WHERE Id = @idSurveyType),@beginDate2, CURRENT_TIMESTAMP , NULL)       
		END  
        
        --Insertion du nouveau status du radio transmetteur
        IF NOT @idStatusTrx IS NULL 
        BEGIN
            INSERT INTO [TObj_Carac_value]
                ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
             VALUES
                   (1, @pkSat, @idStatusTrx, @nameStatusTrx,@beginDate2, CURRENT_TIMESTAMP, @commentMonitoringStatus )    
        END   
        SELECT @myERROR = @@ERROR, @myRowCount = @@ROWCOUNT
        IF @myERROR != 0 
        BEGIN
            RAISERROR('Error during data import', 16, 1)
            ROLLBACK TRAN transact
        END
        COMMIT TRAN transact
    END
    

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_Obj_EquipIndivWithTrxRadio]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_DB_Obj_EquipIndivWithTrxRadio]
(
    @pkInd int, 
    @pkRadio int, 
    @beginDate varchar(100),
    @idMonitoringStatus int = NULL, 
    @idSurveyType int = NULL, 
    @commentMonitoringStatus nvarchar(500) = NULL,
    @idStatusTrx int = NULL, 
    @nameStatusTrx nvarchar(100) = NULL
)
AS
BEGIN
    
    BEGIN TRAN transact
    SET DATEFORMAT 'DMY';
    DECLARE @myERROR int, @myRowCount int, @beginDate2 datetime
    
    set @beginDate2 = CONVERT(datetime, @beginDate);

    --Vérification s'il existe un individu déjà équipé avec ce radio transmetteur
    IF --(
       -- (SELECT count(*)
       --     FROM dbo.TViewIndividual AS ind
       --     JOIN dbo.TViewTrx_Radio AS radio
       --     ON (ind.id5@TCarac_Transmitter_Frequency = radio.id5@TCarac_Transmitter_Frequency OR (ind.id5@TCarac_Transmitter_Frequency IS NULL AND radio.id5@TCarac_Transmitter_Frequency IS NULL))
       --     AND (ind.id6@TCarac_Transmitter_Serial_Number = radio.id6@TCarac_Transmitter_Serial_Number OR (ind.id6@TCarac_Transmitter_Serial_Number IS NULL AND radio.id6@TCarac_Transmitter_Serial_Number IS NULL))
       --     AND (ind.id3@TCaracThes_Transmitter_Shape = radio.id40@TCaracThes_Shape OR (ind.id3@TCaracThes_Transmitter_Shape IS NULL AND radio.id40@TCaracThes_Shape IS NULL))
       --     AND (ind.id4@TCaracThes_Transmitter_Model = radio.id41@TCaracThes_Model OR (ind.id4@TCaracThes_Transmitter_Model IS NULL AND radio.id41@TCaracThes_Model IS NULL))
       --     WHERE radio.Trx_Radio_Obj_PK = @pkRadio
       -- ) >0)
       (
        (SELECT count(*)
            FROM dbo.TViewIndividual AS ind
            JOIN dbo.TViewTrx_Radio AS radio
            ON (ind.id5@TCarac_Transmitter_Frequency = radio.id5@TCarac_Transmitter_Frequency)
            AND (ind.id6@TCarac_Transmitter_Serial_Number  = radio.id6@TCarac_Transmitter_Serial_Number )
            WHERE radio.Trx_Radio_Obj_PK = @pkRadio
        ) >0)
    BEGIN
        RAISERROR('Transmitter already deployed', 16, 1)
        ROLLBACK TRAN transact
    END    
    --Vérification que l'individu n'est pas déjà équipé
    ELSE IF ((SELECT count(*) FROM dbo.TViewIndividual 
            WHERE --NOT id5@TCarac_Transmitter_Frequency IS NULL 
                NOT id6@TCarac_Transmitter_Serial_Number IS NULL 
                --OR NOT id3@TCaracThes_Transmitter_Shape IS NULL 
                --OR NOT id4@TCaracThes_Transmitter_Model IS NULL
                AND Individual_Obj_PK = @pkInd) >0)    
    BEGIN
        RAISERROR('Individual already equipped', 16, 1)
        ROLLBACK TRAN transact
    END    
    ELSE --Insertion des valeurs du radioTransmetteur pour l'individu concerné
    BEGIN
    
        INSERT INTO [TObj_Carac_value]([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
        SELECT 
            CASE Fk_carac
                WHEN 40 THEN 3
                WHEN 41 THEN 4
                ELSE Fk_carac
            END AS Fk_carac, @pkInd AS fk_object,[value],[value_precision], @beginDate2 AS begin_date, CURRENT_TIMESTAMP AS creation_date
        FROM TObj_Carac_value WHERE fk_carac IN (41, 40, 5, 6) AND end_date IS NULL  AND fk_object = @pkRadio
                 
		
		 --Insertion du nouveau monitoring status
		IF (NOT @idMonitoringStatus IS NULL )
		BEGIN
			INSERT INTO [TObj_Carac_value]
				([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
			 VALUES
				(60, @pkInd, @idMonitoringStatus, (SELECT topic_en FROM Tthesaurus WHERE Id = @idMonitoringStatus),@beginDate2, CURRENT_TIMESTAMP , NULL)       
		END 
	     
		 --Insertion du nouveau survey type
		IF (NOT @idSurveyType IS NULL )
		BEGIN
			INSERT INTO [TObj_Carac_value]
				([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
			 VALUES
				(61, @pkInd, @idSurveyType, (SELECT topic_en FROM Tthesaurus WHERE Id = @idSurveyType),@beginDate2, CURRENT_TIMESTAMP , NULL)       
		END  

        --Insertion du nouveau status du radio transmetteur
        IF NOT @idStatusTrx IS NULL 
        BEGIN
            INSERT INTO [TObj_Carac_value]
                ([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date],[comments])
             VALUES
                   (1, @pkRadio, @idStatusTrx, @nameStatusTrx,@beginDate2, CURRENT_TIMESTAMP, @commentMonitoringStatus )    
        END   
        
        SELECT @myERROR = @@ERROR, @myRowCount = @@ROWCOUNT
        IF @myERROR != 0 
        BEGIN
            RAISERROR('Error during VHF Equipment', 16, 1)
            ROLLBACK TRAN transact
        END
        COMMIT TRAN transact
    END
    

END
GO
/****** Object:  Table [dbo].[TThemeEtude]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TThemeEtude](
	[TProt_PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Caption] [nvarchar](50) NULL,
	[Definition_fr] [nvarchar](250) NULL,
	[Bibliography] [nvarchar](250) NULL,
	[Creation_date] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[Actif] [bit] NOT NULL,
	[NeedGeom] [bit] NOT NULL,
	[Definition_en] [nvarchar](250) NULL,
 CONSTRAINT [aaaaaTThemeEtude_PK] PRIMARY KEY NONCLUSTERED 
(
	[TProt_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [protocole_ID] ON [dbo].[TThemeEtude] 
(
	[TProt_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTemp_VHF]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTemp_VHF](
	[FQ] [float] NULL,
	[NS] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTemp_Hunting_bag_december_2013]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTemp_Hunting_bag_december_2013](
	[BreedingRing] [nvarchar](255) NULL,
	[DeathDate] [datetime] NULL,
	[Ind_Id] [float] NULL,
	[ID_Remains] [float] NULL,
	[Name_Remains] [nvarchar](255) NULL,
	[ID_Taxon] [float] NULL,
	[Name_Taxon] [nvarchar](255) NULL,
	[ID_Time] [float] NULL,
	[Time] [nvarchar](255) NULL,
	[Id_Reason] [float] NULL,
	[Name_Reason] [nvarchar](255) NULL,
	[Sure] [float] NULL,
	[Commentaires] [nvarchar](255) NULL,
	[Station_ID] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TQryAdminDB]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TQryAdminDB](
	[TQryAdminDB_ID] [int] IDENTITY(1,1) NOT NULL,
	[TQryAdminDB_sp_name] [nvarchar](300) NULL,
	[TQryAdminDB_Layer_Name] [nvarchar](50) NULL,
	[TQryAdminDB_Description] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocole]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocole](
	[TTheEt_PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Relation] [nvarchar](255) NULL,
	[Caption] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NOT NULL,
	[Creation_date] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[Support] [nvarchar](250) NULL,
 CONSTRAINT [aaaaaTProtocole_PK] PRIMARY KEY NONCLUSTERED 
(
	[TTheEt_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TTheEt_PK_ID] ON [dbo].[TProtocole] 
(
	[TTheEt_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Pr_SelectProtocolesWithStationX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 12/05/2009
-- Description:	Procédure qui renvoie la liste des protocoles d'une station en tenant compte des protocoles imbriqués : 
-- Individual + Vertebrate group = Monitored vertebrate group 
-- =============================================
CREATE PROCEDURE[dbo].[sp_Sys_Pr_SelectProtocolesWithStationX]
	
	-- @Fk_TSta : identifiant de la station d'intéret
	@Fk_TSta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), prlibelle nvarchar(200), pk int)

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs
	DECLARE c CURSOR  FOR 
		SELECT tables.name, pr.Caption
		FROM sysobjects tables, dbo.TProtocole pr
		WHERE tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%' AND tables.name = 'TProtocol_'+pr.relation AND pr.active=1;

	--Pour chaque protocole
	open c
		fetch c into  @tablename, @prname
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @sql= 'SELECT  '''+@tablename+''', '''+@prname+''', PK FROM '+@tablename+' WHERE FK_TSta_ID= '+CAST (@Fk_TSta AS VARCHAR);
				INSERT INTO #tabletemp EXEC (@sql)
			fetch c into @tablename, @prname
			end
	close c
	deallocate  c
	
	-----Monitored Vertebrate group
	-- Test si il y a un prototocle Individual qui est en réalité Monitored vertebrate group
	UPDATE #tabletemp SET prlibelle = 'Vertebrate group' WHERE pk IN (SELECT PK FROM TProtocol_Vertebrate_individual WHERE PK IN (SELECT PK FROM #tabletemp WHERE tablename = 'TProtocol_Vertebrate_individual') AND NOT Fk_group IS NULL ) AND tablename = 'TProtocol_Vertebrate_individual' 

	
	SELECT DISTINCT 0, prlibelle FROM #tabletemp
	
	DROP TABLE #tabletemp
END
GO
/****** Object:  Table [dbo].[TProjection]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProjection](
	[TPj_SysCoord_Name] [nvarchar](50) NOT NULL,
	[TPj_Parameters] [nvarchar](max) NOT NULL,
	[TPj_Code_EPSG] [int] NULL,
 CONSTRAINT [PK_TProjection] PRIMARY KEY CLUSTERED 
(
	[TPj_SysCoord_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminDB_UpdateStatus_Postrelease]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ====================================================================================
-- Author:		Natural Solutions
-- Create date: 11/04/2013
-- Description:	Mise a jour des statuts des individus ayant un statut postrelease
--		Si date begin Status + 91 
--			Devient Breeding si female et current date entre 01/02 et 15/07
--			Sinon Devient Tracking si male
-- ====================================================================================
CREATE PROCEDURE[dbo].[sp_AdminDB_UpdateStatus_Postrelease]
AS
BEGIN

	DECLARE @SQL AS nvarchar(MAX)
	
	------------------------------------------------------------
	--- Femelle Postrelease entre le 01/02 ett le 15/07
	SET @SQL = 'INSERT INTO [TObj_Carac_value]
	([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
	SELECT DISTINCT  61 , p.Individual_Obj_PK, 1000459, ''Breeding'',theoricEndDate, current_timestamp
	FROM (
		SELECT Individual_Obj_PK, id30@TCaracThes_Sex_Precision, currentSurveyType.value, currentSurveyType.value_precision, begin_date, DATEADD( day, 91,begin_date) AS theoricEndDate
		FROM TViewIndividual
		JOIN (SELECT * FROM  TObj_Carac_value WHERE Fk_carac = 61 AND end_date IS NULL) currentSurveyType
		ON Individual_Obj_PK = fk_object
		WHERE id61@TCaracThes_Survey_type_Precision = ''Post-release''
			AND  DATEADD( day, 91,begin_date) <= CURRENT_TIMESTAMP
			AND id30@TCaracThes_Sex_Precision = ''female''
			AND 
				dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) >=CAST(''2050-02-01'' AS DATE)
				AND 
				dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) <=CAST(''2050-07-15'' AS DATE)
	) p'
	EXEC (@SQL)
	------------------------------------------------------------
	---Autre postrelease
	SET @SQL = 'INSERT INTO [TObj_Carac_value]
	([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
	SELECT DISTINCT  61 , p.Individual_Obj_PK, 1000457, ''Tracking'',theoricEndDate, current_timestamp
	FROM (
		SELECT Individual_Obj_PK, id30@TCaracThes_Sex_Precision, currentSurveyType.value, currentSurveyType.value_precision, begin_date, DATEADD( day, 91,begin_date) AS theoricEndDate
		FROM TViewIndividual
		JOIN (SELECT * FROM  TObj_Carac_value WHERE Fk_carac = 61 AND end_date IS NULL) currentSurveyType
		ON Individual_Obj_PK = fk_object
		WHERE id61@TCaracThes_Survey_type_Precision = ''Post-release''
			AND  DATEADD( day, 91,begin_date) <= CURRENT_TIMESTAMP
			AND NOT (
				id30@TCaracThes_Sex_Precision = ''female''
				AND 
				dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) >=CAST(''2050-02-01'' AS DATE)
				AND 
				dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) <=CAST(''2050-07-15'' AS DATE)
		)
	) p
	'


	EXEC (@SQL)
		    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminDB_UpdateStatus_BreedingTracking]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ====================================================================================
-- Author:		Natural Solutions
-- Create date: 11/04/2013
-- Description:	Mise a jour des statuts des individus 
-- Si status => Breeding Devient Tracking
--	Si male et que et current date entre 16/06 et 14/01 => begin date = 16/06
--	Si female et que et current date entre 16/07 et 31/01 => begin date = 16/07
-- Si status => Tracking Devient Breeding entre 01/02 et 15/07 => begin date = 01/02
-- ====================================================================================
CREATE PROCEDURE[dbo].[sp_AdminDB_UpdateStatus_BreedingTracking]
AS
BEGIN

	DECLARE @SQL AS nvarchar(MAX)
	
	------------------------------------------------------------
	---Breeding to tracking
	SET @SQL = 'INSERT INTO [TObj_Carac_value]([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
		SELECT DISTINCT  61 , p.Individual_Obj_PK, 1000457, ''Tracking'',
		CASE 
			WHEN id30@TCaracThes_Sex_Precision = ''female'' Then CAST(CAST(year(CURRENT_TIMESTAMP) AS varchar)+''-07-16'' AS DATE)
			WHEN id30@TCaracThes_Sex_Precision = ''male'' Then CAST(CAST(year(CURRENT_TIMESTAMP) AS varchar)+''-06-16'' AS DATE)
		END beginDate, current_timestamp
		FROM (
			SELECT Individual_Obj_PK, id30@TCaracThes_Sex_Precision, currentSurveyType.value, currentSurveyType.value_precision, begin_date
			FROM TViewIndividual
			JOIN (SELECT * FROM  TObj_Carac_value WHERE Fk_carac = 61 AND end_date IS NULL) currentSurveyType
			ON Individual_Obj_PK = fk_object
			WHERE id61@TCaracThes_Survey_type_Precision = ''Breeding''
			AND ((	id30@TCaracThes_Sex_Precision = ''female''	AND (dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) >=CAST(''2050-07-16'' AS DATE) OR dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) <=CAST(''2050-01-31'' AS date)))
			OR(id30@TCaracThes_Sex_Precision = ''male''AND (dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) >=CAST(''2050-06-16'' AS DATE)	OR dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) <=CAST(''2050-01-11'' AS date))))
		) p'
	EXEC (@SQL)
	
	-------------------------------------------------------------------------
	--- tracking to breeding
	SET @SQL = 'INSERT INTO [TObj_Carac_value]([Fk_carac],[fk_object],[value],[value_precision],[begin_date],[creation_date])
		SELECT DISTINCT  61 , p.Individual_Obj_PK, 1000457, ''Tracking'', CAST(CAST(year(CURRENT_TIMESTAMP) AS varchar)+''-01-02'' AS DATE) AS beginDate, 
		current_timestamp
		FROM (
		SELECT Individual_Obj_PK, id30@TCaracThes_Sex_Precision, currentSurveyType.value, currentSurveyType.value_precision, begin_date
		FROM TViewIndividual
		JOIN (SELECT * FROM  TObj_Carac_value WHERE Fk_carac = 61 AND end_date IS NULL) currentSurveyType
		ON Individual_Obj_PK = fk_object
		WHERE id61@TCaracThes_Survey_type_Precision = ''Tracking''
		AND id30@TCaracThes_Sex_Precision = ''female''
		AND dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) >=CAST(''2050-02-01'' AS date)
		AND dateadd(year, (2050 - year(CURRENT_TIMESTAMP)), CURRENT_TIMESTAMP) <=CAST(''2050-07-15'' AS date))p'


	EXEC (@SQL)
		    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminDB_DisableNestSites]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ====================================================================================
-- Author:		Natural Solutions
-- Create date: 24/01/2011
-- Description:	Désactive les sites suivis de type nest(18990)
--				qui ont plus de 30 jours
-- ====================================================================================
CREATE PROCEDURE[dbo].[sp_AdminDB_DisableNestSites]
AS
BEGIN

	DECLARE @SQL AS nvarchar(MAX)
	
	SET @SQL = 'UPDATE TMonitoredStations SET active = 0
			FROM TMonitoredStations
			JOIN  (
				SELECT     
					[Site_name] AS Monitored_site, DATEDIFF(DAY, MIN(DATE), CURRENT_TIMESTAMP) AS [Nb de jours]
				FROM    dbo.V_Qry_Nest_AllStations_with_relatedMother_data
				GROUP BY [Site_name]
				HAVING (DATEDIFF(DAY, MIN(DATE), CURRENT_TIMESTAMP) > 30)
			) nbjours
			ON Name = nbjours.Monitored_site
			WHERE   (Active <> 0) AND id_Type = 18990'


EXEC (@SQL)
		    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminDB_DisableMonitoredSites]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ====================================================================================
-- Author:		Natural Solutions
-- Create date: 24/01/2011
-- Description:	Désactive les sites suivis de type nest(18990) ou display site(25640)
--				antérieur au premier janvier de l'année en cours  
-- ====================================================================================
CREATE PROCEDURE[dbo].[sp_AdminDB_DisableMonitoredSites]
AS
BEGIN

	DECLARE @SQL AS nvarchar(MAX)
	
	SET @SQL = 'UPDATE [ECWP-eReleveData].[dbo].[TMonitoredStations]
				SET [Active] = 0
				WHERE ([id_Type]=18990 or [id_Type]=25640) AND  [Active] = 1 
				AND [Creation_date] < DATEADD(yy, DATEDIFF(yy,0,getdate()), 0)'


EXEC (@SQL)
		    
END
GO
/****** Object:  StoredProcedure [dbo].[pr_V_AllViews_SelectAll]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_V_AllViews_SelectAll]
	@iErrorCode int OUTPUT
AS
-- SELECT all rows from the view.
SELECT
	id,NAME,crdate
FROM [dbo].[V_AllViews] ORDER BY name
-- Get the Error Code for the statement just executed.
SELECT @iErrorCode=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_V_AllViews_run]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_V_AllViews_run]
	@id int,
	@iErrorCode int OUTPUT
AS

DECLARE @Vname AS VARCHAR(max)
DECLARE @xtype AS VARCHAR(max)
-- SELECT all rows from the view.
SELECT
	@Vname = NAME, @xtype  = xtype
FROM [ECWP-eReleveData].dbo.[V_AllViews] WHERE id =@id

IF @xtype = 'V'

	EXEC ('select * from [ECWP-eReleveData].dbo.' + @Vname)
ELSE	
	EXEC ( @Vname)


-- Get the Error Code for the statement just executed.
SELECT @iErrorCode=@@ERROR
GO
/****** Object:  Table [dbo].[geometry_columns]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[geometry_columns](
	[f_table_catalog] [varchar](128) NOT NULL,
	[f_table_schema] [varchar](128) NOT NULL,
	[f_table_name] [varchar](256) NOT NULL,
	[f_geometry_column] [varchar](256) NOT NULL,
	[coord_dimension] [int] NOT NULL,
	[srid] [int] NOT NULL,
	[geometry_type] [varchar](30) NOT NULL,
 CONSTRAINT [geometry_columns_pk] PRIMARY KEY CLUSTERED 
(
	[f_table_catalog] ASC,
	[f_table_schema] ASC,
	[f_table_name] ASC,
	[f_geometry_column] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[geo_utm_grid_20x20_km]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[geo_utm_grid_20x20_km](
	[ogr_fid] [int] IDENTITY(1,1) NOT NULL,
	[ogr_geometry] [geometry] NOT NULL,
	[code] [varchar](6) NULL,
	[utm_zone] [numeric](4, 0) NULL,
	[xmin_wgs84] [numeric](19, 11) NULL,
	[ymin_wgs84] [numeric](19, 11) NULL,
	[xmax_wgs84] [numeric](19, 11) NULL,
	[ymax_wgs84] [numeric](19, 11) NULL,
	[intrv_area] [varchar](50) NULL,
	[x] [numeric](19, 11) NULL,
	[y] [numeric](19, 11) NULL,
	[x_ddm] [varchar](50) NULL,
	[y_ddm] [varchar](50) NULL,
 CONSTRAINT [PK_utm_grid_20x20_km] PRIMARY KEY CLUSTERED 
(
	[ogr_fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[geo_CNTRIES_and_RENECO_MGMTAreas]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_CNTRIES_and_RENECO_MGMTAreas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OBJECTID] [bigint] NULL,
	[Place] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[SHAPE_Leng] [real] NULL,
	[SHAPE_Area] [real] NULL,
	[geom] [geometry] NULL,
	[valid_geom] [geometry] NULL,
	[Reneco_Country] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_sys_GetCurrentTimeStamp]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- Author:     Natural Solutions
-- Create date: 15/12/2010
-- Description:    Procedure renvoyant la date system du server
-- =============================================
CREATE FUNCTION [dbo].[fnc_sys_GetCurrentTimeStamp] ()
RETURNS TABLE 
AS
RETURN (

    SELECT  CURRENT_TIMESTAMP AS nowD 
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_user_Get_ClutchHatchDate]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_user_Get_ClutchHatchDate](@Weight AS decimal(9,2),
											   @Length as decimal(9,2), @Width as decimal(9,2),
											    @StaDate as datetime, @species as nvarchar(250))
  RETURNS @ClutchHatchDates TABLE(hatchDate1 datetime, hatchDate2 datetime,
                                  clutchDate1 datetime, clutchDate2 datetime,
                                  Volume float, Density float, wf float, wp float,
                                  IncubStage1 float, IncubStage2 float,DaysBefHatch float,
                                  [Weight] decimal(9,2), [Length] decimal(9,2), [Width] decimal(9,2))
AS
BEGIN
	
	declare @hatchDate1 as datetime, @hatchDate2 as datetime, @clutchDate1 as datetime,
	@clutchDate2 as datetime, @ObsDate as datetime
	
	declare @Volume as float, @Density as float,
		@wf as float, @wp as float, @IncubStage1 as float, 
			@IncubStage2 as float,
			@DaysBeforeHatch as float

	 if (@Weight is null or @Width is null or @Length is null or @StaDate is null) or
	    (@Weight = 0 or @Width = 0 or @Length = 0)
		insert into @ClutchHatchDates select null, null, null, null, null
			, null, null, null, null, null, null
			, null, null, null	
	else
	BEGIN
		set @ObsDate = CAST(FLOOR(CAST(@StaDate AS float)) AS datetime)
		set @Volume = (@Length/10)*(@Width/10)*(@Width/10)*0.51
		set @Density = @Weight/@Volume
		set @wf = 0.00055*(@Length*@Width*@Width)
		set @wp = @wf*0.83
		set @IncubStage1 = (@wf - @Weight)/(@wf - @wp) * 23
				
		IF (@species = 'Asian Houbara Bustard' ) 
		BEGIN
			set @IncubStage2 = 120.667-(111.111*@Density)
			set @hatchDate1 = DATEADD(day, round(23-@IncubStage2,0), @ObsDate)
		END
		ELSE
		BEGIN
			set @DaysBeforeHatch = (108.79  * @Density) - 97.708
			set @hatchDate1 = DATEADD(day, round(@DaysBeforeHatch,0), @ObsDate)
		END
	
		set @hatchDate2 = DATEADD(day, round((23 - @IncubStage1),0), @ObsDate)
		set @clutchDate1 = DATEADD(day, -23, @hatchDate1)
		set @clutchDate2 = DATEADD(day, -23, @hatchDate2)
		
		insert into @ClutchHatchDates select @hatchDate1, @hatchDate2, @clutchDate1, @clutchDate2
			, @Volume, @Density, @wf, @wp, @IncubStage1,  @IncubStage2, @DaysBeforeHatch
			, @Weight ,@Length , @Width 
		
	END
RETURN 
END
GO
/****** Object:  Table [dbo].[_Temp_status2alter]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Temp_status2alter](
	[Id_Ind] [float] NULL,
	[Id_trx_radio] [nvarchar](255) NULL,
	[Name_object_type] [nvarchar](255) NULL,
	[begin_date] [datetime] NULL,
	[New_MonStatus] [nvarchar](255) NULL,
	[New_SurveyType] [nvarchar](255) NULL,
	[New_Trx_status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_DeleteExportUserTable]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 18/10/2012
-- Description:	Procedure permettant de supprimer les tables en vue d'un export
-- =============================================
CREATE  PROCEDURE [dbo].[sp_DB_DeleteExportUserTable] 
	--identifiant de la station du relaché
	@TableName nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @sql nvarchar(1000) ;
	DECLARE @exportTableName nvarchar(200);

	SET @exportTableName = 'zzUserExport'+@TableName;
	
	IF OBJECT_ID(@exportTableName,'U') IS NOT NULL
	BEGIN
		SELECT @SQL ='DROP TABLE '+@exportTableName
		EXEC ( @SQL )
	END 
	IF OBJECT_ID(@exportTableName+'_Geo','U') IS NOT NULL
	BEGIN
		SELECT @SQL ='DROP TABLE '+@exportTableName+'_Geo'
		EXEC ( @SQL )
	END 
	
END
GO
/****** Object:  Table [dbo].[TMapExtentTreeView]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMapExtentTreeView](
	[NumEntite] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NumEntiteS] [int] NULL,
	[EntiteCourt] [nvarchar](50) NULL,
	[Entite] [nvarchar](90) NULL,
	[TypeEntite] [int] NULL,
	[X1] [float] NULL,
	[Y1] [float] NULL,
	[X2] [float] NULL,
	[Y2] [float] NULL,
	[Bold] [bit] NOT NULL,
 CONSTRAINT [aaaaaTMapExtentTreeView_PK] PRIMARY KEY NONCLUSTERED 
(
	[NumEntite] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NumEntitesS] ON [dbo].[TMapExtentTreeView] 
(
	[NumEntiteS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TLogErrors]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TLogErrors](
	[TLogE_Pk] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Error_date] [datetime] NOT NULL,
	[Computer_name] [nvarchar](250) NULL,
	[Windows_version] [nvarchar](250) NULL,
	[Service_pack_version] [nvarchar](250) NULL,
	[Form_name] [nvarchar](250) NULL,
	[Fk_user] [int] NULL,
	[Error_number] [int] NULL,
	[Error_source] [nvarchar](250) NULL,
	[Error_description] [text] NULL,
 CONSTRAINT [aaaaaTLogErrors_PK] PRIMARY KEY NONCLUSTERED 
(
	[TLogE_Pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_Thesaurus]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_Thesaurus](
	[Temporary_hierarchy] [nvarchar](255) NULL,
	[Value_EN] [nvarchar](255) NULL,
	[Definition_EN] [nvarchar](255) NULL,
	[Value_FR] [nvarchar](255) NULL,
	[Definition_FR] [nvarchar](255) NULL,
	[new_id] [int] IDENTITY(1032620,1) NOT NULL,
	[new_hierarchy] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_Global_Zoning]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Global_Zoning](
	[OBJECTID] [float] NULL,
	[Country] [nvarchar](255) NULL,
	[Place] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TArgosReports]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TArgosReports](
	[TArgRep_PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[TArgRep_Import_Date] [datetime] NOT NULL,
	[TArgRep_FK_User] [int] NOT NULL,
	[TArgRep_UserLogin] [nvarchar](50) NULL,
	[TArgRep_DSFile] [nvarchar](64) NULL,
	[TArgRep_DIAGFile] [nvarchar](64) NULL,
	[TArgRep_TotalStations] [int] NOT NULL,
	[TArgRep_ArgosStations] [int] NOT NULL,
	[TArgRep_GPSStations] [int] NOT NULL,
	[TArgRep_EngData] [int] NOT NULL,
	[TArgRep_EngLinked] [int] NOT NULL,
	[TArgRep_DSFilePath] [nvarchar](255) NULL,
	[TArgRep_DIAGFilePath] [nvarchar](255) NULL,
 CONSTRAINT [PK_TArgosReports] PRIMARY KEY CLUSTERED 
(
	[TArgRep_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SYS_Disk_usage_by_Table]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SYS_Disk_usage_by_Table]
AS
SELECT TOP (100) PERCENT OBJECT_NAME(p.object_id) AS Table_name, SUM(CASE WHEN (p.index_id < 2) AND (au.type = 1) THEN p.rows ELSE 0 END) AS Nb_records, 
               SUM(au.total_pages) * 8 AS Total_kB, SUM(CASE WHEN au.type <> 1 THEN au.used_pages WHEN p.index_id < 2 THEN au.data_pages ELSE 0 END) * 8 AS Data_kB, 
               (SUM(au.used_pages) - SUM(CASE WHEN au.type <> 1 THEN au.used_pages WHEN p.index_id < 2 THEN au.data_pages ELSE 0 END)) * 8 AS Index_kB, 
               (SUM(au.total_pages) - SUM(au.used_pages)) * 8 AS Unused_kB
FROM  sys.partitions AS p INNER JOIN
               sys.allocation_units AS au ON p.partition_id = au.container_id INNER JOIN
               sys.objects AS o ON p.object_id = o.object_id
WHERE (o.type = 'U')
GROUP BY p.object_id
ORDER BY Table_name
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[32] 2[30] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[23] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[50] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 148
               Right = 296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "au"
            Begin Extent = 
               Top = 7
               Left = 344
               Bottom = 244
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "o"
            Begin Extent = 
               Top = 7
               Left = 602
               Bottom = 148
               Right = 834
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 3012
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 8628
         Alias = 2352
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1356
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SYS_Disk_usage_by_Table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SYS_Disk_usage_by_Table'
GO
/****** Object:  View [dbo].[V_Qry_ArgosGSM_lastData_withFirstCaptRelData_GeoCountry]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_ArgosGSM_lastData_withFirstCaptRelData_GeoCountry] AS
SELECT V_Qry_ArgosGSM_lastData_withFirstCaptRelData.*, country.country AS country
  FROM  [geo_CNTRIES_and_RENECO_MGMTAreas] as country
  JOIN V_Qry_ArgosGSM_lastData_withFirstCaptRelData
  ON lastStageom.STIntersects(valid_geom) = 1
GO
/****** Object:  Table [dbo].[spatial_ref_sys]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[spatial_ref_sys](
	[srid] [int] NOT NULL,
	[auth_name] [varchar](256) NULL,
	[auth_srid] [int] NULL,
	[srtext] [varchar](2048) NULL,
	[proj4text] [varchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[srid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Thesaurus_SelectOneNode]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Natural Solutions
-- Create date: 19/02/2009
-- Description: Procedure renvoyant l'identifiant et le libellé d'un noeud donné
-- =============================================

CREATE PROCEDURE[dbo].[sp_Sys_Thesaurus_SelectOneNode]
	-- @idParent : identifiant du noeud de référence
	-- @langue : langue de l'utilisateur
	@idElem int =0,
	@langue char(10) = 'fr'
AS

BEGIN
	SET NOCOUNT ON;

	EXEC ('SELECT Tthesaurus.ID, Tthesaurus.topic_'+@langue+' AS topic FROM Tthesaurus WHERE Tthesaurus.ID='+@idElem)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Thesaurus_SelectAllChildrens]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Natural Solutions
-- Create date: 19/02/2009
-- Description: Procedure renvoyant tous les enfants du thésaurus d'un noeud donné
-- =============================================

CREATE PROCEDURE[dbo].[sp_Sys_Thesaurus_SelectAllChildrens]
-- @idParent : identifiant du noeud de référence
-- @langue : langue de l'utilisateur

@idParent int =0,
@langue char(10) = 'fr',
@site char(20) = 'Morocco'
AS
BEGIN

	SET NOCOUNT ON;

	-- Lance la requête
	DECLARE @sql nvarchar(1000)
	SET @sql = 'SELECT Tthesaurus.ID, Tthesaurus.topic_'+@langue+' AS topic, Tthesaurus.Id_Parent FROM Tthesaurus WHERE Tthesaurus.Id_Parent='+CAST(@idParent AS nvarchar(Max))

	IF NOT @site = 'All'
	BEGIN
		SET @sql = @sql + ' AND available_'+@site+'=1'
	END

	EXEC ( @sql + ' order by hierarchy')
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Thesaurus_Defintion]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- Author: Natural Solutions

-- Create date: 19/02/2009

-- Description: Procedure renvoyant tous les enfants du thésaurus d'un noeud donné

-- =============================================

CREATE PROCEDURE[dbo].[sp_Sys_Thesaurus_Defintion]
-- @idParent : identifiant du noeud de référence
-- @langue : langue de l'utilisateur
@idElem int =0,
@langue char(10) = 'fr'
AS

BEGIN

-- SET NOCOUNT ON added to prevent extra result sets from

-- interfering with SELECT statements.

SET NOCOUNT ON;

-- Insert statements for procedure here

EXEC ('SELECT Tthesaurus.definition_'+@langue+' AS definition FROM Tthesaurus WHERE Tthesaurus.ID='+@idElem)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_ArgosEngineeringData_UpdateNearestStation]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural Solutions
-- Create date: 13/12/2010
-- Description: Procédure permettant de calculer la station la plus proche pour les données d'engenering
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_ArgosEngineeringData_UpdateNearestStation]
    @Onlynull bit = -1
AS
BEGIN

    SET NOCOUNT ON;


    DECLARE @sqlWhere nvarchar(500), @SQL AS nvarchar(MAX);
    SET @sqlWhere = ''
    IF @Onlynull = 1
    BEGIN
        SET @sqlWhere =  'WHERE TarE_Nearest_FK_TSTA_ID IS NULL'
    END

    SET @SQL = 'UPDATE [TArgosEngineeringData] SET TarE_Nearest_FK_TSTA_ID = TSTA_PK_ID
        FROM (
            SELECT [TArE_PK_ID], nearestPos.TSTA_PK_ID
            FROM (
                SELECT [TArE_PK_ID], Individual_Obj_PK, [TArE_TXDATE], [TArE_ACT_CNT], [TArE_PTT]
                FROM (SELECT * FROM [TArgosEngineeringData] '+@sqlWhere+') [TArgosEngineeringData]
                JOIN (
                   SELECT TObj_Carac_value.fk_object Individual_Obj_PK , TObj_Carac_value.value AS  PTT , TObj_Carac_value.begin_date, TObj_Carac_value.end_date
                    FROM (SELECT * FROM TObj_Carac_value WHERE fk_carac=19 ) AS TObj_Carac_value
                    JOIN ( SELECT fk_object FROM dbo.TObj_Carac_value WHERE value = ''1'' AND fk_carac=54) AS indiv
                    ON TObj_Carac_value.fk_object = indiv.fk_object
                ) IndividualPTTCarac
                ON [TArE_PTT] = IndividualPTTCarac.PTT  AND [TArE_TXDATE] BETWEEN IndividualPTTCarac.begin_date AND COALESCE (IndividualPTTCarac.end_date, CURRENT_TIMESTAMP)
                WHERE NOT [TArE_TXDATE] IS NULL
            ) EngineeringData
            CROSS APPLY
                fn_usr_qry_GetNearestArgosPositionForIndividual(EngineeringData.Individual_Obj_PK, [TArE_TXDATE]) AS nearestPos
        ) nearestStation
        WHERE [TArgosEngineeringData].[TArE_PK_ID] = nearestStation.[TArE_PK_ID]'
    

    EXEC sp_Executesql @SQL

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Ind_SelectProtocolesWhithIndividualX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 13/01/2009
-- Description:	Fonction renvoyant la liste des protocoles réalisés sur un individu
-- =============================================
CREATE PROCEDURE[dbo].[sp_Sys_Ind_SelectProtocolesWhithIndividualX] 
	-- @Fk_TInd : identifiant de l'individu d'intéret
	@Fk_TInd int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), prlibelle nvarchar(200), pk int)

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs ayant un champ FK_TInd_ID
	DECLARE c CURSOR  FOR 
		SELECT tables.name
		FROM 
			dbo.syscolumns col, 
			sysobjects tables
		WHERE 
			tables.id = col.id AND tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%'AND col.name ='FK_TInd_ID';

	--Pour chaque protocole
	open c
		fetch c into  @tablename
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @prname  = REPLACE(@tablename, '_', ' ');
				SET @prname  = RIGHT(@prname, LEN(@prname) -10);
				SET @sql= 'SELECT  '''+@tablename+''', '''+@prname+''', PK FROM '+@tablename+' WHERE FK_TInd_ID= '+CAST (@Fk_TInd AS VARCHAR);
				INSERT INTO #tabletemp EXEC (@sql);
			fetch c into @tablename
			end
	close c
	deallocate  c
	--Retour de la procédure
	SELECT tablename, prlibelle, count(*) AS nb FROM #tabletemp GROUP BY tablename, prlibelle;
	DROP TABLE #tabletemp;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Ind_DeleteProtocolesWhithIndividualX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 19/01/2009
-- Description:	Fonction supprimant les protocoles associés à un individu
-- =============================================
CREATE PROCEDURE[dbo].[sp_Sys_Ind_DeleteProtocolesWhithIndividualX] 
	-- @Fk_TInd : identifiant de l'individu d'intéret
	@Fk_TInd int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), prlibelle nvarchar(200), pk int)

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs ayant un champ FK_TInd_ID
	DECLARE c CURSOR  FOR 
		SELECT tables.name
		FROM 
			dbo.syscolumns col, 
			sysobjects tables
		WHERE 
			tables.id = col.id AND tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%'AND col.name ='FK_TInd_ID';

	--Pour chaque protocole
	open c
		fetch c into  @tablename
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @prname  = REPLACE(@tablename, '_', ' ');
				SET @prname  = RIGHT(@prname, LEN(@prname) -10);
				SET @sql= 'DELETE FROM '+@tablename+' WHERE FK_TInd_ID= '+CAST (@Fk_TInd AS VARCHAR);
				EXEC (@sql);
			fetch c into @tablename
			end
	close c
	deallocate  c
	DROP TABLE #tabletemp;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_ExportRefreshGeoFromTable]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Sys_ExportRefreshGeoFromTable]
@Table nvarchar(100)
as
BEGIN
	DECLARE @sql nvarchar(1000) ;
	set  @sql = 'delete from ' + @Table + '_Geo '; 
	exec (@sql);
	set @sql = 'insert into ' + @Table + '_Geo (geoLat, geoLon) ' +
			'select distinct round(LAT,3), round(LON,3) from ' + @Table;
	exec(@sql);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_testIfPrExistForIndividualInAnOtherStation]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solution
-- Create date: 17/03/2010
-- Description:	Fonction renvoyant le nombre de protocole d'un individu à l'exception d'une station 
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_testIfPrExistForIndividualInAnOtherStation]
(
	@FK_TIND_ID int , 
	@FK_TSTA_ID int
)
AS
BEGIN

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs ayant un champ FK_TInd_ID
	DECLARE cPr CURSOR  FOR 
		SELECT tables.name
		FROM 
			dbo.syscolumns col, 
			sysobjects tables
		WHERE 
			tables.id = col.id AND tables.xtype = 'U' AND tables.name LIKE 'TProtocol[_]%'AND col.name ='FK_TInd_ID';
	
	DECLARE @nbOUT int, @nb int, @nbT int
	SET @nbT = 0
	--Pour chaque protocole
	open cPr
		fetch cPr into  @tablename
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @prname  = REPLACE(@tablename, '_', ' ');
				SET @prname  = RIGHT(@prname, LEN(@prname) -10);
				SET @sql= 'SELECT  @nbOUT = count(PK) FROM '+@tablename+' WHERE FK_TInd_ID= '+CAST (@FK_TIND_ID AS VARCHAR)+'  AND NOT FK_TSTA_ID = ' +CAST (@FK_TSTA_ID AS VARCHAR);

				EXEC sp_executesql @sql,N'@nbOUT int OUTPUT', @nbOUT = @nb OUTPUT;
				
				SET @nbT = @nbT + @nb
			fetch cPr into @tablename
			end
	close cPr
	deallocate  cPr

	SELECT @FK_TIND_ID, @nbT

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_TestExportFilter]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 18/10/2012
-- Description:	Procedure permettant de créer les tables en vue d'un export
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_TestExportFilter] 
	--identifiant de la station du relaché
	@ViewName nvarchar(200),
	@Filter nvarchar(1000)
AS
BEGIN

	DECLARE @sql nvarchar(1000) ;
	
		
	SET @sql = 'SELECT count(*) as cnt FROM ' + @ViewName
	IF (NOT @Filter='') SET @sql = @sql +' WHERE '+@Filter;
	EXEC (@sql);
	--select @@ROWCOUNT as cnt


END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminQry_MonitoredMalesWithMoreThan1DisplaySite]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_AdminQry_MonitoredMalesWithMoreThan1DisplaySite]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
    IF NOT EXISTS(SELECT * FROM sysobjects WHERE name = 'V_Qry_SelectionTemp'  AND xtype='V')
    BEGIN
		EXEC ('CREATE VIEW V_Qry_SelectionTemp AS SELECT TOP 1 1 AS n FROM sysobjects')
	END
	
	DECLARE @SQL AS nvarchar(MAX)
	

	SET @SQL = 'ALTER VIEW V_Qry_SelectionTemp AS
	SELECT 
		[TSta_PK_ID],[Name], [Site_name],  Frequency, [DATE], [FieldWorker1],[FieldWorker2], 
		obsM.Individual_Obj_pk,obsM.NumBagRel,obsM.Sex,obsM.Age,
		[NbFieldWorker],[FieldActivity_Name],[Region],[Place],[LAT],[LON],[Precision],[ELE],[Creator],
		[Creation_date],[TSta_FK_TPoi_ID],[TSta_FK_TGeo_ID],[Site_idType],[Site_type],[FieldActivity_ID]  
	FROM
		[ECWP-eReleveData].dbo.V_Qry_StationsForMap sta
	JOIN (
		SELECT 
			male.Individual_Obj_pk, male.Frequency, male.NumBagRel, male.Sex, male.Age, prInd.FK_TSta_ID
		FROM 
			[ECWP-eReleveData].dbo.TProtocol_Vertebrate_individual prInd
		JOIN (
			SELECT 
				ind.Individual_Obj_pk,
				ind.Frequency,
				ind.NumBagRel,
				ind.Sex,
				ind.Age
			FROM (
				SElECT
					Individual_Obj_pk,
					id5@TCarac_Transmitter_Frequency As Frequency,
					id9@TCarac_Release_Ring_Code As NumBagRel,
					id30@TCaracThes_Sex_Precision As Sex,
					id2@Thes_Age_Precision As Age
				FROM  
				[ECWP-eReleveData].dbo.TViewIndividual
				WHERE id1@Thes_Status = 18987 AND id30@TCaracThes_Sex=18873
			) ind
			LEFT OUTER JOIN (
				SELECT 
					stations.*, 
					prInd.FK_TInd_ID
				FROM
					[ECWP-eReleveData].dbo.TProtocol_Vertebrate_individual prInd
				JOIN 
					[ECWP-eReleveData].dbo.V_Qry_StationsForMap stations
				on prInd.Fk_TSta_ID = stations.TSta_PK_ID
				WHERE stations.Site_type = N''Display site''
			) prSta
			ON prSta.FK_TInd_ID = ind.Individual_Obj_PK
			GROUP BY ind.Individual_Obj_pk,	ind.Frequency, ind.Sex,ind.Age, ind.NumBagRel
			HAVING count(prSta.TSta_PK_ID)>1
		) male
		on male.Individual_Obj_Pk = prInd.Fk_TInd_ID
	) obsM
	on sta.TSta_PK_ID = ObsM.FK_TSta_ID
	WHERE Site_type = N''display site'''
	
	EXEC (@SQL)
	
	SELECT count(*)  FROM V_Qry_SelectionTemp
END
GO
/****** Object:  Table [dbo].[zzUserExportTSelectionTemp_507_Geo]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zzUserExportTSelectionTemp_507_Geo](
	[geoLat] [decimal](9, 5) NULL,
	[geoLon] [decimal](9, 5) NULL,
	[PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_userExportGeo_LAT_LON] ON [dbo].[zzUserExportTSelectionTemp_507_Geo] 
(
	[geoLat] ASC,
	[geoLon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zzUserExportTSelectionTemp_507]    Script Date: 07/02/2014 14:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zzUserExportTSelectionTemp_507](
	[Vernacular_name] [nvarchar](255) NULL,
	[Latin_name] [nvarchar](max) NULL,
	[Taxon_Hierarchy] [nvarchar](500) NULL,
	[Identity_sure] [bit] NOT NULL,
	[Ident_Occasional] [bit] NOT NULL,
	[Nb_Adult_Male] [int] NULL,
	[Nb_Adult_Female] [int] NULL,
	[Nb_Adult_Indeterminate] [int] NULL,
	[Nb_Juvenile_Male] [int] NULL,
	[Nb_Juvenile_Female] [int] NULL,
	[Nb_Juvenile_Indeterminate] [int] NULL,
	[Nb_NewBorn_Male] [int] NULL,
	[Nb_NewBorn_Female] [int] NULL,
	[Nb_NewBorn_Indeterminate] [int] NULL,
	[Nb_Indeterminate] [int] NULL,
	[Signal] [bit] NOT NULL,
	[Behaviour] [nvarchar](255) NULL,
	[Disturbed] [bit] NOT NULL,
	[Comments] [nvarchar](300) NULL,
	[TSta_PK_ID] [int] NULL,
	[FieldWorker1] [nvarchar](511) NULL,
	[FieldWorker2] [nvarchar](511) NULL,
	[NbFieldWorker] [int] NULL,
	[FieldActivity_Name] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Place] [nvarchar](50) NULL,
	[DATE] [datetime] NULL,
	[LAT] [decimal](9, 5) NULL,
	[LON] [decimal](9, 5) NULL,
	[Precision] [int] NULL,
	[ELE] [int] NULL,
	[Creator] [nvarchar](511) NULL,
	[Creation_date] [datetime] NULL,
	[TSta_FK_TGeo_ID] [int] NULL,
	[Site_name] [nvarchar](50) NULL,
	[Site_idType] [int] NULL,
	[Site_type] [nvarchar](200) NULL,
	[FieldActivity_ID] [int] NULL,
	[PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_userExport_LAT_LON] ON [dbo].[zzUserExportTSelectionTemp_507] 
(
	[LAT] ASC,
	[LON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[XMLGetID]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[XMLGetID] ( @Xml xml )
RETURNS @DT TABLE
(
ID nvarchar(max)
)
AS
BEGIN
INSERT INTO @DT (ID) 
SELECT ParamValues.ID.value('.','nvarchar(max)')
FROM @xml.nodes('/table/id') as ParamValues(ID) 
RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetMaxStationForXMLPr]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetMaxStationForXMLPr
CREATE FUNCTION [dbo].[fn_v_qry_GetMaxStationForXMLPr](@Fk_Tind AS int, @Pr AS XML)
  RETURNS TABLE
AS
RETURN          
select top 1 Ind_ID,
Origin,
Taxon,
VHF@Station,
VHFModel@Station,
PTT@Station,
PTTModel@Station,
SurveyType@Station, MonitoringStatus@Station,
[freqOpti@Station],
StaType,
Sta_ID,
StaName,
StaDate,
Area, Locality, LAT, LON, Precision, FW1, FW2, FW3, FW4, FW5, FA_ID, FA, Creator, CreationDate 
from V_Qry_AllIndivs_Stations v
where Ind_ID = @Fk_Tind AND StaType_ID IN (select id from dbo.XMLGetID(@Pr))
order by StaDate Desc, StaType_ID asc
GO
/****** Object:  Trigger [tr_Insert_InsertDate]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 05/05/2009
-- Description:	Mise à jour de la date de création d'un topic du thesaurus
-- =============================================
CREATE TRIGGER [dbo].[tr_Insert_InsertDate]
   ON  [dbo].[Tthesaurus]
   AFTER INSERT
AS 
BEGIN
	UPDATE TThesaurus SET Creation_date= CURRENT_TIMESTAMP WHERE ID IN (SELECT ID FROM INSERTED )
END
GO
/****** Object:  Trigger [tr_Delete_ForbidenDeletion]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_Delete_ForbidenDeletion]
   ON  [dbo].[Tthesaurus]
   INSTEAD OF DELETE 
AS 
BEGIN
	
	WAITFOR DELAY '00:00:00'
END
GO
/****** Object:  View [dbo].[V_Qry_Plant_family]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_Plant_family]
AS
SELECT     tax.ID, CAST(tax.topic_en AS nvarchar(255)) AS taxon, SUBSTRING(tax.hierarchy, 1, 15) AS Hierarchy, fam.ID AS familyID, 
                      CAST(fam.topic_en AS nvarchar(255)) AS family
FROM         (SELECT     ID, Id_Type, Id_Parent, hierarchy, topic_fr, topic_en, definition_fr, definition_en, Reference, FK_Creator, Creation_date, 
                                              FK_Contacts_Id_Modificateur, Date_heure_modification, available_EAU, available_Morocco
                       FROM          dbo.Tthesaurus
                       WHERE      (Id_Type = 65346788)) AS tax INNER JOIN
                      dbo.Tthesaurus AS fam ON SUBSTRING(tax.hierarchy, 1, 15) = fam.hierarchy
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "fam"
            Begin Extent = 
               Top = 140
               Left = 52
               Bottom = 255
               Right = 275
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tax"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Plant_family'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Plant_family'
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_groupToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_group update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_groupToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Group]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_group')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,16,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,16,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_Aerian_IndividualsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Aerian_Individuals update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_Aerian_IndividualsToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Aerian_Individuals')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,5,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,5,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_groupToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Vertebrate_group insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_groupToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Group]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_group')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,16,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_Aerian_IndividualsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Aerian_Individuals insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_Aerian_IndividualsToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Aerian_Individuals')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,5,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_groupToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_group delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_groupToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Group]
AFTER Delete
as
Begin
print('After Delete Vertebrate_group')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,16,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_Aerian_IndividualsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Aerian_Individuals delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_Aerian_IndividualsToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Aerian_Individuals')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,5,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_DeleteReleaseImport]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 17/03/2010
-- Description:	Procédure permettant de supprimer un import réalisé par la base release
--- C'est à dire suppression des individus, des protocoles (individus, groupe de vertébré, biometrie) et de la station 
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_DeleteReleaseImport] 
	--identifiant de la station du relaché
	@FK_TSTA_ID int, 
	@password nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	IF (@password = '123456')	
	BEGIN
		--Test si des protocoles autre que ceux du relaché pour les individus ont été saisis
		DECLARE @FK_TIND_ID int

		DECLARE CtestInd CURSOR  FOR SELECT DISTINCT FK_TIND_ID  FROM  dbo.TProtocol_Vertebrate_individual WHERE FK_TSTA_ID = @FK_TSTA_ID
		DECLARE	@return_value int
		CREATE TABLE #TMP (FK_TIND_ID int, Pr int)


		OPEN CtestInd
		Fetch next From CtestInd into @FK_TIND_ID  
		WHILE @@Fetch_Status=0 BEGIN  

			INSERT INTO #TMP  EXEC [dbo].sp_DB_testIfPrExistForIndividualInAnOtherStation @FK_TIND_ID, @FK_TSTA_ID
	
		Fetch next From CtestInd into @FK_TIND_ID  
		End  
		  
		Close CtestInd
		Deallocate CtestInd

		IF ((SELECT count(*) FROM  #TMP WHERE Pr > 0 ) = 0 ) 
		BEGIN
			--Suppression des individus			
			DELETE FROM TObj_Objects WHERE Object_PK IN (
				SELECT DISTINCT FK_TIND_ID  FROM  dbo.TProtocol_Vertebrate_individual WHERE FK_TSTA_ID = @FK_TSTA_ID
			)
			
			DELETE FROM TObj_Carac_value WHERE fk_object IN (
				SELECT DISTINCT FK_TIND_ID  FROM  dbo.TProtocol_Vertebrate_individual WHERE FK_TSTA_ID = @FK_TSTA_ID
			)
			
			--Suppression des individus dans la table TViewIndividual
			DELETE FROM dbo.TViewIndividual WHERE Individual_Obj_PK IN (
				SELECT DISTINCT FK_TIND_ID  FROM  dbo.TProtocol_Vertebrate_individual WHERE FK_TSTA_ID = @FK_TSTA_ID
			)
			--Suppression de la stations et des protocoles associés
			DELETE FROM dbo.TProtocol_Vertebrate_individual WHERE FK_TSTA_ID = @FK_TSTA_ID
			DELETE FROM TStations WHERE TSTA_PK_ID = @FK_TSTA_ID 

		END
		ELSE RAISERROR('DELETE FORBIDEN CAUSE : INDIVIDUALS HAVE OTHER PROTOCOLS ASSOCIATED. Contact an administrator', 16, 1)

	END	
	ELSE RAISERROR('DELETE FORBIDEN CAUSE : Access denied', 16, 1)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminQry_ThesaurusIncoherence_OnName]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 08/04/2010
-- Description:	Procédure permettant de mettre en évidence d'éventuelles incohérences dans les données de type thésaurale 
-- Basée sur le nom
-- =============================================
CREATE PROCEDURE[dbo].[sp_AdminQry_ThesaurusIncoherence_OnName] 
AS
BEGIN

	CREATE TABLE #tempInco2 (TableName nvarchar(100), ColumnName nvarchar(100), IdValue int, NameValue nvarchar(100), Id_Thes int, TopicEn nvarchar(100))


	PRINT '*************************************************	Protocols incoherences			**************************************************'
	
	DECLARE @tableName nvarchar(100), @ColId nvarchar(100), @ColName nvarchar(100), @sql nvarchar(MAX)

	DECLARE c CURSOR FOR
		SELECT tables.name, col.name FROM 	dbo.syscolumns col, sysobjects tables
		WHERE tables.id = col.id AND tables.xtype = 'U' AND  col.name LIKE 'ID[_]%'
		AND NOT col.name LIKE 'Id[_]%[_]Operator' AND NOT tables.name = 'TThesaurus'; 
		
	OPEN c
	FETCH NEXT FROM c INTO @tableName, @ColId
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @ColName = 'Name'+ RIGHT(@ColId, LEN(@ColId)-2)
		
		PRINT @ColName 
		
		SET @sql= 'SELECT  '''+@tableName+''', '''+@ColId+''', '+ @tableName+'.'+@ColId+' AS idC, CAST('+@tableName+'.'+@ColName+' AS nvarchar(MAX)) AS nameC, id,  topic_en  FROM '+@tablename+'' 
		SET @sql= @sql + ' LEFT OUTER JOIN TThesaurus ON id = '+@tableName+'.'+@ColId 
		SET @sql= @sql + '  WHERE id IS NULL'
		
		INSERT INTO #tempInco2 EXEC (@sql) 
		
	FETCH NEXT FROM c INTO @tableName, @ColId
	END
	CLOSE C
	DEALLOCATE C


	PRINT '*************************************************	Characteristics incoherences (object)		**************************************************'

	CREATE TABLE #tempVal ( IdValue int, NameValue nvarchar(100))

	INSERT INTO #tempVal
	SELECT DISTINCT value, value_precision FROM TObj_carac_value WHERE FK_carac IN (SELECT fk_carac_type FROM dbo.TObj_Obj_CaracList WHERE value_type='thesaurus')

	INSERT INTO #tempInco2 SELECT  'TObj_carac_value', 'value', IdValue AS idC, NameValue AS nameC, id, topic_en  
	FROM #tempVal
	LEFT OUTER JOIN TThesaurus ON TThesaurus.id = IdValue  
	WHERE IdValue IS NULL

	DROP TABLE #tempVal


	PRINT '*************************************************	Stations incoherences	**************************************************'
	INSERT INTO #tempInco2 SELECT  'TStations', 'FieldActivity_ID', FieldActivity_ID AS idC, FieldActivity_NAME AS nameC, TProt_PK_ID, Caption  FROM TStations 
	LEFT OUTER JOIN dbo.TThemeEtude ON  TProt_PK_ID= TStations.FieldActivity_ID  WHERE TProt_PK_ID IS NULL


	SELECT DISTINCT * FROM #tempInco2
	WHERE NOT ( (IDvalue IS NULL OR IDvalue= 0)  AND NameValue IS NULL ) 
	ORDER BY TableName, columnName

	DROP TABLE  #tempInco2

END



IF OBJECT_ID(N'dbo.sp_AdminQry_ThesaurusIncoherence_OnName') IS NOT NULL
BEGIN
    PRINT 'Drop View : dbo.V_Qry_First_Individual_CaptureReleaseStation'
    DROP VIEW dbo.V_Qry_First_Individual_CaptureReleaseStation
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminQry_ThesaurusIncoherence_OnID]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 08/04/2010
-- Description:	Procédure permettant de mettre en évidence d'éventuelles incohérences dans les données de type thésaurale
-- Basée sur l'identifiant
-- =============================================
CREATE PROCEDURE [dbo].[sp_AdminQry_ThesaurusIncoherence_OnID] 
AS
BEGIN

	CREATE TABLE #tempInco (TableName nvarchar(100), ColumnName nvarchar(100), IdValue int, NameValue nvarchar(100), TopicEn nvarchar(100))

	PRINT '*************************************************	Protocols incoherences			**************************************************'

	DECLARE @tableName nvarchar(100), @ColId nvarchar(100), @ColName nvarchar(100), @sql nvarchar(MAX)

	DECLARE c CURSOR FOR
		SELECT tables.name, col.name FROM 	dbo.syscolumns col, sysobjects tables
		WHERE tables.id = col.id AND tables.xtype = 'U' AND  col.name LIKE 'ID[_]%'
		AND NOT col.name LIKE 'Id[_]%[_]Operator' AND NOT tables.name = 'TThesaurus'; 
		
	OPEN c
	FETCH NEXT FROM c INTO @tableName, @ColId
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @ColName = 'Name'+ RIGHT(@ColId, LEN(@ColId)-2)
		
		PRINT @ColName 
		
		SET @sql= 'SELECT  '''+@tableName+''', '''+@ColId+''', '+ @tableName+'.'+@ColId+' AS idC, CAST('+@tableName+'.'+@ColName+' AS nvarchar(MAX)) AS nameC, topic_en  FROM '+@tablename+'' 
		SET @sql= @sql + ' JOIN TThesaurus ON id = '+@tableName+'.'+@ColId 
		SET @sql= @sql + '  WHERE NOT topic_en = CAST('+@tableName+'.'+@ColName +' AS nvarchar(MAX)) OR +CAST('+@tableName+'.'+@ColName +' AS nvarchar(MAX)) IS NULL'
		
		INSERT INTO #tempInco EXEC (@sql) 
		
	FETCH NEXT FROM c INTO @tableName, @ColId
	END
	CLOSE C
	DEALLOCATE C


	PRINT '*************************************************	Characteristics incoherences (object)		**************************************************'

	CREATE TABLE #tempVal ( IdValue int, NameValue nvarchar(100))

	INSERT INTO #tempVal
	SELECT DISTINCT value, value_precision FROM TObj_carac_value WHERE FK_carac IN (SELECT fk_carac_type FROM dbo.TObj_Obj_CaracList WHERE value_type='thesaurus')

	INSERT INTO #tempInco SELECT  'TObj_carac_value', 'value', IdValue AS idC, NameValue AS nameC, topic_en  
	FROM #tempVal
	JOIN TThesaurus ON id = IdValue
	WHERE NOT topic_en = NameValue COLLATE French_CI_AS  OR NameValue  IS NULL

	DROP TABLE #tempVal


	PRINT '*************************************************	Stations incoherences	**************************************************'

	INSERT INTO #tempInco SELECT  'TStations', 'FieldActivity_ID', FieldActivity_ID AS idC, FieldActivity_NAME AS nameC, Caption  FROM TStations JOIN dbo.TThemeEtude ON  TProt_PK_ID= TStations.FieldActivity_ID  WHERE NOT  Caption= TStations.FieldActivity_NAME


	SELECT DISTINCT * FROM #tempInco

	DROP TABLE  #tempInco

END
GO
/****** Object:  Trigger [tr_Update_UpdateDate]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_Update_UpdateDate]
   ON  [dbo].[Tthesaurus]
   AFTER UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
		
	UPDATE TThesaurus SET Date_heure_modification= CURRENT_TIMESTAMP WHERE ID IN (SELECT ID FROM INSERTED )
	
END
GO
/****** Object:  View [dbo].[VUsers]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VUsers]
AS
SELECT     TOP (100) PERCENT [ECWP_TRACK_Securite].dbo.TUsers.TUse_Pk_ID AS Id_Utilisateur, RTRIM([ECWP_TRACK_Securite].dbo.TUsers.TUse_Nom) + SPACE(1) 
                      + RTRIM([ECWP_TRACK_Securite].dbo.TUsers.TUse_Prenom) AS Utilisateur
FROM         [ECWP_TRACK_Securite].dbo.TUsers INNER JOIN
                      [ECWP_TRACK_Securite].dbo.TAutorisations ON [ECWP_TRACK_Securite].dbo.TUsers.TUse_Pk_ID = [ECWP_TRACK_Securite].dbo.TAutorisations.TAut_FK_TUse_PK_ID
WHERE     ([ECWP_TRACK_Securite].dbo.TAutorisations.TAut_FK_TApp_PK_ID = 21)
ORDER BY Utilisateur
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_ImportObjectFile]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural solution
-- Create date: 02/06/2013
-- Description:    Fonction qui permet d'insérer dynamiquement un ensemble d'object basé sur les noms de colonnes
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_ImportObjectFile]
AS
BEGIN
BEGIN TRY
BEGIN TRAN 

    -- SET NOCOUNT ON added to prevent extra result sets from
    SET NOCOUNT ON;
    SET DATEFORMAT 'DMY';
    
    DECLARE @countErr int , @msgErr nvarchar(MAX)
    
    ---Test si il existe les colonnes obligatoires : begin_date, object_type
    SELECT @countErr = COUNT(*)
	FROM Sys.tables t
	JOIN sys.columns c
	ON t.object_id = c.object_id 
	WHERE t.name = 'TTEMP_Objects_2_import' AND c.name IN ('object_type', 'begin_date')
	
	IF (NOT @countErr =2 ) RAISERROR ( 'Missing column(s) : begin_date or object_type', 16, 1 );

    ---Test si object_type est bien déclaré
    SELECT @countErr = COUNT(*)
	FROM TTEMP_Objects_2_import
	LEFT OUTER JOIN [TObj_Obj_Type]  ON [name] = Object_type
	WHERE [name] IS NULL 
	
	IF (@countErr >0 ) RAISERROR ( 'Invalid object type ', 16, 1 );

			   
    DECLARE @object_Type_id int,  @object_Type_name nvarchar(250);
    SELECT @object_Type_id= [Obj_Type_Pk], @object_Type_name =name  FROM ( SELECT DISTINCT [Obj_Type_Pk], name FROM [TObj_Obj_Type] JOIN TTEMP_Objects_2_import ON [name] = Object_type )as obj_type
        
    --Selection de la liste des caractéristiques propres aux individus--
    DECLARE c CURSOR  FOR 		
		SELECT DISTINCT caracId, value_type, value_precision, C, s,
		 CASE 
			WHEN (s = 11 OR s= 1) THEN (SELECT name FROM sys.columns WHERE object_id = oid AND name LIKE 'id'+CAST(caracId AS varchar(3))+'@%Precision')
		 END precisionCol , 
		 CASE 
			WHEN  (s = 11 OR s= 10)  THEN (SELECT name FROM sys.columns WHERE object_id = oid AND (name LIKE 'id'+CAST(caracId AS varchar(3))+'@%' AND NOT name LIKE 'id'+CAST(caracId AS varchar(3))+'@%Precision'  ))
		 END valueCol
		FROM (
		 SELECT id as caracId, type caracFileType, value_type, value_precision, colname,   oid, 
			 COUNT(id) OVER (PARTITION BY id) as c, 
			 SUM(type) OVER (PARTITION BY id) as s -- if c= 2 and s = 10 only value; if c= 2 and s = 1 only Precision;  if c= 2 and s = 11 value + Precision; 
			FROM (
				SELECT 
					c.object_id oid , c.name as colname, REPLACE(SUBSTRING(c.name,0 , CHARINDEX('@',c.name) ), 'id', '') AS id, 
					CASE
						WHEN c.name LIKE '%Precision' THEN 1
						ELSE 10
					END as type 
				FROM Sys.tables t
				JOIN sys.columns c
				ON t.object_id = c.object_id WHERE t.name = 'TTEMP_Objects_2_import'
			) as colImported
			JOIN TObj_Obj_CaracList 
			ON fk_Carac_type = id 
			JOIN ( SELECT DISTINCT [Obj_Type_Pk] FROM [TObj_Obj_Type] JOIN TTEMP_Objects_2_import ON [name] = Object_type )as obj_type
			ON  fk_Object_type = [Obj_Type_Pk]
		) val


	
	DECLARE @caracId int,  @objectId int,
		@precisionCol nvarchar(250),  @valueCol nvarchar(250), 
		@value_type nvarchar(250), @value_precision nvarchar(1000), 
		@c int, @s int
    DECLARE @sql  nvarchar(MAX);
    DECLARE @sqlInsert  nvarchar(MAX), @select nvarchar(MAX);
        
       
    -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    --@TODO => Test des caractérisitiques uniques ex : Serial Nb, Chip Code, .......
    -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     
     
     
    -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    --@TODO => Test des types à finaliser
    --- VALEURS Thésaurales
    ---------- 
    OPEN c
        -- Parcours du curseur : Pour chaque caractéristiques variables d'individu
        FETCH c INTO  @caracId, @value_type, @value_precision, @c, @s, @precisionCol, @valueCol
        WHILE @@FETCH_STATUS = 0
		BEGIN
		
            IF @value_type = 'datetime' 
            BEGIN
				SET @msgErr = 'Invalid date format for column : '+ @valueCol
				SET @select = 'SELECT @countErr =count(*)
					FROM [TTEMP_Objects_2_import]
					WHERE ISDATE ( ['+@valueCol+']) = 0 AND NOT ['+@valueCol+'] IS NULL' ;
            END
            ELSE IF @value_type = 'int' OR @value_type = 'float'  
            BEGIN
				SET @msgErr = 'Invalid numeric format for column : '+ @valueCol
				SET @select = 'SELECT @countErr =count(*)
					FROM [TTEMP_Objects_2_import]
					WHERE NOT ISNUMERIC(['+@valueCol+']) = 1';
				IF @value_type = 'int' SET @select = @select + 'AND SQL_VARIANT_PROPERTY(['+@valueCol+'],''scale'') =0  AND NOT ['+@valueCol+'] IS NULL' ;
            END
            ELSE IF @value_type = 'thesaurus'
            BEGIN	
				SET @msgErr = 'Invalid thesaural value for column  '+ COALESCE(@valueCol,@value_precision ) 
				IF @s = 10 
				BEGIN
					------ CAS 1 => uniquement la value
					SET @select = 'SELECT @countErr =count(*)
						FROM [TTEMP_Objects_2_import] t
						LEFT OUTER JOIN Tthesaurus thes
						ON ['+@valueCol+'] = id AND ' +@value_precision +'
						WHERE id IS NULL  AND NOT ['+@valueCol+'] IS NULL' ;
				END
				ELSE IF @s = 1 
				BEGIN
					------ CAS 2 => uniquement la value_precision
					 SET @select = 'SELECT @countErr =count(*)
						FROM [TTEMP_Objects_2_import] t
						LEFT OUTER JOIN Tthesaurus thes
						ON  ['+@precisionCol+'] = topic_en AND ' +@value_precision +'
						WHERE id IS NULL  AND NOT ['+@precisionCol+'] IS NULL' ;
				END
				ELSE IF @s = 11 
				BEGIN
					------ CAS 3 => presence de value & value_precision
					SET @select = 'SELECT @countErr =count(*)
						FROM [TTEMP_Objects_2_import] t
						LEFT OUTER JOIN Tthesaurus thes
						ON  ['+@valueCol+'] = id AND ['+@precisionCol+'] = topic_en AND ' +@value_precision +'
						WHERE id IS NULL AND NOT ['+@precisionCol+'] IS NULL AND NOT ['+@valueCol+'] IS NULL' ;
				END
			END 
            --PRINT @select;
            exec sp_executesql @select, N'@countErr int out', @countErr out
			IF (@countErr > 0 ) 
			BEGIN
				RAISERROR ( @msgErr, 16, 1 );
			END
			 
		FETCH c INTO  @caracId, @value_type, @value_precision, @c, @s, @precisionCol, @valueCol
        END
    CLOSE c
    
    
    --Insertion des valeurs
    --Ajout d'une clé Primaire
    IF not exists(SELECT * FROM sys.columns WHERE Name = N'PK' and Object_ID = Object_ID(N'TTEMP_Objects_2_import'))    
	BEGIN
		ALTER TABLE TTEMP_Objects_2_import ADD PK int IDENTITY(1,1) NOT NULL PRIMARY KEY
	END
	IF not exists(SELECT * FROM sys.columns WHERE Name = N'original_id' and Object_ID = Object_ID(N'TObj_Objects'))    
	BEGIN
		ALTER TABLE TObj_Objects ADD  original_id INT
	END

    
    
    
    ---Création des objects
    SET @sqlInsert = 'INSERT INTO [TObj_Carac_value] ([Fk_carac],[fk_object],[value],[value_precision],[begin_date] )'
   
    SET @sql = 'INSERT INTO [TObj_Objects](original_id, [Id_object_type],Name_object_type, [Creation_date]) SELECT PK, '+CAST(@object_Type_id AS varchar(500))+ ', ''' + @object_Type_name + ''', CURRENT_TIMESTAMP FROM TTEMP_Objects_2_import' ;
	EXEC (@sql);
       
    -- 
    SET @select = 'SELECT 54,  Object_Pk, '+CAST(@object_Type_id AS varchar(500))+ ', ''' + @object_Type_name + ''', t.begin_date
		FROM [TTEMP_Objects_2_import] t
		JOIN TObj_Objects
		ON t.PK = original_id ';

    PRINT @sqlInsert + ' ' +@select;
	EXEC (@sqlInsert + ' ' +@select );
	
	
   --- Création des caractéristiques  
    OPEN c
        -- Parcours du curseur : Pour chaque caractéristiques variables d'individu
        FETCH c INTO  @caracId, @value_type, @value_precision, @c, @s, @precisionCol, @valueCol
        WHILE @@FETCH_STATUS = 0
            BEGIN
			 -- Si caractéristique de type thésaural alors sélection du champ précision
			 -- Pour le moment seule la colonne précision est prise en compte
            IF @value_type LIKE 'thesaurus' 
            BEGIN
				IF @s = 10 
				BEGIN
					------ CAS 1 => uniquement la value
					SET @select = 'SELECT '+CAST(@caracId AS varchar(50)) +',  Object_Pk, thes.id, topic_en, t.begin_date
						FROM [TTEMP_Objects_2_import] t
						JOIN TObj_Objects
						ON t.PK = original_id
						JOIN Tthesaurus thes
						ON  ['+@valueCol+'] = id AND ' +@value_precision +'
						WHERE NOT ['+@valueCol+'] IS NULL';
				END
				ELSE IF @s = 1 
				BEGIN
					------ CAS 2 => uniquement la value_precision
					SET @select = 'SELECT '+CAST(@caracId AS varchar(50)) +',  Object_Pk, thes.id, ['+@precisionCol+'], t.begin_date
						FROM [TTEMP_Objects_2_import] t
						JOIN TObj_Objects
						ON t.PK = original_id
						JOIN Tthesaurus thes
						ON  ['+@precisionCol+'] = topic_en AND ' +@value_precision +'
						WHERE NOT ['+@precisionCol+'] IS NULL ';
				END
				ELSE IF @s = 11 
				BEGIN
					------ CAS 3 => presence de value & value_precision
					 SET @select = 'SELECT '+CAST(@caracId AS varchar(50)) +',  Object_Pk, CAST(CAST(['+@valueCol+'] AS int) AS varchar(255)),'+
								' ['+@precisionCol+'], t.begin_date
							FROM [TTEMP_Objects_2_import] t
							JOIN TObj_Objects
							ON t.PK = original_id 
							WHERE NOT ['+@precisionCol+'] IS NULL AND NOT ['+@valueCol+'] IS NULL'
				END
            END
			ELSE If @value_type = 'datetime'
            BEGIN
				 set @select = 'SELECT '+CAST(@caracId AS varchar(50)) +',  Object_Pk,'+ CONVERT(varchar(11) ,+'['+ @valueCol+']', 103)+',NULL, t.begin_date
					FROM [TTEMP_Objects_2_import] t
					JOIN TObj_Objects
					ON t.PK = original_id 
					WHERE NOT ['+@valueCol+'] IS NULL';
            END
            ELSE
			 -- Sinon caractéristiques de type numérique ou texte simple
            BEGIN
                set @select = 'SELECT '+CAST(@caracId AS varchar(50)) +',  Object_Pk,  CAST(CAST(['+@valueCol+'] AS '+@value_type+') AS varchar(255)),NULL, t.begin_date
					FROM [TTEMP_Objects_2_import] t
					JOIN TObj_Objects
					ON t.PK = original_id
					WHERE NOT ['+@valueCol+'] IS NULL';
            END
            PRINT @sqlInsert + ' ' +@select;
			EXEC (@sqlInsert + ' ' +@select );
            FETCH c INTO  @caracId,@value_type, @value_precision, @c, @s, @precisionCol, @valueCol
            END
    CLOSE c
    DEALLOCATE  c


   -- IF exists(SELECT * FROM sys.columns WHERE Name = N'original_id' and Object_ID = Object_ID(N'TObj_Objects'))    
	--BEGIN
		--ALTER TABLE TObj_Objects DROP COLUMN original_id
	--END		
	

     
COMMIT TRAN          
END TRY
BEGIN CATCH
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;

    SELECT 
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();

	ROLLBACK TRAN
	
    RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState );
END CATCH;
 
END

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[TMapSelectionManager]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMapSelectionManager](
	[TSMan_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TSMan_sp_name] [nvarchar](max) NULL,
	[TSMan_Layer_Name] [nvarchar](500) NULL,
	[TSMan_Description] [nvarchar](500) NULL,
	[TSMan_FK_Theme] [int] NULL,
	[TSMan_AdminQry] [bit] NOT NULL,
 CONSTRAINT [aaaaaTMapSelectionManager_PK] PRIMARY KEY NONCLUSTERED 
(
	[TSMan_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TSMan_ID] ON [dbo].[TMapSelectionManager] 
(
	[TSMan_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMonitoredStations_Positions]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMonitoredStations_Positions](
	[TGeoPos_PK_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TGeoPos_FK_TGeo_ID] [int] NOT NULL,
	[TGeoPos_LAT] [decimal](9, 5) NULL,
	[TGeoPos_LON] [decimal](9, 5) NULL,
	[TGeoPos_ELE] [float] NULL,
	[TGeoPos_Date] [datetime] NULL,
	[TGeoPos_Begin_Date] [datetime] NULL,
	[TGeoPos_End_Date] [datetime] NULL,
	[TGeoPos_Comments] [nvarchar](max) NULL,
	[TGeoPos_Precision] [int] NULL,
 CONSTRAINT [PK_TMonitoredStations_Positions] PRIMARY KEY CLUSTERED 
(
	[TGeoPos_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProt_TTheEt]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProt_TTheEt](
	[TProt_PK_ID] [int] NOT NULL,
	[TTheEt_PK_ID] [int] NOT NULL,
 CONSTRAINT [PK__TProt_TTheEt__6932806F] PRIMARY KEY CLUSTERED 
(
	[TProt_PK_ID] ASC,
	[TTheEt_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateExportUserTable]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 18/10/2012
-- Description:	Procedure permettant de créer les tables en vue d'un export
-- =============================================
CREATE  PROCEDURE [dbo].[sp_DB_CreateExportUserTable] 
	--identifiant de la station du relaché
	@TableName nvarchar(100),
	@ViewName nvarchar(200),
	@Filter nvarchar(1000),
	@round AS int
AS
BEGIN

	DECLARE @sql nvarchar(1000) ;
	DECLARE @exportTableName nvarchar(200);

	SET @exportTableName = 'zzUserExport'+@TableName
	 --Création de la table des données
	IF OBJECT_ID(@exportTableName,'U') IS NOT NULL
		EXEC [dbo].[sp_DB_DeleteExportUserTable] @TableName = @TableName
		
	SET @sql = 'SELECT * INTO  '+@exportTableName+' FROM '+@ViewName
	IF (NOT @Filter='') SET @sql = @sql +' WHERE '+@Filter;
	EXEC (@sql);
	
	SET @sql = 'ALTER TABLE '+@exportTableName+' ADD  PK_ID INT IDENTITY(1,1) NOT FOR REPLICATION NOT NULL PRIMARY KEY';
	EXEC (@sql);

	-------------------------------------------
	--- Suppression des contraintes de nullité
	DECLARE @type_name VARCHAR(255)  
	DECLARE @col_name VARCHAR(255)  

	DECLARE IndexCursor CURSOR FOR  
	SELECT ty.name AS type_name, col.name AS col_name
	FROM sys.columns col
	INNER JOIN Sys.objects obj ON obj.object_id = col.object_id
	INNER JOIN sys.types ty ON col.system_type_id = ty.system_type_id
	WHERE obj.name =@exportTableName
	AND NOT col.name = 'PK_ID' AND col.IS_nullable =0 

	OPEN IndexCursor  
		FETCH NEXT FROM IndexCursor INTO @type_name, @col_name
		WHILE @@FETCH_STATUS = 0  
		BEGIN 
			IF @type_name = 'bit'
			BEGIN
				SET @sql = 'ALTER TABLE  '+@exportTableName+'  ADD DEFAULT((0)) FOR '+@col_name 
			END
			ELSE
			BEGIN
				IF ((@type_name = 'nvarchar') OR(@type_name = 'varchar') OR (@type_name = 'char')) SET @type_name = @type_name + '(250)'
				SET @sql = 'ALTER TABLE  '+@exportTableName+' ALTER COLUMN '+@col_name +' ' +@type_name +' NULL'
			END 
			EXEC (@sql)
		FETCH NEXT FROM IndexCursor INTO   @type_name, @col_name 
	END  
	CLOSE IndexCursor  
	DEALLOCATE IndexCursor

	 --Création de la table des données geo
	 --Test si c'est une requête spatiale
	DECLARE @contCol integer;
	
	SELECT @contCol= COUNT(*)
	FROM sys.columns col
	INNER JOIN Sys.objects obj ON obj.object_id = col.object_id
	WHERE obj.name = @exportTableName
	AND (UPPER(col.name) = 'LAT' OR UPPER(col.name) = 'LON')
	
	IF (@contCol=2) 
	BEGIN
			
		SET @sql = 'CREATE NONCLUSTERED INDEX index_userExport_LAT_LON ON  '+@exportTableName+'(LAT ,LON )';
		EXEC (@sql);

		SET @sql = 'SELECT * INTO zzUserExport'+@TableName+'_Geo FROM  (
			SELECT DISTINCT  CAST(round(LAT,'+CAST(@round AS CHAR(1))+') AS decimal(9,5)) AS geoLat
				,  CAST(round(LON, '+cast(@round AS CHAR(1))+') AS decimal(9,5)) AS geoLon FROM  '+@exportTableName+') a ';
		EXEC (@sql);
		
		SET @sql = 'ALTER TABLE '+@exportTableName+'_Geo ADD  PK_ID INT IDENTITY(1,1) NOT FOR REPLICATION NOT NULL PRIMARY KEY';
		EXEC (@sql);
		
		SET @sql = 'CREATE NONCLUSTERED INDEX index_userExportGeo_LAT_LON ON '+@exportTableName+'_Geo(geoLat ,geoLon )';
		EXEC (@sql);
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Map_SelectProtocolesWhithStationX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 13/01/2009
-- Description:	Fonction renvoyant la liste des protocoles réalisés sur une station donnée
-- =============================================
CREATE PROCEDURE[dbo].[sp_Sys_Map_SelectProtocolesWhithStationX] 
	-- @Fk_TSta : identifiant de la station d'intéret
	@Fk_TSta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), prlibelle nvarchar(200), pk int)

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs
	DECLARE c CURSOR  FOR 
		SELECT tables.name, pr.Caption
		FROM sysobjects tables, dbo.TProtocole pr
		WHERE tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%' AND tables.name = 'TProtocol_'+pr.relation AND pr.active=1;

	--Pour chaque protocole
	open c
		fetch c into  @tablename, @prname
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @sql= 'SELECT  '''+@tablename+''', '''+@prname+''', PK FROM '+@tablename+' WHERE FK_TSta_ID= '+CAST (@Fk_TSta AS VARCHAR);
				INSERT INTO #tabletemp EXEC (@sql)
			fetch c into @tablename, @prname
			end
	close c
	deallocate  c
	--Retour de la procédure
	SELECT * FROM #tabletemp
	DROP TABLE #tabletemp
END
GO
/****** Object:  Table [dbo].[TProtocol_Individual_Equipment]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Individual_Equipment](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_SAT_ID] [int] NOT NULL,
	[FK_IND_ID] [int] NOT NULL,
	[begin_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_TEquipment] PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Vertebrate_interview]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Vertebrate_interview](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Name_InterviewType] [nvarchar](250) NULL,
	[Id_InterviewType] [int] NULL,
	[Name_Taxon] [nvarchar](250) NULL,
	[Id_Taxon] [int] NULL,
	[Identity_sure] [bit] NOT NULL,
	[Nb_Adult_Male] [int] NULL,
	[Nb_Adult_Female] [int] NULL,
	[Nb_Adult_Indeterminate] [int] NULL,
	[Nb_Juvenile_Male] [int] NULL,
	[Nb_Juvenile_Female] [int] NULL,
	[Nb_Juvenile_Indeterminate] [int] NULL,
	[Nb_NewBorn_Male] [int] NULL,
	[Nb_NewBorn_Female] [int] NULL,
	[Nb_NewBorn_Indeterminate] [int] NULL,
	[Nb_Indeterminate] [int] NULL,
	[Name_Behaviour] [nvarchar](250) NULL,
	[Id_Behaviour] [int] NULL,
	[Observer] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_VertebrateInterview_Taxon_Station] UNIQUE NONCLUSTERED 
(
	[Id_Taxon] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CaracObject_Indiv_Id59@IndivStatus]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[fn_CaracObject_Indiv_Id59@IndivStatus](@ObjectId int)
  RETURNS TABLE 
AS
RETURN 
	SELECT DISTINCT
	CASE
		WHEN ((NOT PK IS NULL) OR  (NOT deadDate.Carac_value_Pk IS NULL)) Then 'Dead'
		WHEN MonitoringStatus@XDays = 'Monitored' Then 'Alive'
		ELSE 'Unknown'
	End as value
	FROM (SELECT * FROM TObj_Carac_value WHERE Fk_carac=54 AND fk_object = @ObjectId) ind
	LEFT OUTER JOIN dbo.TProtocol_Vertebrate_Individual_Death
	ON FK_TInd_ID =  @ObjectId
	LEFT OUTER JOIN (SELECT TOP 1 * FROM TObj_Carac_value WHERE Fk_carac = 36 AND fk_object = @ObjectId) deadDate
	ON deadDate.fk_object =  @ObjectId
	OUTER APPLY dbo.fn_v_qry_MonitoringStatus@X(@ObjectId,CURRENT_TIMESTAMP, 0)
GO
/****** Object:  Table [dbo].[TProtocol_Transects]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Transects](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Num_Bound] [int] NULL,
	[Num_Transect] [int] NULL,
	[Comments] [nvarchar](255) NULL,
	[Id_Observer] [int] NULL,
	[Id_Assistant] [int] NULL,
 CONSTRAINT [aaaaaTProtocol_Transects_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoTransects_FKSta] ON [dbo].[TProtocol_Transects] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Num_Bound] ON [dbo].[TProtocol_Transects] 
(
	[Num_Bound] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Num_Transect] ON [dbo].[TProtocol_Transects] 
(
	[Num_Transect] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Track_clue]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Track_clue](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Track_clue] [int] NULL,
	[Name_Track_clue] [nvarchar](250) NULL,
	[Comments] [nvarchar](255) NULL,
	[id_taxon] [int] NULL,
	[name_taxon] [nvarchar](250) NULL,
	[Identity_sure] [bit] NOT NULL,
	[Number_Track_clue] [int] NULL,
	[Sampled] [bit] NOT NULL,
 CONSTRAINT [aaaaaTProtocol_Tracks_Clues_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [Unique_TrackClue_Taxon_Track_Station] UNIQUE NONCLUSTERED 
(
	[id_taxon] ASC,
	[Id_Track_clue] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Prelevement] ON [dbo].[TProtocol_Track_clue] 
(
	[Id_Track_clue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TProtoTrackClue_FKSta] ON [dbo].[TProtocol_Track_clue] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Phytosociology_releve]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Phytosociology_releve](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Taxon] [int] NOT NULL,
	[Name_Taxon] [nvarchar](max) NOT NULL,
	[Identity_sure] [bit] NOT NULL,
	[Sampled] [bit] NOT NULL,
	[Picture] [bit] NOT NULL,
	[Id_Global_Abondance_Dom] [int] NULL,
	[Name_Global_Abondance_Dom] [nvarchar](50) NULL,
	[Id_Global_Sociability] [int] NULL,
	[Name_Global_Sociability] [nvarchar](25) NULL,
	[Id_Phenology_BBCH1] [int] NULL,
	[Name_Phenology_BBCH1] [nvarchar](25) NULL,
	[Id_Phenology_BBCH2] [int] NULL,
	[Name_Phenology_BBCH2] [nvarchar](25) NULL,
	[Id_Nb_Individuals] [int] NULL,
	[Name_Nb_Individuals] [nvarchar](250) NULL,
	[Validator] [int] NULL,
	[Comments] [nvarchar](255) NULL,
	[Cultivated] [bit] NOT NULL,
 CONSTRAINT [aaaaaTProtocol_Phytosociology_census_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_PhytosociologyCensus_Taxon_Station] UNIQUE NONCLUSTERED 
(
	[Id_Taxon] ASC,
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Global_Abondance_Dom] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Global_Abondance_Dom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Global_Sociability] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Global_Sociability] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Nb_feet] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Nb_Individuals] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Phenology_BBCH1] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Phenology_BBCH1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Phenology_BBCH2] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Phenology_BBCH2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Taxon] ON [dbo].[TProtocol_Phytosociology_releve] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Phytosociology_habitat]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Phytosociology_habitat](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Milieu] [int] NULL,
	[Name_Milieu] [nvarchar](500) NULL,
	[Id_Habitat2] [int] NULL,
	[Name_Habitat2] [nvarchar](500) NULL,
	[Id_Exposition] [int] NULL,
	[Name_Exposition] [nvarchar](50) NULL,
	[Id_Topography] [int] NULL,
	[Name_Topography] [nvarchar](250) NULL,
	[Id_Slope_Class] [int] NULL,
	[Name_Slope_Class] [nvarchar](50) NULL,
	[Area] [float] NULL,
	[Vegetation_cover] [float] NULL,
	[Id_Hydrography] [int] NULL,
	[Name_Hydrography] [nvarchar](250) NULL,
	[Id_Substrat] [int] NULL,
	[Name_Substrat] [nvarchar](250) NULL,
	[Comments] [nvarchar](255) NULL,
	[Id_micro_habitat] [int] NULL,
	[Name_micro_habitat] [nvarchar](250) NULL,
	[Id_PH_class] [int] NULL,
	[Name_PH_class] [nvarchar](50) NULL,
	[Id_soil_texture] [int] NULL,
	[Name_soil_texture] [nvarchar](550) NULL,
	[Id_vegetation_series] [int] NULL,
	[Name_vegetation_series] [nvarchar](550) NULL,
	[stratum_MossLichen_cover] [int] NULL,
	[stratum_Herbaceous_cover] [int] NULL,
	[stratum_Shrubby_cover] [int] NULL,
	[stratum_Arboreal_cover] [int] NULL,
	[stratum_Arboreal_height_avg] [float] NULL,
	[stratum_Shrubby_height_avg] [float] NULL,
	[stratum_Herbaceous_height_avg] [float] NULL,
	[stratum_MossLichen_height_avg] [float] NULL,
 CONSTRAINT [aaaaaTProtocol_Phytosociology_habitat_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Exposition] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Exposition] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Hydrography] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Hydrography] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Milieu] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Milieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Slope] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Slope_Class] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Substrat] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Substrat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Topographie] ON [dbo].[TProtocol_Phytosociology_habitat] 
(
	[Id_Topography] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Habitat_stratified]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Habitat_stratified](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NULL,
	[arbo] [float] NULL,
	[subarbo] [float] NULL,
	[arbu_very_high] [float] NULL,
	[arbu_high] [float] NULL,
	[arbu_medium_2] [float] NULL,
	[arbu_medium_1] [float] NULL,
	[arbu_low_2] [float] NULL,
	[arbu_low_1] [float] NULL,
	[herb_very_high] [float] NULL,
	[herb_high] [float] NULL,
	[herb_medium_2] [float] NULL,
	[herb_medium_1] [float] NULL,
	[herb_low_2] [float] NULL,
	[herb_low_1] [float] NULL,
	[herb_very_low] [float] NULL,
	[bryo] [float] NULL,
	[Id_Global_Veg_State] [int] NULL,
	[Name_Global_Veg_State] [ntext] NULL,
	[Id_Phenology] [int] NULL,
	[Name_Phenology] [ntext] NULL,
	[Id_Grazing] [int] NULL,
	[Name_Grazing] [ntext] NULL,
	[Stalling] [bit] NOT NULL,
	[Area] [float] NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaTProtocol_Habitat_stratified_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Habitat_stratified] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Global_Veg_State] ON [dbo].[TProtocol_Habitat_stratified] 
(
	[Id_Global_Veg_State] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Global_Veg_State1] ON [dbo].[TProtocol_Habitat_stratified] 
(
	[Id_Phenology] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Global_Veg_State2] ON [dbo].[TProtocol_Habitat_stratified] 
(
	[Id_Grazing] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TVegDom_PK_ID] ON [dbo].[TProtocol_Habitat_stratified] 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Entomo_population]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Entomo_population](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Capture] [int] NULL,
	[Name_Capture] [nvarchar](500) NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaTProtocol_Entomo_population_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Entomo_population] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Taxon] ON [dbo].[TProtocol_Entomo_population] 
(
	[Id_Capture] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TArgosEngineeringData]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TArgosEngineeringData](
	[TArE_PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[TArE_FK_TArS_PK_ID] [int] NULL,
	[TArE_PTT] [int] NULL,
	[TArE_TXDATE] [datetime] NULL,
	[TArE_PTTDATE] [datetime] NULL,
	[TArE_SAT] [nvarchar](50) NULL,
	[TArE_ACT_CNT] [int] NULL,
	[TArE_TX_CNT] [int] NULL,
	[TArE_TEMP] [float] NULL,
	[TArE_BATT] [float] NULL,
	[TArE_Fix_Time] [int] NULL,
	[TArE_SAT_CNT] [int] NULL,
	[TArE_Reset_Hours] [int] NULL,
	[TArE_Fix_Days] [int] NULL,
	[TArE_Season] [int] NULL,
	[TArE_Shunt] [int] NULL,
	[TarE_Nearest_FK_TSTA_ID] [int] NULL,
	[creation_date] [datetime] NULL,
 CONSTRAINT [PK_TArgosEngineringData] PRIMARY KEY CLUSTERED 
(
	[TArE_PK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IND_TENG_PTT] ON [dbo].[TArgosEngineeringData] 
(
	[TArE_PTT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IND_TENG_TXDATE] ON [dbo].[TArgosEngineeringData] 
(
	[TArE_TXDATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ArgosEngineering_NearestStations] ON [dbo].[TArgosEngineeringData] 
(
	[TarE_Nearest_FK_TSTA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_DisableIndividualCharacteristics]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solution
-- Create date: 08/07/2009	
-- Description: 
--		Procedure stockée qui permet de "désactiver" l'ensemble des caracteristiques d'un thème donné
--		d'un thème donné pour un individu donné
-- =============================================
CREATE PROCEDURE[dbo].[sp_DB_DisableIndividualCharacteristics]
	@FK_Object int, -- Identifiant de l'individu
	@FK_Theme int -- Identifiant du thème
AS
BEGIN
	
	SET NOCOUNT ON;
	
	UPDATE dbo.TObj_Individual_carac_value SET end_date = CURRENT_TIMESTAMP
	WHERE 
		fk_object = @FK_Object
		AND Fk_carac IN (
			SELECT Carac_type_Pk FROM dbo.TObj_Carac_type WHERE Fk_Theme = @FK_Theme
		)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_DeleteDuplicateStations]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 13/01/2009
-- Description:	Procedure qui permet de supprimer toutes les stations en doublons 
-- =============================================
CREATE PROCEDURE[dbo].[sp_Sys_DeleteDuplicateStations]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp ( TSta_PK_ID int, name nvarchar(200))

	INSERT INTO #tabletemp
	SELECT max (st.TSta_PK_ID) , st.name  
	FROM TStations  st
	JOIN(
		SELECT  
			NAME, date, lat, lon, ele
		FROM TStations 
		GROUP BY NAME, date, lat, lon, ele
		HAVING count(NAME)>1 
	) s
	ON s.name = st.name 
	GROUP BY st.name, st.date, st.lat, st.lon, st.ele
	HAVING count(st.NAME)>1 

	DELETE FROM TStations where 
	TSta_PK_ID IN ( SELECT 	d.TSta_PK_ID FROM #tabletemp d)
	
	SELECT count(*) As nbDuplicate FROM #tabletemp
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateObjectViewAtDateX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Natural solution
-- Create date: 14/12/2010
-- Description:    Fonction qui permet de créer une vue d'un objet défini dans la table Object_type
-- Entrée : @object_name = nom du type d'objet
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_CreateObjectViewAtDateX]
    -- Add the parameters for the stored procedure here
(
    @object_name nvarchar(250),
    @dateX datetime
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    SET DATEFORMAT 'DMY';
    
    DECLARE @object_id int
    SELECT @object_id= OBJ_Type_pk FROM dbo.TObj_Obj_type WHERE name LIKE @object_name
    
    --Selection de la liste des caractéristiques propres aux individus--
    DECLARE c CURSOR  for select distinct carac_type_pk, name, cList.value_type , clist.value_precision
		FROM dbo.TObj_Carac_type 
		JOIN dbo.TObj_Obj_CaracList AS clist 
		ON TObj_Carac_type.Carac_type_Pk = fk_Carac_type 
		WHERE fk_Object_type = @object_id AND cList.available = 1

    -- @sql : début de la clasue select requête sql
    -- @create : début de la clasue create requête sql
    -- @select : fin de la clause select de la requête sql : champ des caractérististiques variables
    -- @condition : clause FROM, GROUP BY de la requête sql
    -- @id : identifiant de la caractéristique
    -- @name : nom de la caractéristique
    -- @value : type de valeur de la caractéristique
    -- @fieldCarac
    -- @Create pk script permettant la création de la clée primaire
    
    DECLARE @sql nvarchar(Max),  @select nvarchar(Max),  @condition nvarchar(Max), @champ nvarchar(250), @id int, @name nvarchar(250), @value nvarchar(250),  @value_precision nvarchar(250),@viewName nvarchar(1000)
    DECLARE @type nvarchar(200), @length int, @typecomplet nvarchar(200), @createPK nvarchar(200);
    DECLARE @floatDateX float, @whereDate nvarchar(200);
    
    SET @viewName = 'V_sys_ObjectAtDateX_'+@object_name ;
    SET @floatDateX = CAST(@dateX AS FLOAT)

    SET @whereDate = CAST(@floatDateX  AS nvarchar(800)) +' > CAST(begin_date AS FLOAT) AND '+CAST(@floatDateX  AS nvarchar(800)) +' < CAST(COALESCE(end_date, CURRENT_TIMESTAMP) AS FLOAT)';

    --Selection des données constantes des individus 
    SET @sql= '  SELECT DISTINCT '
    SET @select ='fk_object '+CHAR(13);
    SET @condition = '';
    
    
    open c
        -- Parcours du curseur : Pour chaque caractéristiques variables d'individu
        fetch c into @id, @name, @value, @value_precision
        while @@FETCH_STATUS = 0
            begin
            -- SI caractéristique de type thésaural alors sélection du champ précision
            If @value LIKE 'Thesaurus' 
            BEGIN
                -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 v.value FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList ON fk_carac = fk_Carac_type WHERE fk_carac = '+CAST(@id AS nvarchar(100));
                set @select = @select + ' AND fk_object = obj.fk_object AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +'  AND '+@whereDate+'  ORDER BY begin_date DESC  )'+CHAR(13);
                set @select = @select  +' AS id'+ CAST(@id AS VARCHAR) +'@'+@name ;
                -- Nom du thésaurus
                set @select = @select + ', (SELECT TOP 1  v.value_precision FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList ON fk_carac = fk_Carac_type WHERE fk_carac = '+CAST(@id AS nvarchar(300));
                set @select = @select + ' AND fk_object =  obj.fk_object  AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +'   AND  '+@whereDate+' ORDER BY begin_date DESC  )'+CHAR(13);
                set @select = @select  +' AS id'+ CAST(@id AS VARCHAR) +'@'+@name+'_Precision' ;
            END
            ELSE If @value = 'function'
            BEGIN
				 -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 value FROM '+@value_precision +' ( fk_object )  )'+CHAR(13);
            END    
            ELSE
            BEGIN
                -- Selection d'une des caractéristiques variables
                set @select = @select + ', (SELECT TOP 1 v.value FROM dbo.TObj_Carac_value AS v JOIN dbo.TObj_Obj_CaracList ON fk_carac = fk_Carac_type WHERE fk_carac = ' + CAST(@id AS nvarchar(100));
                set @select = @select + ' AND fk_object = obj.fk_object AND fk_object_type= '+ CAST(@object_id AS nvarchar(10)) +'  AND  '+@whereDate+' ORDER BY begin_date DESC  )'+CHAR(13);
                set @select = @select + ' id'+ CAST(@id AS VARCHAR) +'@'+@name ;
            END
            fetch c into @id, @name, @value, @value_precision
            end
    close c
    deallocate  c
    SET @condition = @condition + ' FROM dbo.TObj_Carac_value AS obj '--+CHAR(13);
    SET @condition = @condition + ' GROUP BY  fk_object';

   
        PRINT '-------------------------------------------'
        PRINT '        CREATE VIEW'
        IF OBJECT_ID(@viewName, 'V') IS NOT NULL EXEC ('DROP VIEW '+@viewName);
        
        DECLARE @create nvarchar(Max)
        
        set @create= 'CREATE VIEW '+ @viewName+ ' ' + 'AS';

        SET @condition = @condition + ' HAVING obj.fk_object IN ( SELECT fk_object FROM dbo.TObj_Carac_value AS obj WHERE value_precision = '''+ @object_name+''' AND  '+@whereDate+')';
		
		print @create;
        print @sql;
        print @select;
        print @condition;
    
    EXEC (@create+' '+ @sql +'  '+@select+'  '+@condition);

    PRINT 'Nouvelle vue : '+@viewName+' créée '; 

END

SET dateFORMAT dmy
GO
/****** Object:  Trigger [tr_InsertObjectView]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_InsertObjectView]
   ON [dbo].[TObj_Carac_value]
   AFTER INSERT
AS 
BEGIN
 DECLARE @pk int, @fk_object int
 DECLARE @beginTime datetime, @endTime datetime, @caracFK int
 --Pour chaque caractéristique insérée
 DECLARE ins CURSOR FOR SELECT carac_value_Pk, fk_object, begin_date, end_date, fk_carac FROM INSERTED

 OPEN ins
 FETCH NEXT FROM ins INTO @pk, @fk_object, @beginTime, @endTime, @caracFK
 WHILE @@FETCH_STATUS = 0
 BEGIN
	
	-----TEST SI PB de date-----
	IF ((SELECT dbo.fnc_ObjectValidPeriod (@beginTime, @endTime) ) =1)
	BEGIN
		DELETE FROM TObj_Carac_value WHERE carac_value_Pk = @pk
		RAISERROR('ERROR Date : Begin date > End date', 16, 1)
		ROLLBACK -- afin de stopper l'enregistrement
	END	
	ELSE IF ((SELECT dbo.fnc_ObjectOverlapPeriodCount (@beginTime, @endTime, @fk_object, @caracFK, @pk) )> 0)
	BEGIN
		DELETE FROM TObj_Carac_value WHERE carac_value_Pk = @pk
		RAISERROR('ERROR Date : Overlap Period', 16, 1)
		ROLLBACK -- afin de stopper l'enregistrement
	END	 
	ELSE
	BEGIN
	
	
		-----UPDDATE DES ENREGISTREMENTS PLUS ANCIENS-----
		--Invalide les ancienes caractéristiques en cours
		--Si la caractéristique est ajoutée a la suite => alors mise a jour de sa date de fin si elle n'en a pas
		-- NOT o.e IS NULL AND n.e>o.b
		DECLARE @nb AS int
		SET @nb = 0
			SELECT @nb= count(*)
			FROM TObj_Carac_value AS old
			JOIN (SELECT * FROM INSERTED WHERE carac_value_Pk = @Pk) AS new
			ON old.fk_carac = new.fk_carac AND old.fk_object = new.fk_object AND NOT old.Carac_value_Pk = new.Carac_value_Pk
			WHERE new.end_date IS NULL AND COALESCE(new.end_date, CURRENT_TIMESTAMP) > old.begin_date
		--Test si caractéristique non inclusive NOT (n.e >=o.b)
		IF (@nb >  0)
		BEGIN
			UPDATE dbo.TObj_Carac_value SET end_date = (SELECT begin_date FROM INSERTED WHERE carac_value_Pk = @Pk) 
			WHERE Fk_carac= (SELECT Fk_carac FROM INSERTED WHERE carac_value_Pk = @Pk) AND  fk_object= @fk_object AND end_date IS NULL AND NOT Carac_value_Pk = @Pk;
		END
		

		-----UPDDATE Column Object_type -----
		UPDATE dbo.TObj_Carac_value SET object_type = [dbo].[fnc_GetObjectTypeStr]([fk_object])
		where Carac_value_Pk = @pk;
		
		------MISE A JOUR DE LA TABLE TVIEW INDIVIDUALS---------
		DECLARE @obj_name nvarchar(100)
		
		SELECT @obj_name = value_precision FROM TObj_Carac_value WHERE fk_carac = (SELECT Carac_type_Pk FROM dbo.TObj_Carac_type WHERE name = 'ObjectType')  AND fk_object = @fk_object

		IF (@obj_name IS NULL ) 
		BEGIN
				SELECT @obj_name = value_precision FROM INSERTED WHERE fk_carac = (SELECT Carac_type_Pk FROM dbo.TObj_Carac_type WHERE name = 'ObjectType')  AND fk_object = @fk_object
		END
			
		EXECUTE sp_DB_CreateObjectView @object_name= @obj_name, @Object_Pk = @fk_object
	END 
	
 FETCH NEXT FROM ins INTO @pk, @fk_object, @beginTime, @endTime, @caracFK
 END
 CLOSE ins
 DEALLOCATE ins
END
GO
/****** Object:  Trigger [tr_AfterUpdateCheckDateObjectView]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural Solutions
-- Create date: 13/12/2009
-- Description:	Trigger qui vérifie la validité des dates de début et de fin d'une caractéristique
-- =============================================
CREATE TRIGGER [dbo].[tr_AfterUpdateCheckDateObjectView] 
--[tr_InsteadOfUpdateCheckDate2] 
   ON  [dbo].[TObj_Carac_value]
   --INSTEAD OF UPDATE 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DECLARE @beginTime datetime, @endTime datetime, @objectFK int, @caracFK int, @objValuePK int, @Msg varchar

DECLARE cCheckDateU cursor for SELECT begin_date, end_date, fk_object, fk_carac, Carac_value_Pk FROM INSERTED

OPEN cCheckDateU

FETCH NEXT FROM cCheckDateU INTO @beginTime, @endTime, @objectFK, @caracFK, @objValuePK

WHILE @@FETCH_STATUS = 0
BEGIN
	Print 'After Update';
	If (update(begin_date)) or (update(end_date))
	Begin
		IF ((SELECT dbo.fnc_ObjectValidPeriod (@beginTime, @endTime) ) =1)
		BEGIN
			RAISERROR('ERROR Date : Begin date > End date', 16, 1)
			ROLLBACK -- afin de stopper l'enregistrement
		END	
		
		IF ((SELECT dbo.fnc_ObjectOverlapPeriodCount (@beginTime, @endTime, @objectFK, @caracFK, @objValuePK) )> 0)
		BEGIN
			--set @Msg = ' start:' + CONVERT(varchar, @beginTime, 103) + ' end:' + CONVERT(varchar, @endTime, 103);
			RAISERROR(N'ERROR Date : Overlap Period', 16, 1)
			ROLLBACK -- afin de stopper l'enregistrement
		END	
	END 
	
	DECLARE @obj_name nvarchar(100);
	SELECT @obj_name = value_precision FROM TObj_Carac_value 
	WHERE fk_carac = (SELECT Carac_type_Pk FROM dbo.TObj_Carac_type WHERE name = 'ObjectType')  
	AND fk_object = @objectFK;
	EXECUTE sp_DB_CreateObjectView @object_name= @obj_name, @Object_Pk = @objectFK;
	
	--ELSE
	--BEGIN
		--Print 'Update' 
	--	UPDATE val SET 
	--		[Fk_carac] = i.Fk_carac,[fk_object] = i.fk_object
	--		,[value] = i.value,[value_precision] = i.value_precision
	--		,[begin_date] = i.begin_date,[end_date] = i.end_date,[creation_date] = i.creation_date
	--		,[comments] = i.comments
	--		,[object_type] = i.object_type
	--	FROM [TObj_Carac_value] AS val
	--	JOIN INSERTED AS i
	--	ON i.Carac_value_PK = val.Carac_value_PK
	--	WHERE i.Carac_value_Pk = @objValuePK
	--END 
FETCH NEXT FROM cCheckDateU INTO @beginTime, @endTime, @objectFK, @caracFK, @objValuePK
END 
CLOSE cCheckDateU
DEALLOCATE cCheckDateU

END
GO
/****** Object:  Trigger [tr_AfterDeleteObjectView]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE TRIGGER [dbo].[tr_AfterDeleteObjectView]
--[tr_updateDeleteObjectView2]
   ON [dbo].[TObj_Carac_value]
   AFTER DELETE
AS
BEGIN
 	
 --Pour chaque caractéristique insérée
 DECLARE @Pk int
 DECLARE @obj_name nvarchar(100)
 DECLARE u CURSOR FOR SELECT DISTINCT fk_object, object_type FROM DELETED
 OPEN u
 FETCH NEXT FROM u INTO @pk, @obj_name
 WHILE @@FETCH_STATUS = 0
 BEGIN
		Print 'After Delete';
		Print @pk;
		------MISE A JOUR DE LA TABLE TVIEW INDIVIDUALS---------
		-- CAS où l'objet a été complétement supprimé dans la table Tobj_objects
		IF (SELECT COUNT(*) FROM TObj_Objects WHERE Object_Pk = @Pk ) = 0
		BEGIN
			DECLARE @sql nvarchar(1000)
			SET @sql =  'DELETE FROM TView' + @obj_name +' WHERE '+@obj_name+'_Obj_PK = '+CAST(@Pk as varchar(50))
			exec sp_executesql @sql
		END
		ELSE
		BEGIN
			EXECUTE sp_DB_CreateObjectView @object_name= @obj_name, @Object_Pk = @Pk
		END

 FETCH NEXT FROM u INTO @pk, @obj_name
 END
 CLOSE u
 DEALLOCATE u


END
GO
/****** Object:  Table [dbo].[TProtocol_Building_and_Activities]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Building_and_Activities](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Element_Nb] [int] NULL,
	[Id_Impact] [int] NULL,
	[Name_Impact] [nvarchar](250) NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaTProtocol_Bulding_and_Activities_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_BuildingAndActivities_Impact_Station] UNIQUE NONCLUSTERED 
(
	[FK_TSta_ID] ASC,
	[Id_Impact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Impact] ON [dbo].[TProtocol_Building_and_Activities] 
(
	[Id_Impact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PK_TStat_ID] ON [dbo].[TProtocol_Building_and_Activities] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Chiroptera_detection]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TProtocol_Chiroptera_detection](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NULL,
	[Id_Taxon] [int] NULL,
	[Name_Taxon] [varchar](1000) NULL,
	[Ind_Id] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Time] [datetime] NULL,
	[Comments] [nvarchar](255) NULL,
	[File_name] [nvarchar](255) NULL,
	[Id_Call_type] [int] NULL,
	[Name_Call_type] [nvarchar](255) NULL,
	[Flutter_0_min] [float] NULL,
	[Flutter_0_max] [float] NULL,
	[Id_Activity_type] [int] NULL,
	[Name_Activity_type] [nvarchar](255) NULL,
	[Recorded] [bit] NOT NULL,
	[Id_Record_type] [int] NULL,
	[Name_Record_type] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaTProtocol_Chiro_det_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Chiroptera_detection] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Individual] ON [dbo].[TProtocol_Chiroptera_detection] 
(
	[Ind_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Taxon] ON [dbo].[TProtocol_Chiroptera_detection] 
(
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Number] ON [dbo].[TProtocol_Chiroptera_detection] 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Chiroptera_capture]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TProtocol_Chiroptera_capture](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NULL,
	[Id_Taxon] [int] NOT NULL,
	[Name_Taxon] [varchar](1000) NULL,
	[Dead] [bit] NOT NULL,
	[Number] [int] NULL,
	[Hour] [datetime] NULL,
	[Ind_Id] [nvarchar](50) NULL,
	[Id_Age] [int] NOT NULL,
	[Name_Age] [varchar](200) NULL,
	[Id_Sex] [int] NULL,
	[Name_Sex] [nvarchar](255) NULL,
	[Picture] [bit] NOT NULL,
	[Recatch] [bit] NOT NULL,
	[Recorded] [bit] NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[FA] [float] NULL,
	[Tib] [float] NULL,
	[D3] [float] NULL,
	[D3_1] [float] NULL,
	[D3_2] [float] NULL,
	[D3_3] [float] NULL,
	[D4] [float] NULL,
	[D4_1] [float] NULL,
	[D4_2] [float] NULL,
	[D5] [float] NULL,
	[D5_1] [float] NULL,
	[D5_2] [float] NULL,
	[CM3] [float] NULL,
	[D1] [float] NULL,
	[Claw_D1] [float] NULL,
	[tragus_Lenght] [float] NULL,
	[tragus_Width] [float] NULL,
	[Weight] [float] NULL,
	[CommentsBiometry] [nvarchar](255) NULL,
	[Id_Rep_Male] [int] NULL,
	[Name_Rep_Male] [nvarchar](255) NULL,
	[Id_Rep_Female] [int] NULL,
	[Name_Rep_Female] [nvarchar](255) NULL,
	[Id_Maturity_Female] [int] NULL,
	[Name_Maturity_Female] [nvarchar](255) NULL,
	[CommentsPhysiology] [nvarchar](255) NULL,
	[Sampled] [bit] NOT NULL,
 CONSTRAINT [aaaaaTProtocol_Chiro_capt_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TProtocol_Station_equipment]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Station_equipment](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[id_action_type] [int] NOT NULL,
	[name_action_type] [nvarchar](250) NOT NULL,
	[id_sensor_type] [int] NULL,
	[name_sensor_type] [nvarchar](250) NOT NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [Pk_Station_equipment] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Station_Description]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Station_Description](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_TSta_ID] [int] NULL,
	[Id_Landscape] [int] NULL,
	[Name_Landscape] [nvarchar](500) NULL,
	[Id_VegetationType] [int] NULL,
	[Name_VegetationType] [nvarchar](100) NULL,
	[Name_Flora_Main_Species_1] [nvarchar](max) NULL,
	[Name_Flora_Main_Species_2] [nvarchar](max) NULL,
	[Name_Flora_Main_Species_3] [nvarchar](max) NULL,
	[Id_Substrat] [int] NULL,
	[Name_Substrat] [nvarchar](250) NULL,
	[Id_Topography] [int] NULL,
	[Name_Topography] [nvarchar](250) NULL,
	[Id_Exposition] [int] NULL,
	[Name_Exposition] [nvarchar](250) NULL,
	[Id_Slope_Class] [int] NULL,
	[Name_Slope_Class] [nvarchar](250) NULL,
	[Area] [float] NULL,
	[Cover] [float] NULL,
	[Id_Moisture] [int] NULL,
	[Name_Moisture] [nvarchar](100) NULL,
	[Id_Density_herbs] [int] NULL,
	[Name_Density_herbs] [nvarchar](100) NULL,
	[Id_Density_bushes] [int] NULL,
	[Name_Density_bushes] [nvarchar](100) NULL,
	[Id_Density_trees] [int] NULL,
	[Name_Density_trees] [nvarchar](100) NULL,
	[Id_Greeness_herbs] [int] NULL,
	[Name_Greeness_herbs] [nvarchar](100) NULL,
	[Id_Greeness_bushes] [int] NULL,
	[Name_Greeness_bushes] [nvarchar](100) NULL,
	[Id_Greeness_trees] [int] NULL,
	[Name_Greeness_trees] [nvarchar](100) NULL,
	[Phenology_Vegetative_herbs] [bit] NOT NULL,
	[Phenology_Flowering_herbs] [bit] NOT NULL,
	[Phenology_Seeding_herbs] [bit] NOT NULL,
	[Phenology_Vegetative_bushes] [bit] NOT NULL,
	[Phenology_Flowering_bushes] [bit] NOT NULL,
	[Phenology_Seeding_bushes] [bit] NOT NULL,
	[Phenology_Vegetative_trees] [bit] NOT NULL,
	[Phenology_Flowering_trees] [bit] NOT NULL,
	[Phenology_Seeding_trees] [bit] NOT NULL,
	[Last_Rain_event] [nvarchar](100) NULL,
	[Houbara_Suitable] [bit] NOT NULL,
	[Comments] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Simplified_Habitat]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Simplified_Habitat](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name_Habitat] [nvarchar](255) NULL,
	[Id_Habitat] [int] NULL,
	[Name_Habitat2] [nvarchar](255) NULL,
	[Id_Habitat2] [int] NULL,
	[Id_Geomorphology] [int] NULL,
	[Name_Geomorphology] [nvarchar](255) NULL,
	[Name_Flora_Main_Species_1] [nvarchar](255) NULL,
	[Id_Flora_Main_Species_1] [int] NULL,
	[Name_Flora_Main_Species_2] [nvarchar](255) NULL,
	[Id_Flora_Main_Species_2] [int] NULL,
	[Name_Flora_Main_Species_3] [nvarchar](255) NULL,
	[Id_Flora_Main_Species_3] [int] NULL,
	[Vegetation_cover] [int] NULL,
	[Perennial_cover] [int] NULL,
	[Comments] [nvarchar](255) NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Cultivated_1] [bit] NOT NULL,
	[Cultivated_2] [bit] NOT NULL,
	[Cultivated_3] [bit] NOT NULL,
 CONSTRAINT [aaaaaTProtocol_Simplified_Habitat_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Flora_Main_Species_1] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[Id_Flora_Main_Species_1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Flora_Main_Species_3] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[Id_Flora_Main_Species_3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Habitat] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[Id_Habitat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_Unique_TprotoSimpleHabitat_FKSta] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [THobM_PK_ID] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[Id_Flora_Main_Species_2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TVegDom_PK_ID] ON [dbo].[TProtocol_Simplified_Habitat] 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Sighting_conditions]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Sighting_conditions](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Obs_duration_old] [int] NULL,
	[Id_Weather] [int] NULL,
	[Name_Weather] [nvarchar](250) NULL,
	[Id_Wind_Force] [int] NULL,
	[Name_Wind_Force] [nvarchar](250) NULL,
	[Temperature] [int] NULL,
	[Comments] [nvarchar](255) NULL,
	[Start_time] [datetime] NULL,
	[End_time] [datetime] NULL,
	[Observation_Duration] [datetime] NULL,
	[Visibility] [bit] NOT NULL,
	[Observation_Incomplete] [bit] NOT NULL,
	[Id_Observation_Tool] [int] NULL,
	[Name_Observation_Tool] [nvarchar](250) NULL,
 CONSTRAINT [aaaaaTProtocol_Sighting_conditions_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Clouds] ON [dbo].[TProtocol_Sighting_conditions] 
(
	[Id_Weather] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Wind_Force] ON [dbo].[TProtocol_Sighting_conditions] 
(
	[Id_Wind_Force] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_Unique_TprotoSight_FKSta] ON [dbo].[TProtocol_Sighting_conditions] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Sampling]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Sampling](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[Id_Sample] [int] NULL,
	[Name_Sample] [nvarchar](500) NOT NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaTProtocol_Sampling_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_TSta_ID] ON [dbo].[TProtocol_Sampling] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_Prelevement] ON [dbo].[TProtocol_Sampling] 
(
	[Id_Sample] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Qry_MonitoredSites]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[V_Qry_MonitoredSites] as
SELECT  CASE 
		WHEN RIGHT(YEAR(CURRENT_TIMESTAMP), 2) = LEFT(NAME, 2) THEN COALESCE(STUFF(NAME, CHARINDEX(RIGHT(YEAR(CURRENT_TIMESTAMP), 2),NAME), 2, 'z'),NAME ) 
		ELSE name
	END	AS Name, 
	Name AS Monitored_site,
	[id_Type] as IdType,[name_Type] as Type, TGeoPos_Begin_Date AS Date, 
TMonitoredStations_Positions.TGeoPos_LAT as LAT, TMonitoredStations_Positions.TGeoPos_LON as LON, 
TMonitoredStations_Positions.TGeoPos_ELE as ELE, TMonitoredStations.TGeo_pk_id, Active
FROM TMonitoredStations_Positions INNER JOIN TMonitoredStations ON TMonitoredStations_Positions.TGeoPos_FK_TGeo_ID = TMonitoredStations.TGeo_pk_id
     WHERE TMonitoredStations_Positions.TGeoPos_End_Date Is Null AND TMonitoredStations.active=1;
GO
/****** Object:  Trigger [tr_InsertUpdate_CreateStationName]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  Natural Solutions
-- Create date: 01/12/2009
-- Description: Déclancheur forçant la création d'un nom de station si celui ci n'a pas été spécifié
-- Le nom de la station correspond à : STA_{Tsta_PK_ID}
-- =============================================
CREATE TRIGGER [dbo].[tr_InsertUpdate_CreateStationName]
   ON  [dbo].[TStations] 
   AFTER INSERT ,UPDATE
AS 
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;
 
 UPDATE TStations SET name = 'Sta_' + CAST(Tsta_PK_ID AS nvarchar(500)) WHERE name IS NULL
 

END
GO
/****** Object:  Trigger [tr_Insert_testDuplcateStation]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_Insert_testDuplcateStation]
   ON [dbo].[TStations]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @nbDelete int, @id int, @lat decimal(9,5) , @lon decimal(9,5) ,  @date datetime, @nbRd int, @name nvarchar(100)
	DECLARE @name2 nvarchar(100)
	
	DELETE FROM TLogTriggers 
	
	SET @nbDelete = 0
	
	--Pour chaque station
    DECLARE C CURSOR FOR SELECT TSta_PK_ID, lat, lon, date, name FROM INSERTED
	
	OPEN C
	FETCH NEXT FROM C INTO @id, @lat, @lon, @date, @name
	
	WHILE @@FETCH_STATUS =0
	BEGIN
	IF LEFT(@name ,5) = 'ARGOS'
		--Une station avec un nom different (PTT different) peut avoir les mêmes coord qu'une autre
		SELECT @nbRd = COUNT(*) FROM TSTATIONS s WHERE s.lat = @lat AND s.lon = @lon AND s.date = @date and s.Name = @name
	ELSE
		--Une différence du nom seul n'est pas suffisante dans les autres cas
		SELECT @nbRd = COUNT(*) FROM TSTATIONS s WHERE s.lat = @lat AND s.lon = @lon AND s.date = @date
		
	--PRINT @nbRd
	--Print @name2
		--Test si la station existe déjà dans la base
		IF @nbRd > 1
		--If not @name2 is null and @name2 <> ''
		BEGIN --Si la station existe déjà dans la base = ne pas l'insérer
			SET @nbDelete = @nbDelete +1
			select @name2 = Name from (select top 1 s.Name FROM TSTATIONS s WHERE s.lat = @lat AND s.lon = @lon AND s.date = @date and s.Name <> @name) T
			DELETE FROM TSTATIONS WHERE TSTA_PK_ID = @id
			--PRINT 'Station delete (' + cast(@lat as nvarchar) + ', ' + cast(@lon  as nvarchar) + ', ' 
			--			+ cast(@date as nvarchar) + ') ' + cast(@nbRd as nvarchar) + ' nb occurences'
			PRINT 'Station can''t be inserted'
		END
		
		FETCH NEXT FROM C INTO @id, @lat, @lon, @date, @name
	END
	
	CLOSE C
	DEALLOCATE C
	
	--Si doublons détectés alors insérer résultat de la délétion dans la table TlogTriggers
	INSERT INTO TLogTriggers (PK,[tableName]
           ,[triggerName]
           ,[date]
           ,[result]
           , duplistaname)
    VALUES (1,'TStations', 'tr_Insert_testDuplcateStation', CURRENT_TIMESTAMP, CAST(@nbDelete AS nvarchar), @name2)
    --VALUES ('TStations', 'tr_Insert_testDuplcateStation', CURRENT_TIMESTAMP, 'Station duplicated with ' + @name2)

END
GO
/****** Object:  View [dbo].[V_Qry_Nest_TheoricalNest_AllYear]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_Nest_TheoricalNest_AllYear]
AS 
SELECT
	TMonitoredStations.TGeo_pk_id AS TSta_FK_TGeo_ID,
	CASE 
		WHEN RIGHT(YEAR(CURRENT_TIMESTAMP), 2) = LEFT(NAME, 2) THEN COALESCE(STUFF(NAME, CHARINDEX(RIGHT(YEAR(CURRENT_TIMESTAMP), 2),NAME), 2, 'z'),NAME ) 
		ELSE name
	END	AS Name, 
	Name AS Monitored_site,
	TMonitoredStations_Positions.TGeoPos_LAT AS LAT, 
	TMonitoredStations_Positions.TGeoPos_LON AS Lon, 
	TMonitoredStations_Positions.TGeoPos_ELE AS ELE , 
	TMonitoredStations_Positions.TGeoPos_Date AS DATE,
	TMonitoredStations_Positions.TGeoPos_Precision As Precision , 
	TMonitoredStations.name_Type AS site_Type,
	TMonitoredStations.name_Type AS site_IdType,
	TMonitoredStations.Name AS label,
	TMonitoredStations.Name AS Site_name,
	null AS NbFieldworker,
	null AS Fieldworker1,
	null AS Fieldworker2,
	null AS FieldActivity_Name
FROM         
	dbo.TMonitoredStations 
INNER JOIN
	dbo.TMonitoredStations_Positions 
ON TMonitoredStations.TGeo_pk_id = TMonitoredStations_Positions.TGeoPos_FK_TGeo_ID
WHERE     
	TMonitoredStations_Positions.TGeoPos_End_Date IS NULL
	AND TMonitoredStations.name_Type LIKE N'Nest'
GO
/****** Object:  Trigger [tr_AfterUpdateTransectsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Transects update
CREATE TRIGGER [dbo].[tr_AfterUpdateTransectsToProtocoleSummary]
ON [dbo].[TProtocol_Transects]
AFTER UPDATE
as
Begin
print('After Update Transects')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,15,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,15,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateTracks_and_CluesToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Tracks_and_Clues update
CREATE TRIGGER [dbo].[tr_AfterUpdateTracks_and_CluesToProtocoleSummary]
ON [dbo].[TProtocol_Track_clue]
AFTER UPDATE
as
Begin
print('After Update Tracks_and_Clues')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,6,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,6,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateStation_equipmentToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Station_equipment update
CREATE TRIGGER [dbo].[tr_AfterUpdateStation_equipmentToProtocoleSummary]
ON [dbo].[TProtocol_Station_equipment]
AFTER UPDATE
as
Begin
print('After Update Station_equipment')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,29,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,29,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateStation_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Station_description update
CREATE TRIGGER [dbo].[tr_AfterUpdateStation_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_habitat]
AFTER UPDATE
as
Begin
print('After Update Station_description')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,8,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,8,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateSimplified_HabitatToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Simplified_Habitat update
CREATE TRIGGER [dbo].[tr_AfterUpdateSimplified_HabitatToProtocoleSummary]
ON [dbo].[TProtocol_Simplified_Habitat]
AFTER UPDATE
as
Begin
print('After Update Simplified_Habitat')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,1,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,1,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateSighting_conditionsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Sighting_conditions update
CREATE TRIGGER [dbo].[tr_AfterUpdateSighting_conditionsToProtocoleSummary]
ON [dbo].[TProtocol_Sighting_conditions]
AFTER UPDATE
as
Begin
print('After Update Sighting_conditions')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,7,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,7,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdatePlant_inventoryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Plant_inventory update
CREATE TRIGGER [dbo].[tr_AfterUpdatePlant_inventoryToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_releve]
AFTER UPDATE
as
Begin
print('After Update Plant_inventory')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,9,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,9,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateNest_and_clutch_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Nest_and_clutch_description update
CREATE TRIGGER [dbo].[tr_AfterUpdateNest_and_clutch_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Nest_Description]
AFTER UPDATE
as
Begin
print('After Update Nest_and_clutch_description')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,2,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,2,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateEntomo_populationToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Entomo_population update
CREATE TRIGGER [dbo].[tr_AfterUpdateEntomo_populationToProtocoleSummary]
ON [dbo].[TProtocol_Entomo_population]
AFTER UPDATE
as
Begin
print('After Update Entomo_population')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,11,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,11,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_interviewingToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_interviewing update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_interviewingToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_interview]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_interviewing')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,22,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,22,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_Individual_DeathToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Individual_Death update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_Individual_DeathToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual_Death]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Individual_Death')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,20,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,20,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_CaptureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Capture update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_CaptureToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Group]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Capture')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,18,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,18,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_ReleaseToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Release update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_ReleaseToProtocoleSummary]
ON [dbo].[TProtocol_Release_Group]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Release')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,28,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,28,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  View [dbo].[V_Qry_VIndiv_MonitoredLostPostReleaseIndividuals_LastStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_VIndiv_MonitoredLostPostReleaseIndividuals_LastStations
CREATE VIEW [dbo].[V_Qry_VIndiv_MonitoredLostPostReleaseIndividuals_LastStations]
AS
SELECT     CASE WHEN NOT id5@TCarac_Transmitter_Frequency IS NULL THEN 'x' + RIGHT(id5@TCarac_Transmitter_Frequency, LEN(id5@TCarac_Transmitter_Frequency) - 2) 
	ELSE stMap.Name END AS Name, stMap.[Site_name], sta.StaType, stMap.[Name] AS StaName, 
	SUBSTRING(CAST(ind.id5@TCarac_Transmitter_Frequency AS nvarchar), 3, LEN(CAST(ind.id5@TCarac_Transmitter_Frequency AS nvarchar))) label, 
	Individual_Obj_PK AS Fk_TInd_ID, id5@TCarac_Transmitter_Frequency AS Frequency, FreqOpti@Station AS [FreqOpti], 
	RelCaptTag = CASE WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code ELSE id9@TCarac_Release_Ring_Code END, 
	ind.id34@TCaracThes_Species As species_id, ind.id34@TCaracThes_Species_Precision AS species,ind.id34@TCaracThes_Species_Precision,
	ind.id12@TCarac_Breeding_Ring_Code AS BreedingRingCode, 
	SurveyType@Station, MonitoringStatus@Station,
	ind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
	ind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType,  
	id33@Thes_Origin_Precision AS Origin, 
	id30@TCaracThes_Sex_Precision AS Sex, stMap.[TSta_PK_ID], stMap.[FieldWorker1], stMap.[FieldWorker2], stMap.[FieldWorker3], stMap.[FieldWorker4], stMap.[FieldWorker5], stMap.[NbFieldWorker], stMap.[FieldActivity_Name], 
	stMap.[Area], stMap.[Locality], stMap.[DATE], stMap.[LAT], stMap.[LON], stMap.[Precision], stMap.[ELE], stMap.[Creator], stMap.[Creation_date], 
	stMap.[TSta_FK_TGeo_ID], stMap.[Site_Idtype], stMap.[Site_type], stMap.[FieldActivity_ID], prInd.Name_signal_type
FROM  (
	SELECT     *	
	FROM          dbo.TViewIndividual
	WHERE      NOT id5@TCarac_Transmitter_Frequency IS NULL 
		AND id60@TCaracThes_Monitoring_Status IN ( 1000452, 1000451,1000469) --1000452    Lost; 1000451    Monitored; 1000469 Check
	) ind 
	OUTER apply dbo.fn_v_qry_GetMaxStationForPr(Individual_Obj_PK, 100) sta 
	JOIN dbo.V_Qry_StationsForMap stMap ON sta.Sta_Id = TSta_PK_ID
	JOIN TProtocol_Vertebrate_Individual prInd
	ON TSta_PK_ID = FK_TSta_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VIndiv_MonitoredLostPostReleaseIndividuals_LastStations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VIndiv_MonitoredLostPostReleaseIndividuals_LastStations'
GO
/****** Object:  View [dbo].[V_Qry_VGroups_AllTaxons_EnjilDamStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_VGroups_AllTaxons_EnjilDamStations
CREATE VIEW [dbo].[V_Qry_VGroups_AllTaxons_EnjilDamStations]
AS
SELECT     stMap.Site_name AS Monitored_station_name, stMap.Name AS Station_Name, stMap.DATE, prg.Name_Taxon AS English_name, T.definition_fr AS Latin_name, 
                      T.topic_fr AS French_Name_Taxon, prg.Nb_Total AS Number_of_individuals, stMap.TSta_PK_ID, stMap.FieldWorker1, stMap.FieldWorker2, stMap.NbFieldWorker, 
                      stMap.FieldActivity_Name, stMap.Area, stMap.Locality, stMap.LAT, stMap.LON, stMap.Precision, stMap.ELE, stMap.Creator, stMap.Creation_date, 
                      stMap.TSta_FK_TGeo_ID, stMap.Site_idType, stMap.Site_type, stMap.FieldActivity_ID
FROM         dbo.V_Qry_StationsForMap AS stMap INNER JOIN
                      dbo.TProtocol_Vertebrate_Group AS prg ON stMap.TSta_PK_ID = prg.FK_TSta_ID INNER JOIN
                      dbo.Tthesaurus AS T ON prg.Id_Taxon = T.ID
WHERE     (stMap.Site_name LIKE '%enjil') AND (stMap.Site_type = 'dam')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "stMap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prg"
            Begin Extent = 
               Top = 133
               Left = 153
               Bottom = 239
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "T"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 125
               Right = 487
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VGroups_AllTaxons_EnjilDamStations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VGroups_AllTaxons_EnjilDamStations'
GO
/****** Object:  View [dbo].[V_Qry_VGroups_AllTaxons_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_VGroups_AllTaxons_AllStations
CREATE view [dbo].[V_Qry_VGroups_AllTaxons_AllStations] as
select s.TSta_PK_ID,s.Name, s.DATE, s.FieldWorker1, s.FieldWorker2, s.FieldWorker3, s.FieldWorker4, s.FieldWorker5, s.FieldActivity_Name, s.NbFieldWorker, s.Area,
s.Locality, s.ELE, s.Precision, s.LAT, s.LON, s.Site_name, s.Site_type,
g.Name_Taxon,t.definition_en as LatinName,class.class,g.Nb_Adult_Female, g.Nb_Adult_Male, g.Nb_Adult_Indeterminate, g.Nb_Indeterminate, 
g.Nb_Juvenile_Female, g.Nb_Juvenile_Indeterminate, g.Nb_Juvenile_Male, g.Nb_NewBorn_Indeterminate, g.Nb_Total,
g.Name_Behaviour, g.Comments, g.Identity_sure, g.PK as GroupPK
from dbo.V_Qry_StationsForMap s
inner join 
dbo.TProtocol_Vertebrate_Group g
on s.TSta_PK_ID = g.FK_TSta_ID
inner join dbo.Tthesaurus t
on g.Id_Taxon = t.ID
inner join 
(SELECT     tax.ID, CAST(tax.topic_en AS nvarchar(255)) AS taxon, SUBSTRING(tax.hierarchy, 1, 15) AS Hierarchy, 
 class.ID AS classID, 
CAST(class.topic_en AS nvarchar(255)) AS class
FROM         (SELECT     ID, Id_Type, Id_Parent, hierarchy, topic_fr, topic_en, definition_fr, 
definition_en, Reference, FK_Creator, Creation_date, 
          FK_Contacts_Id_Modificateur, Date_heure_modification, available_EAU, available_Morocco
FROM          dbo.Tthesaurus
WHERE      (Id_Type = 1139238005)) AS tax INNER JOIN
dbo.Tthesaurus AS class ON SUBSTRING(tax.hierarchy, 1, 11) = class.hierarchy) class
on g.Id_Taxon = class.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "V"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TProtocol_Vertebrate_Group"
            Begin Extent = 
               Top = 18
               Left = 279
               Bottom = 137
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 24
         End
         Begin Table = "Tthesaurus_Taxon"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tthesaurus_Behaviour"
            Begin Extent = 
               Top = 366
               Left = 38
               Bottom = 485
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VGroups_AllTaxons_AllStations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_VGroups_AllTaxons_AllStations'
GO
/****** Object:  View [dbo].[V_Qry_Released_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_AllStations
CREATE view [dbo].[V_Qry_Released_AllStations] AS
--max on date and not on DaysSinceRelease 
--because we can have several stations same date, different time (Argos)
select
rel.Ind_ID,
rel.Origin,
rel.Taxon,
rel.CurrentMonitoringStatus,
rel.CurrentSurveyType,
rel.CurrentVHF,
rel.CurrentVHFModel,
rel.CurrentPTT,
rel.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
rel.Sex,
rel.ReleaseRing,
rel.ChipCode,
rel.Mark1Color,
rel.Mark1Position,
rel.Mark1Code,
rel.Mark2Color,
rel.Mark2Position,
rel.Mark2Code,
rel.BirthDate,
rel.DeathDate,
rel.RelMethod_ID,
rel.RelMethod,
rel.RelSta_ID,
rel.RelStaName,
rel.RelStaDate,
rel.RelArea,
rel.RelLocality,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
datediff(Day, CAST(FLOOR(CAST(rel.RelStaDate AS float)) AS datetime),CAST(FLOOR(CAST(T.StaDate AS float)) AS datetime)) as DaysSinceRelease,
s.Area,
s.Locality,
s.LAT,
s.LON,
s.Precision,
s.FW1,
s.FW2,
s.FW3,
s.FW4,
s.FW5,
s.FA_ID,
s.FA,
s.Creator,
s.CreationDate
from (
	select Ind_ID,
		Origin,
		Taxon,
		VHF@Station,
		VHFModel@Station,
		PTT@Station,
		PTTModel@Station,
		StaType,
		Sta_ID,
		StaName,
		StaDate
	from V_Qry_AllIndivs_Equip@Station --Origin = 'release'
	where Origin_ID = 18904 and Taxon Like '%Houbara%'
) as T
INNER JOIN (
	select 
		Ind_ID,
		Origin,Sex,Taxon,
		Mark1Color,	Mark1Position,Mark1Code,Mark2Color,Mark2Position,Mark2Code,
		RelMethod_ID,RelMethod,
		BirthDate,DeathDate,ReleaseRing,ChipCode,
		CurrentMonitoringStatus,CurrentSurveyType, CurrentVHF,CurrentVHFModel, CurrentPTT,CurrentPTTModel,
		Sta_ID as RelSta_ID,
		StaName as RelStaName,
		StaDate as RelStaDate,
		Area as RelArea,
		Locality as RelLocality
	from V_Qry_Released_FirstStation 
) as rel
ON T.Ind_ID = rel.Ind_ID
inner join(
	select TSta_PK_ID,
		Area,
		Locality,
		LAT,
		LON,
		Precision,
		FieldWorker1 as FW1,
		FieldWorker2 as FW2,
		FieldWorker2 as FW3,
		FieldWorker2 as FW4,
		FieldWorker2 as FW5,
		FieldActivity_ID as FA_ID,
		FieldActivity_Name as FA,
		Creator,
		Creation_date as CreationDate
	from V_Qry_StationsForMap
) s
on s.TSta_PK_ID = T.Sta_ID
GO
/****** Object:  View [dbo].[V_Qry_Invalid_Individuals_SexORAge]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[V_Qry_Invalid_Individuals_SexORAge]
AS
SELECT 
Individual_Obj_Pk, Frequency, NumBagRel, Age, Sex, Site_type, isError
FROM (
	SELECT
		ind.Individual_Obj_Pk,
		ind.id5@TCarac_Transmitter_Frequency As Frequency,
		ind.id9@TCarac_Release_Ring_Code As NumBagRel,
		ind.id2@Thes_Age_Precision As Age,
		id30@TCaracThes_Sex_Precision As Sex,
		sta.Site_type As Site_type,
		isError = 
		CASE
			WHEN sta.Site_idType = 25640 AND NOT (ind.id2@Thes_Age =18879 AND ind.id30@TCaracThes_Sex = 18873) THEN 1
			WHEN sta.Site_idType =18990 AND NOT (ind.id2@Thes_Age =18879 AND ind.id30@TCaracThes_Sex= 18874 ) THEN 1
			ELSE 0
		END
	FROM (
		SELECT 
			TProtocol_Vertebrate_individual.FK_TInd_ID,
			v.Site_type ,v.Site_idType
		FROM 
			dbo.V_Qry_StationsForMap	v
		LEFT OUTER JOIN
			dbo.TProtocol_Vertebrate_individual
		ON v.TSta_PK_ID  = TProtocol_Vertebrate_individual.FK_TSta_ID
		WHERE 
			NOT TProtocol_Vertebrate_individual.FK_TInd_ID IS NULL
			AND v.Site_idType = 18990 --18990 :  N'Nest', 25640 : Display site 18878: juvenile, 18879 : adult , 18873: male, 18874: female
			OR v.Site_idType = 25640 
	) sta
	JOIN
		dbo.TViewIndividual ind
	ON ind.Individual_Obj_Pk = sta.FK_TInd_ID
) d
WHERE d.isError =1
GO
/****** Object:  View [dbo].[V_Qry_Hunting_bag_first_station]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Hunting_bag_first_station
CREATE view [dbo].[V_Qry_Hunting_bag_first_station] as
select Individual_Obj_PK as Ind_Id, i.id12@TCarac_Breeding_Ring_Code as BreedRing, 
case when i.id12@TCarac_Breeding_Ring_Code like 'u8%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u8','198')
when i.id12@TCarac_Breeding_Ring_Code like 'u9%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u9','199')
when i.id12@TCarac_Breeding_Ring_Code like 'u0%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u0','200')
when i.id12@TCarac_Breeding_Ring_Code like 'u1%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u1','201')
when i.id12@TCarac_Breeding_Ring_Code like 'u2%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u','202')
else null end as Generation
,i.id13@TCarac_Chip_Code as ChipCode,
i.id9@TCarac_Release_Ring_Code as RelRing,i.id33@Thes_Origin_Precision as Origin, i.id30@TCaracThes_Sex_Precision as Sex,
f.PTT@Station as FirstStaPTT,f.VHF@Station as FirstStaVHF, i.id35@Birth_date as BirthDate, i.id36@Death_date as DeathDate,
equipdeath.PTT@Station as DeathStaPTT, equipdeath.VHF@Station as DeathStaVHF,
s.TSta_PK_ID as DeathStaID,s.Name as DeathStaName, s.DATE as DeathStaDate, s.LAT as DeathStaLAT, s.LON as DeathStaLON,
s.Precision as DeathStaPrecision, s.Area as DeathStaArea, s.Locality as DeathStaLocality, d.Name_Taxon as Taxon, 
d.Name_Death_Reason as DeathReason, d.Name_Death_Time as DeathTime, d.Sure_reason as Sure, d.Sampled, d.Comments as DeathComments,
f.Sta_ID as FirstStaID, f.StaName as FirstStaName, f.StaDate as FirstStaDate, f.LAT as FirstStaLAT, f.LON as FirstStaLON, 
d.PK as DeathPK
from V_Qry_StationsForMap s
inner join TProtocol_Vertebrate_Individual_Death d
on s.TSta_PK_ID = d.FK_TSta_ID
left outer join
TViewIndividual i
inner join 
V_Qry_AllIndivs_FirstStation as f
on i.Individual_Obj_PK = f.Ind_ID
on d.FK_TInd_ID = i.Individual_Obj_PK
OUTER APPLY  dbo.fn_v_qry_GetEquipAtDate(FK_TInd_ID, DeathDate) equipdeath
where Name_Death_Reason = 'hunting' and Sure_reason = 1
GO
/****** Object:  View [dbo].[V_Qry_Houbara_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Houbara_AllStations

CREATE view [dbo].[V_Qry_Houbara_AllStations] as
select
T.Ind_ID,
T.Origin,
T.Taxon,
v.CurrentMonitoringStatus,
v.CurrentSurveyType,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
v.Mark1Color,
v.Mark1Position,
v.Mark1Code,
v.Mark2Color,
v.Mark2Position,
v.Mark2Code,
v.BirthDate,
v.DeathDate,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
s.Area,
s.Locality,
s.LAT,
s.LON,
s.Precision,
s.FW1,
s.FW2,
s.FW3,
s.FW4,
s.FW5,
s.FA_ID,
s.FA,
s.Creator,
s.CreationDate

from 
(select
VInd.Individual_Obj_PK as Ind_ID,
VInd.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
VInd.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType,
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
Null as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
Null as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate
from TViewIndividual as VInd
) as v
inner join(
	select Ind_ID,
		Origin,
		Taxon,
		VHF@Station,
		VHFModel@Station,
		PTT@Station,
		PTTModel@Station,
		StaType,
		Sta_ID,
		StaName,
		StaDate
	from V_Qry_AllIndivs_Equip@Station
where Taxon Like '%Houbara%'
) as T
on v.Ind_ID = T.Ind_ID 
inner join(
	select TSta_PK_ID,
		Area,
		Locality,
		LAT,
		LON,
		Precision,
		FieldWorker1 as FW1,
		FieldWorker2 as FW2,
		FieldWorker3 as FW3,
		FieldWorker4 as FW4,
		FieldWorker5 as FW5,
		FieldActivity_ID as FA_ID,
		FieldActivity_Name as FA,
		Creator,
		Creation_date as CreationDate
	from V_Qry_StationsForMap
) s
on s.TSta_PK_ID = T.Sta_ID
GO
/****** Object:  View [dbo].[V_Qry_Display_AllStations_with_males_data]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_Display_AllStations_with_males_data]
AS
SELECT     sta.*,ind.Individual_Obj_PK AS Individual_ID, 
                      ind.id5@TCarac_Transmitter_Frequency AS Frequency, ind.id3@TCaracThes_Transmitter_Shape_Precision AS Transmitter_shape, 
                      ind.id4@TCaracThes_Transmitter_Model_Precision AS Transmitter_model, ind.id6@TCarac_Transmitter_Serial_Number AS Transmitter_serial_number, 
                      ind.id19@TCarac_PTT AS PTT, ind.id20@TCaracThes_PTT_manufacturer_Precision AS PTT_manufacturer, 
                      ind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
					  ind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType,
                      ind.id2@Thes_Age_Precision AS Age, ind.id9@TCarac_Release_Ring_Code AS Release_ring_code, ind.id13@TCarac_Chip_Code AS Chip_code, 
                      ind.id12@TCarac_Breeding_Ring_Code AS Breeding_ring_code, ind.id30@TCaracThes_Sex_Precision AS Sex, ind.id33@Thes_Origin_Precision AS Origin, 
                      ind.id35@Birth_date AS Birthdate, ind.id36@Death_date AS Death_date, pri.Name_Behaviour AS Individual_behaviour, pri.Id_Behaviour AS Individual_id_behaviour, 
                      pri.Identification_criteria, prg.Measured_Distance, 
                      CASE WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%25760%' THEN 'NE' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17913%'
                       THEN 'Collar' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17920%' THEN 'Backpack' WHEN pri.Identification_criteria LIKE '%12351%'
                       THEN 'Merlin' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17912%' THEN 'Collar' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17922%'
                       THEN ' Black Backpack' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17916%' THEN 'Collar' WHEN pri.Identification_criteria LIKE
                       '%TCaracThes_Transmitter_Shape_Precision%17924%' THEN 'White Bakpack' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17919%'
                       THEN 'Collar' WHEN pri.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17923%' THEN 'Grey Backpack' WHEN pri.Identification_criteria LIKE
                       '%TCaracThes_Transmitter_Shape_Precision%17926%' THEN 'Brown Backpack' WHEN pri.Identification_criteria LIKE '%25760%' THEN 'NE' WHEN pri.Identification_criteria
                       LIKE '%12334%' THEN 'ATS' WHEN pri.Identification_criteria LIKE '%12352%' THEN 'Solar Backpack' END AS Transmitter_type, 
                      CASE WHEN pri.Identification_criteria LIKE '%transmitter_shape%' THEN 'x' END AS [TransmitterShape entered], 
                      CASE WHEN pri.Identification_criteria LIKE '%transmitter_model%' THEN 'x' END AS [TransmitterModel entered], 
                      CASE WHEN pri.Identification_criteria LIKE '%18873%' THEN 'Male' WHEN pri.Identification_criteria LIKE '%18874%' THEN 'Female' END AS [Sex entered], 
                      CASE WHEN pri.Identification_criteria LIKE '%TCaracThes_Release_Ring_Position_Precision],1000247%' THEN 'No ring' WHEN pri.Identification_criteria LIKE '%TCaracThes_Release_Ring_Position_Precision],17947%'
                       THEN 'Right' WHEN pri.Identification_criteria LIKE '%TCaracThes_Release_Ring_Position_Precision],17949%' THEN 'Left' END AS RelRingPosition, 
                      CASE WHEN pri.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Position_Precision],1000247%' THEN 'No ring' WHEN pri.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Position_Precision],17947%'
                       THEN 'Right' WHEN pri.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Position_Precision],17949%' THEN 'Left' END AS BreRingPosition, 
                      CASE WHEN pri.Identification_criteria LIKE '%ring_position%' THEN 'x' END AS [RingPosition entered], 
                      CASE WHEN pri.Identification_criteria LIKE '%TCaracThes_Release_Ring_Color_Precision],18722%' THEN 'Metal' WHEN pri.Identification_criteria LIKE '%TCaracThes_Release_Ring_Color_Precision],18718%'
                       THEN 'Blue' END AS [RelRing Color], 
                      CASE WHEN pri.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Color_Precision],18722%' THEN 'Metal' WHEN pri.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Color_Precision],18718%'
                       THEN 'Blue' END AS [BreRing Color], CASE WHEN pri.Identification_criteria LIKE '%ring_color%' THEN 'x' END AS [RingColor entered], 
                      CASE WHEN pri.Identification_criteria LIKE '%15889%' THEN 'North African Houbara Bustard' WHEN pri.Identification_criteria LIKE '%15888%' THEN 'Houbara Bustard' END
                       AS Species, CASE WHEN pri.Identification_criteria LIKE '%specie%' THEN 'x' END AS [Species entered], pri.PK AS PK_VIndiv
FROM         (SELECT     pr.PK, pr.FK_TSta_ID, pr.Fk_TInd_ID, pr.Fk_Group, pr.frequency, pr.id_sex, pr.name_sex, pr.id_age, pr.name_age, pr.Id_signal_type, pr.Name_signal_type, 
                                              pr.Id_Posture, pr.Name_Posture, pr.Id_Behaviour, pr.Name_Behaviour, pr.Identification_type, pr.Identification_criteria, pr.Comments, pr.Sampled, 
                                              pr.Disturbed, pr.timestamp
                       FROM          dbo.TProtocol_Vertebrate_Individual AS pr INNER JOIN
                                              dbo.Tthesaurus AS t ON pr.Id_Behaviour = t.ID
                       WHERE      (t.hierarchy LIKE N'001.090.008%')) AS pri INNER JOIN
                    (select * from  dbo.TProtocol_Vertebrate_Group where Name_Taxon like '%houbara%') prg ON pri.Fk_Group = prg.PK LEFT OUTER JOIN
                      dbo.TViewIndividual AS ind ON pri.Fk_TInd_ID = ind.Individual_Obj_PK INNER JOIN
                      dbo.V_Qry_StationsForMap AS sta ON pri.FK_TSta_ID = sta.TSta_PK_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "pri"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prg"
            Begin Extent = 
               Top = 74
               Left = 344
               Bottom = 193
               Right = 569
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ind"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 380
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sta"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 125
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Display_AllStations_with_males_data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Display_AllStations_with_males_data'
GO
/****** Object:  View [dbo].[V_Qry_DeathStation_AllIndivs_FirstSta_Equip_Data]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_DeathStation_AllIndivs_FirstSta_Equip_Data
CREATE view [dbo].[V_Qry_DeathStation_AllIndivs_FirstSta_Equip_Data] as
select Individual_Obj_PK as Ind_Id, i.id12@TCarac_Breeding_Ring_Code as BreedRing, 
case when i.id12@TCarac_Breeding_Ring_Code like 'u8%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u8','198')
when i.id12@TCarac_Breeding_Ring_Code like 'u9%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u9','199')
when i.id12@TCarac_Breeding_Ring_Code like 'u0%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u0','200')
when i.id12@TCarac_Breeding_Ring_Code like 'u1%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u1','201')
when i.id12@TCarac_Breeding_Ring_Code like 'u2%' then REPLACE (left(i.id12@TCarac_Breeding_Ring_Code,3),'u','202')
else null end as Generation
,i.id13@TCarac_Chip_Code as ChipCode,
i.id9@TCarac_Release_Ring_Code as RelRing,i.id33@Thes_Origin_Precision as Origin, i.id30@TCaracThes_Sex_Precision as Sex,
f.PTT@Station as FirstStaPTT,f.VHF@Station as FirstStaVHF, i.id35@Birth_date as BirthDate, i.id36@Death_date as DeathDate,
equipdeath.PTT@Station as DeathStaPTT, equipdeath.VHF@Station as DeathStaVHF,
s.TSta_PK_ID as DeathStaID,s.Name as DeathStaName, s.DATE as DeathStaDate, s.LAT as DeathStaLAT, s.LON as DeathStaLON,
s.Precision as DeathStaPrecision, s.Area as DeathStaArea, s.Locality as DeathStaLocality, d.Name_Taxon as Taxon, 
d.Name_Death_Reason as DeathReason, d.Name_Death_Time as DeathTime, d.Sure_reason as Sure, d.Sampled, d.Comments as DeathComments,
f.Sta_ID as FirstStaID, f.StaName as FirstStaName, f.StaDate as FirstStaDate, f.LAT as FirstStaLAT, f.LON as FirstStaLON,
d.PK as DeathPK
from V_Qry_StationsForMap s
inner join TProtocol_Vertebrate_Individual_Death d
on s.TSta_PK_ID = d.FK_TSta_ID
left outer join
TViewIndividual i
inner join 
V_Qry_AllIndivs_FirstStation as f
on i.Individual_Obj_PK = f.Ind_ID
on d.FK_TInd_ID = i.Individual_Obj_PK
OUTER APPLY  dbo.fn_v_qry_GetEquipAtDate(FK_TInd_ID, DeathDate) equipdeath
GO
/****** Object:  View [dbo].[V_Qry_Death_AllIndivs_WithFirstStation_DeathStationEquipment]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_Death_AllIndivs_WithFirstStation_DeathStationEquipment]
AS
SELECT deathInfo.*, firstSta.StaDate AS firstStaDate,  equip@Date.VHF@Station,equip@Date.PTT@Station  
FROM (
	SELECT COALESCE(CAST(id36@Death_date AS DATE), deathPr.DATE) as deathDate, *
	FROM TViewIndividual
	LEFT OUTER JOIN (
		SELECT * 
		FROM TProtocol_Vertebrate_individual_death 
		INNER JOIN dbo.V_Qry_StationsForMap sta ON dbo.TProtocol_Vertebrate_individual_death.FK_TSta_ID = sta.TSta_PK_ID
	) deathPr
	ON deathPr.FK_TInd_ID = dbo.TViewIndividual.Individual_Obj_PK 
	WHERE NOT deathPr.PK IS NULL OR NOT id36@Death_date IS NULL
) AS deathInfo
OUTER APPLY  dbo.fn_v_qry_GetMinStation (FK_TInd_ID ) firstSta
OUTER APPLY  dbo.fn_v_qry_GetEquipAtDate(FK_TInd_ID,  deathDate) equip@Date
GO
/****** Object:  View [dbo].[V_Qry_Argos_CurrentMonitoredIndividuals_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Argos_CurrentMonitoredIndividuals_AllStations
CREATE VIEW [dbo].[V_Qry_Argos_CurrentMonitoredIndividuals_AllStations]
AS
SELECT 
Ind_ID,
PTT@Station AS PTT,
PTTModel@Station , 
MonitoringStatus@Station,
SurveyType@Station,
[Origin],
vi.id30@TCaracThes_Sex_Precision AS Sex, 
vi.id2@Thes_Age_Precision AS Age,
RelCaptTag = 
CASE 
	WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code
	ELSE id9@TCarac_Release_Ring_Code
END, 
vi.id12@TCarac_Breeding_Ring_Code AS BreedingRingCode,
vi.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, vi.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
vi.id19@TCarac_PTT AS CurrentPTT,
StaType AS TypeOfData,
stMap.[TSta_PK_ID],stMap.[FieldWorker1],stMap.[FieldWorker2],stMap.[FieldWorker3],stMap.[FieldWorker4],stMap.[FieldWorker5],stMap.[NbFieldWorker],stMap.[FieldActivity_Name],stMap.[Area],
stMap.[Locality],stMap.[DATE],stMap.[LAT],stMap.[LON],stMap.[Precision],stMap.[ELE]
,stMap.[Creator],stMap.[Creation_date],stMap.[FieldActivity_ID]  
FROM (
	SELECT 
		Individual_Obj_PK,
		id12@TCarac_Breeding_Ring_Code,id9@TCarac_Release_Ring_Code, id13@TCarac_Chip_Code,
		id61@TCaracThes_Survey_type_Precision, id60@TCaracThes_Monitoring_Status_Precision, 
		id30@TCaracThes_Sex_Precision,id2@Thes_Age_Precision,
		id19@TCarac_PTT
	FROM    TViewIndividual 
	WHERE NOT id19@TCarac_PTT IS NULL --	satellite
)vi
INNER JOIN (
	SELECT  Ind_ID,PTTModel@Station , PTT@Station,StaType, Sta_ID , MonitoringStatus@Station,SurveyType@Station, [Origin] 
	FROM dbo.V_Qry_AllIndivs_Stations 
	WHERE Statype_ID IN (40, 50 )
) AS data
ON data.Ind_ID = vi.Individual_Obj_PK
INNER JOIN dbo.V_Qry_StationsForMap	stMap
ON stMap.TSta_PK_ID=data.Sta_ID
GO
/****** Object:  View [dbo].[V_Qry_Argos_AllIndivs_LastStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Argos_AllIndivs_LastStations
CREATE VIEW [dbo].[V_Qry_Argos_AllIndivs_LastStations]
AS 
SELECT 
	Ind_ID,
	PTT@Station AS PTT,
	PTTModel@Station , 
	MonitoringStatus@Station,
	SurveyType@Station,
	[Origin],
	vi.id30@TCaracThes_Sex_Precision AS Sex, 
	vi.id2@Thes_Age_Precision AS Age,
	RelCaptTag = 
	CASE 
		WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code
		ELSE id9@TCarac_Release_Ring_Code
	END, 
	vi.id12@TCarac_Breeding_Ring_Code AS BreedingRingCode,
	vi.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
	vi.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, vi.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
	vi.id19@TCarac_PTT AS CurrentPTT,
	StaType AS TypeOfData,
stMap.[TSta_PK_ID],stMap.[FieldWorker1],stMap.[FieldWorker2],stMap.[FieldWorker3],stMap.[FieldWorker4],stMap.[FieldWorker5],stMap.[NbFieldWorker],stMap.[FieldActivity_Name],stMap.[Area],
stMap.[Locality],stMap.[DATE],stMap.[LAT],stMap.[LON],stMap.[Precision],stMap.[ELE]
,stMap.[Creator],stMap.[Creation_date],stMap.[FieldActivity_ID]  
FROM (
	SELECT Individual_Obj_PK, id19@TCarac_PTT, id12@TCarac_Breeding_Ring_Code,
		id13@TCarac_Chip_Code, id9@TCarac_Release_Ring_Code,
		id59@TCaracThes_Individual_Status,
		id61@TCaracThes_Survey_type_Precision, id60@TCaracThes_Monitoring_Status_Precision, 
		id33@Thes_Origin_Precision, id30@TCaracThes_Sex_Precision,id2@Thes_Age_Precision
	FROM dbo.TViewIndividual vi
) vi
outer apply dbo.fn_v_qry_GetMaxStationForXMLPr(Individual_Obj_PK, '<table><id>40</id><id>50</id></table>') sta
JOIN dbo.V_Qry_StationsForMap stMap
ON sta.Sta_Id= TSta_PK_ID
GO
/****** Object:  View [dbo].[V_Qry_Argos_AllIndivs_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Argos_AllIndivs_AllStations
CREATE VIEW [dbo].[V_Qry_Argos_AllIndivs_AllStations]
AS
SELECT 
	Ind_ID,
	PTT@Station AS PTT,
	PTTModel@Station , 
	MonitoringStatus@Station,SurveyType@Station,
	[Origin],
	vi.id30@TCaracThes_Sex_Precision AS Sex, 
	vi.id2@Thes_Age_Precision AS Age,
	RelCaptTag = 
	CASE 
		WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code
		ELSE id9@TCarac_Release_Ring_Code
	END, 
	vi.id12@TCarac_Breeding_Ring_Code AS BreedingRingCode,
	vi.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
	vi.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, vi.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
	vi.id19@TCarac_PTT AS CurrentPTT,
	StaType AS TypeOfData,
	stMap.[TSta_PK_ID],stMap.Name,stMap.[FieldWorker1],stMap.[FieldWorker2],stMap.[FieldWorker3],stMap.[FieldWorker4],stMap.[FieldWorker5],stMap.[NbFieldWorker],stMap.[FieldActivity_Name],stMap.[Area],
	stMap.[Locality],stMap.[DATE],stMap.[LAT],stMap.[LON],stMap.[Precision],stMap.[ELE]
	,stMap.[Creator],stMap.[Creation_date],stMap.[FieldActivity_ID]  
FROM (SELECT  Ind_ID,PTTModel@Station , PTT@Station,StaType, Sta_ID ,MonitoringStatus@Station,SurveyType@Station,
[Origin] 
		FROM [dbo].V_Qry_AllIndivs_Stations 
		WHERE Statype_ID IN (40, 50 )) AS data
INNER JOIN [dbo].V_Qry_StationsForMap	stMap
ON stMap.TSta_PK_ID=data.Sta_ID
INNER JOIN (
	SELECT 
		Individual_Obj_PK,
		id12@TCarac_Breeding_Ring_Code,id9@TCarac_Release_Ring_Code, id13@TCarac_Chip_Code,
		id59@TCaracThes_Individual_Status,
		id60@TCaracThes_Monitoring_Status_Precision, id61@TCaracThes_Survey_type_Precision,
		id30@TCaracThes_Sex_Precision,id2@Thes_Age_Precision,
		id19@TCarac_PTT
	FROM    [dbo].TViewIndividual 
    )vi
ON data.Ind_ID = vi.Individual_Obj_PK
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_LastStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_LastStations
CREATE VIEW [dbo].[V_Qry_AllIndivs_LastStations] AS
SELECT 
	CASE 
		WHEN NOT id5@TCarac_Transmitter_Frequency IS NULL THEN 'x' + RIGHT(id5@TCarac_Transmitter_Frequency,LEN(id5@TCarac_Transmitter_Frequency)-2) 
		ELSE stMap.Name
	END
	AS Name,
	stMap.[Site_name],
	stMap.[Name] AS StaName,
		CASE 
		WHEN NOT ind.id5@TCarac_Transmitter_Frequency IS NULL 
           THEN 'x' + SUBSTRING(CAST(ind.id5@TCarac_Transmitter_Frequency AS nvarchar), 3, 
                      LEN(CAST(ind.id5@TCarac_Transmitter_Frequency AS nvarchar))) 
        WHEN NOT ind.id19@TCarac_PTT IS NULL 
		   THEN CAST(ind.id19@TCarac_PTT AS nvarchar) 
		WHEN NOT ind.id13@TCarac_Chip_Code IS NULL 
           THEN SUBSTRING(CAST(ind.id13@TCarac_Chip_Code AS nvarchar), 5, 
                      LEN(CAST(ind.id13@TCarac_Chip_Code AS nvarchar))) 
        ELSE 'NoMark' 
    END AS label, 
	Individual_Obj_PK AS Fk_TInd_ID, id5@TCarac_Transmitter_Frequency AS Frequency, 			
	FreqOpti@Station AS FreqOpti,convert(varchar,id19@TCarac_PTT) as PTT,id34@TCaracThes_Species_Precision,id34@TCaracThes_Species_Precision as species,
	NumBagRel = 
	CASE 
		WHEN NOT id13@TCarac_Chip_Code IS NULL THEN id13@TCarac_Chip_Code
		ELSE id9@TCarac_Release_Ring_Code
	END, 
	id12@TCarac_Breeding_Ring_Code AS Breeding_ring_code,
	id9@TCarac_Release_Ring_Code as Release_ring_code,
	id55@TCarac_Mark_code_1 as Mark1_code
	,id56@TCarac_Mark_code_2 as Mark2_code,
	id14@TCaracThes_Mark_Color_1_Precision as Mark1_color,
	id2@Thes_Age_Precision as Age,
	MonitoringStatus@Station,
	SurveyType@station,
	convert(DATE,[date]) as last_observation,
	id60@TCaracThes_Monitoring_Status_Precision as CurrentMonStatus,
	id61@TCaracThes_Survey_type_Precision as CurrentSurveyType,
	id33@Thes_Origin_Precision AS Origin,
	id30@TCaracThes_Sex_Precision AS Sex,
	stMap.[TSta_PK_ID],stMap.[FieldWorker1],stMap.[FieldWorker2],stMap.[FieldWorker3],stMap.[FieldWorker4],stMap.[FieldWorker5],stMap.[NbFieldWorker],stMap.[FieldActivity_Name],stMap.[Area],
	stMap.[Locality],stMap.[DATE],stMap.[LAT],stMap.[LON],stMap.[Precision],stMap.[ELE],stMap.[Creator],stMap.[Creation_date],
	stMap.[TSta_FK_TGeo_ID],stMap.[Site_Idtype],stMap.[Site_type],stMap.[FieldActivity_ID] 
FROM  dbo.TViewIndividual ind
outer apply dbo.fn_v_qry_GetMaxStation(Individual_Obj_PK) sta
JOIN dbo.V_Qry_StationsForMap stMap
ON sta.Sta_Id= TSta_PK_ID
GO
/****** Object:  View [dbo].[V_Qry_AllIndiv_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Modification de la vue V_Qry_AllIndiv_AllStations
CREATE view [dbo].[V_Qry_AllIndiv_AllStations] as
select
T.Ind_ID,
T.Origin,
T.Taxon,
v.CurrentSurveyType,
v.CurrentMonitoringStatus,
v.CurrentVHF,
v.CurrentVHFModel,
v.CurrentPTT,
v.CurrentPTTModel,
T.VHF@Station,
T.VHFModel@Station,
T.PTT@Station,
T.PTTModel@Station,
v.Sex,
v.BreedingRing,
v.ReleaseRing,
v.ChipCode,
v.Mark1Color,
v.Mark1Position,
v.Mark1Code,
v.Mark2Color,
v.Mark2Position,
v.Mark2Code,
v.BirthDate,
v.DeathDate,
T.StaType,
T.Sta_ID,
T.StaName,
T.StaDate,
s.Area,
s.Locality,
s.LAT,
s.LON,
s.Precision,
s.FW1,
s.FW2,
s.FW3,
s.FW4,
s.FW5,
s.FA_ID,
s.FA,
s.Creator,
s.CreationDate

from(
	select Ind_ID,
		Origin,
		Taxon,
		VHF@Station,
		VHFModel@Station,
		PTT@Station,
		PTTModel@Station,
		StaType,
		Sta_ID,
		StaName,
		StaDate
	from V_Qry_AllIndivs_Equip@Station
) as T
inner join(
	select
		VInd.Individual_Obj_PK as Ind_ID,
		VInd.id60@TCaracThes_Monitoring_Status_Precision as CurrentMonitoringStatus,
		VInd.id61@TCaracThes_Survey_type_Precision as CurrentSurveyType,
		VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
		Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
		Vind.id19@TCarac_PTT as CurrentPTT,
		Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
		VInd.id30@TCaracThes_Sex_Precision as Sex,
		VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
		VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
		VInd.id13@TCarac_Chip_Code as ChipCode,
		VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
		VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
		Null as Mark1Code,
		VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
		VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
		Null as Mark2Code,
		VInd.id35@Birth_date as BirthDate,
		VInd.id36@Death_date as DeathDate
	from TViewIndividual as VInd
) as v
on v.Ind_ID = T.Ind_ID 
inner join(
	select TSta_PK_ID,
		Area,
		Locality,
		LAT,
		LON,
		Precision,
		FieldWorker1 as FW1,
		FieldWorker2 as FW2,
		FieldWorker3 as FW3,
		FieldWorker4 as FW4,
		FieldWorker5 as FW5,
		FieldActivity_ID as FA_ID,
		FieldActivity_Name as FA,
		Creator,
		Creation_date as CreationDate
	from V_Qry_StationsForMap
) s
on s.TSta_PK_ID = T.Sta_ID
GO
/****** Object:  Trigger [tr_AfterUpdateChiro_captureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Chiro_capture update
CREATE TRIGGER [dbo].[tr_AfterUpdateChiro_captureToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_capture]
AFTER UPDATE
as
Begin
print('After Update Chiro_capture')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,12,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,12,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  View [dbo].[V_Qry_Released_Not_Houbara_FirstStation]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Released_Not_Houbara_FirstStation
CREATE view [dbo].[V_Qry_Released_Not_Houbara_FirstStation] as
---------------------
--ECWP : 
-- 36110 Indiv 22/02/2011
-- 246 null station

select distinct
VInd.Individual_Obj_PK as Ind_ID,
VInd.id33@Thes_Origin_Precision as Origin,
Vind.id34@TCaracThes_Species_Precision as Taxon,
Vind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
Vind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, 
VInd.id5@TCarac_Transmitter_Frequency as CurrentVHF,
Vind.id4@TCaracThes_Transmitter_Model_Precision as CurrentVHFModel,
Vind.id19@TCarac_PTT as CurrentPTT,
Vind.id22@TCaracThes_PTT_model_Precision as CurrentPTTModel,
IndivEquip.VHF@Station,
IndivEquip.VHFModel@Station,
IndivEquip.PTT@Station,
IndivEquip.PTTModel@Station,
VInd.id30@TCaracThes_Sex_Precision as Sex,
VInd.id12@TCarac_Breeding_Ring_Code as BreedingRing,
VInd.id9@TCarac_Release_Ring_Code as ReleaseRing,
VInd.id13@TCarac_Chip_Code as ChipCode,
VInd.id14@TCaracThes_Mark_Color_1_Precision as Mark1Color,
VInd.id15@TCaracThes_Mark_Position_1_Precision as Mark1Position,
VInd.id55@TCarac_Mark_code_1 as Mark1Code,
VInd.id16@TCaracThes_Mark_Color_2_Precision as Mark2Color,
VInd.id17@TCaracThes_Mark_Position_2_Precision as Mark2Position,
VInd.id56@TCarac_Mark_code_2 as Mark2Code,
VInd.id35@Birth_date as BirthDate,
VInd.id36@Death_date as DeathDate,
firstBioSta.Weight as WeightGrs,
firstBioSta.Skull as Skull,
firstBioSta.Tarso_Metatarsus as Tarso_Metatarsus,
firstRelSta.[Id_Release_Method]as RelMethod_ID, 
firstRelSta.[Name_Release_Method] as RelMethod,
Null as RelComments,
'Release' as StaType,
firstRelSta.TSta_PK_ID as Sta_ID,
firstRelSta.Name as StaName,
firstRelSta.DATE as StaDate,
0 as DaysSinceRelease,
firstRelSta.Area,
firstRelSta.Locality,
firstRelSta.LAT,
firstRelSta.LON,
firstRelSta.Precision,
firstRelSta.FieldWorker1 as FW1,
firstRelSta.FieldWorker2 as FW2,
firstRelSta.FieldWorker3 as FW3,
firstRelSta.FieldWorker4 as FW4,
firstRelSta.FieldWorker5 as FW5,
firstRelSta.FieldActivity_ID as FA_ID,
firstRelSta.FieldActivity_Name as FA,
firstRelSta.Creator,
firstRelSta.Creation_date as CreationDate,
Vind.id37@Comments as IndivComments,
cast(firstBioSta.bioComments as nvarchar(150)) as BiometryComments
from(
	select * 
	from TViewIndividual 
	where (id33@Thes_Origin = 18904 OR id33@Thes_Origin = 1000403)
		and id34@TCaracThes_Species_Precision not Like '%Houbara%'
) as VInd
INNER JOIN (
	select T3.* 
	from (
		select pg.Name_Release_Method, pg.id_Release_Method, cr.*, cr.Comments as RelComments, s.*
		from TProtocol_Release_Individual cr
		inner join TProtocol_Release_Group pg
		on pg.pk = cr.fk_group
		inner join V_Qry_StationsForMap s
		on cr.FK_TSta_ID = s.TSta_PK_ID
	) T3
	inner join(
		select cr.FK_TInd_ID, MIN(s.DATE) as minDate
		from TProtocol_Release_Individual cr 
		inner join tstations s
		on cr.FK_TSta_ID = s.TSta_PK_ID 
		group by cr.FK_TInd_ID 
	)T4
	on (T3.FK_TInd_ID = T4.FK_TInd_ID and T3.DATE  = T4.minDate)
) as firstRelSta
ON VInd.Individual_Obj_PK = firstRelSta.FK_TInd_ID
LEFT OUTER JOIN (
	select
		b.FK_TInd_ID,b.FK_TSta_ID,
		b.Weight,b.Skull ,
		b.Tarso_Metatarsus,
		b.Comments AS bioComments
	from TProtocol_Bird_Biometry b 
) firstBioSta
on VIND.Individual_obj_pk = firstBioSta.fk_tind_id AND firstBioSta.FK_TSta_ID = firstRelSta.FK_TSta_ID 
outer apply fn_v_qry_GetEquipAtDate( VInd.Individual_Obj_PK, firstRelSta.DATE) as IndivEquip
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_AllStations_WithEquipment]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_AllIndivs_AllStations_WithEquipment] 
AS 
select
 Individual_Obj_PK as Ind_ID,
 id34@TCaracThes_Species_Precision as Taxon,
 id33@Thes_Origin_Precision as Origin,
 id60@TCaracThes_Monitoring_Status_Precision as MonitoringStatus,
 id61@TCaracThes_Survey_type_Precision as SurveyType,
 id59@TCaracThes_Individual_Status AS IndividualStatus,
 id30@TCaracThes_Sex_Precision as Sex,
 IndivVHF.[VHF@Station],
 IndivVHFModel.value_precision as [VHFModel@Station],
 IndivPTT.[PTT@Station],
 IndivPTTModel.value_precision as [PTTModel@Station],
 IndivSurveyType.value_precision as [SurveyType@Station],
 IndivMonitoringStatus.value_precision as [MonitoringStatus@Station],
 allObs.StaType,
 Area as region,
 LAT,
 LON,
 DATE as StaDate
 from
 (
select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'Death' as StaType
from
	[dbo].TProtocol_Vertebrate_Individual_Death

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'Nest' as StaType
from
	[dbo].TProtocol_Nest_Description

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'Release' as StaType
from 
	[dbo].TProtocol_Release_Individual

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'Capture' as StaType
from
	[dbo].TProtocol_Capture_Individual

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'GPS' as StaType
from
	[dbo].TProtocol_ArgosDataGPS

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'Argos' as StaType
from
	[dbo].TProtocol_ArgosDataArgos

union

select
	FK_TSta_ID,
	Fk_TInd_ID as Ind_ID,
	'VIndividual' as StaType
from 
	[dbo].TProtocol_Vertebrate_Individual


) allObs
inner join
	TViewIndividual
	on allObs.Ind_ID = Individual_Obj_PK
inner join
	TStations
	on FK_TSta_ID = TSta_PK_ID
left outer join
-- PTT
(select fk_object, value as PTT@Station, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 19) IndivPTT
on allObs.Ind_ID = IndivPTT.fk_object
	AND DATE >= IndivPTT.begin_date
	AND (IndivPTT.end_date IS NULL OR DATE <= IndivPTT.end_date)
	
left outer join
-- PTT model
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 22) IndivPTTModel
on allObs.Ind_ID = IndivPTTModel.fk_object 
	AND DATE >= IndivPTTModel.begin_date 
	AND (IndivPTTModel.end_date IS NULL OR DATE <= IndivPTTModel.end_date)
	
left outer join
-- VHF
(select fk_object, value as VHF@Station, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 5) IndivVHF
on allObs.Ind_ID = IndivVHF.fk_object AND DATE >= IndivVHF.begin_date AND (IndivVHF.end_date IS NULL OR DATE <= IndivVHF.end_date)

left outer join
-- VHF model
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 4) IndivVHFModel
on allObs.Ind_ID = IndivVHFModel.fk_object AND DATE >= IndivVHFModel.begin_date AND (IndivVHFModel.end_date IS NULL OR DATE <= IndivVHFModel.end_date)

left outer join
-- Monitoring status
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 60) IndivMonitoringStatus
on allObs.Ind_ID = IndivMonitoringStatus.fk_object
	AND DATE >= 
		IndivMonitoringStatus.begin_date
	AND (IndivMonitoringStatus.end_date IS NULL
		OR DATE  <
			IndivMonitoringStatus.end_date)
			
left outer join
-- Survey type
(select fk_object, value_precision, begin_date, end_date FROM TObj_Carac_value WHERE Fk_carac = 61) IndivSurveyType
on allObs.Ind_ID = IndivSurveyType.fk_object
	AND DATE  >= 
		IndivSurveyType.begin_date
	AND (IndivSurveyType.end_date IS NULL
		OR DATE  <
			IndivSurveyType.end_date)
GO
/****** Object:  View [dbo].[V_DB_Indivs_Stations_Ids]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[V_DB_Indivs_Stations_Ids] AS 
SELECT   'Argos' as StaType, 50 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_ArgosDataArgos WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'GPS' as StaType, 40 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_ArgosDataGPS WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'Nest' as StaType, 10 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Nest_Description WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'Death' as StaType, 2 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Vertebrate_Individual_Death WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'Biometry' as StaType, 110 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Bird_Biometry WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'VIndividual' as StaType, 100 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Vertebrate_Individual WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'Capture' as StaType, 30 as StaType_ID,FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Capture_Individual WHERE NOT FK_TInd_ID IS NULL
UNION ALL
SELECT  'Release' as StaType, 20 as StaType_ID, FK_TSTA_ID AS Sta_ID, FK_TInd_ID AS Ind_ID  FROM dbo.TProtocol_Release_Individual WHERE NOT FK_TInd_ID IS NULL
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd
CREATE FUNCTION [dbo].[fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd](@Fk_Tind AS int, @deathDate AS Datetime, @ReleaseDate AS Datetime, @nbDaySinceRelease as int)
  RETURNS TABLE
AS
RETURN   
SELECT 
	CASE 
		WHEN NOT @deathDate IS NULL AND MaxDateDiff = dateDiffSinceRel AND CAST(DATE AS DATE) >= CAST( @deathDate AS DATE) THEN 'Dead'
		WHEN MaxDateDiff = dateDiffSinceRel AND @nbDaySinceRelease - MaxDateDiff >= 15 THEN 'Lost' 
		WHEN MaxDateDiff = dateDiffSinceRel THEN 'Last' 
		ELSE 'Monitored'
	END status,
	CASE 
		WHEN MaxDateDiff = dateDiffSinceRel THEN DATE  
		ELSE NULL
	END as lastDate , *
FROM (
	SELECT 	
		MAX(DATEDIFF (DAY, @ReleaseDate , DATE )) OVER(PARTITION BY @Fk_Tind) AS MaxDateDiff , 
		DATEDIFF (DAY,  @ReleaseDate , DATE ) as dateDiffSinceRel, firstStaPerDay.*
		
	FROM (
		SELECT  FK_TSta_ID, PK,  DATE, LAT, LON, ELE, Precision,FK_TInd_ID, Area, Locality, NAME, 
			row_number() over (order by DATE, FK_TSta_ID) - rank() over (order by CAST(DATE AS date)) as row_num 
		FROM (SELECT * FROM TProtocol_ArgosDataGPS WHERE FK_TInd_ID = @Fk_Tind) argosind
		JOIN (SELECT * FROM TStations WHERE FieldActivity_ID = 27 
			AND DATE <= DATEADD(DAY,  @nbDaySinceRelease, @ReleaseDate) AND CAST(DATE AS DATE) <= CAST( COALESCE(@deathDate, CURRENT_TIMESTAMP) AS DATE)
		)  argossta
		ON TSta_PK_ID = FK_TSta_ID
	 ) firstStaPerDay
	WHERE row_num =0
) as firststaPerDay
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_ARGOS_InsertArgosData]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec sp_Sys_ARGOS_InsertArgosData @IDUser = 736, @StrCreationDate = '2012-10-17 11:30:00'
--exec [NARC_eReleveData].[dbo].sp_Sys_ARGOS_DeleteDuplicates;

create  procedure [dbo].[sp_Sys_ARGOS_InsertArgosData] 
@IDUser int = NULL, 
@CreationDate datetime = NULL,
@StrCreationDate nvarchar(50)
as
BEGIN
	declare @Inserted_ARGOS int, @myERROR int, @NbErrors int;
	set @Inserted_ARGOS = 0;
	set @myERROR = 0;
	set @NbErrors = 0;
	SET DATEFORMAT 'YMD';
	IF @CreationDate is null SET @CreationDate = CAST(@StrCreationDate as DATETIME);
	
	Update TTEMP_ArgosDataArgos
	set TArDA_LAT = case when [TArDA_Valid1]=1 then [TArDA_LAT1] else [TArDA_LAT2] end,
		TArDA_LON = case when [TArDA_Valid1]=1 then [TArDA_LON1] else [TArDA_LON2] end;

INSERT_STATION:
    BEGIN TRY
		INSERT INTO TStations ([Name],FieldActivity_ID,FieldActivity_Name,[DATE],[LAT],[LON],[ELE] ,[Precision],[Creator],[Creation_date])
			   SELECT 'ARGOS_' + convert(nvarchar, TArDA_PTT) + '_' + CONVERT(VARCHAR,TArDA_DATE,112) +  LEFT(REPLACE(CONVERT(VARCHAR,TArDA_DATE,114),':',''),6),
			   27,'Argos', TArDA_DATE ,
			   TArDA_LAT,
			   TArDA_LON,
			   TArDA_ELE,TLocCl_Precision, @IDUser, @CreationDate
		FROM TTEMP_ArgosDataArgos INNER JOIN TLocationClass
		ON TTEMP_ArgosDataArgos.TArDA_LC = TLocationClass.TLocCl_Classe
		WHERE ( TTEMP_ArgosDataArgos.TArDA_Valid1 = 1 OR TTEMP_ArgosDataArgos.TArDA_Valid2 = 1)
			AND [TTEMP_ArgosDataArgos].[Indiv_ID] Is Not Null;
	END TRY
	BEGIN CATCH
		select @myERROR = @@ERROR;
		set @NbErrors = @NbErrors + 1;
		--Erreur gérée: L’instruction INSERT a échoué, car elle était en conflit avec une contrainte de vérification de plage d’identité dans la base de données
		IF (@myERROR = 548) AND (@NbErrors = 1)
		BEGIN
			EXECUTE sp_adjustpublisheridentityrange @table_name = 'TStations';
			GOTO INSERT_STATION;
		END
		ELSE
		BEGIN
			select ERROR_MESSAGE();
			RETURN;
		END	
	END CATCH
	
	set @myERROR = 0;
	set @NbErrors = 0;

INSERT_ARGOS:
    BEGIN TRY	
                    
		INSERT INTO TProtocol_ArgosDataArgos ( FK_TSta_ID, FK_TInd_ID, TADA_LC, TADA_IQ, TADA_NbMsg, [TADA_NbMsg>-120Db], TADA_BestLevel, TADA_PassDuration, TADA_NOPC, TADA_Frequency )
			SELECT TSTA_PK_ID, Indiv_ID, TArDA_LC,TArDA_IQ,TArDA_NbMsg,[TArDA_NbMsg>-120db], TArDA_BestLevel,TArDA_PassDuration, TArDA_NOPC, TArDA_Freq
		FROM TStations as sta inner join TTEMP_ArgosDataArgos As argos
		ON sta.[DATE] = argos.[TArDA_DATE] 
		Where sta.Name Like 'ARGOS_' + convert(nvarchar,argos.[TArDA_PTT]) + '%'
			AND (TArDA_Valid1=1 OR TArDA_Valid2=1)
			AND sta.LAT = TArDA_LAT
			AND sta.LON = TArDA_LON
			AND sta.FieldActivity_ID = 27
			AND argos.Indiv_ID is not null
			AND sta.creation_date = @CreationDate
		;
	END TRY
	BEGIN CATCH
		select @myERROR = @@ERROR;
		set @NbErrors = @NbErrors + 1;
		--Erreur gérée: L’instruction INSERT a échoué, car elle était en conflit avec une contrainte de vérification de plage d’identité dans la base de données
		IF (@myERROR = 548) AND (@NbErrors = 1)
		BEGIN
			EXECUTE sp_adjustpublisheridentityrange @table_name = 'TProtocol_ArgosDataArgos';
			GOTO INSERT_ARGOS;
		END
		ELSE
		BEGIN
			select ERROR_MESSAGE();
			RETURN;
		END	
	END CATCH
	
	select @Inserted_ARGOS = @@ROWCOUNT;
	select @Inserted_ARGOS as Inserted_ARGOS;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_ARGOS_DeleteDuplicates_overload]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Sys_ARGOS_DeleteDuplicates_overload] as

BEGIN

	declare @Dupli_GPS int, @Dupli_Argos int, @Dupli_EngGPS int, @Dupli_EngArgos int,
			@dummy int
	set @Dupli_GPS = 0
	set @Dupli_Argos = 0
	set @Dupli_EngGPS = 0
	set @Dupli_EngArgos = 0
	
	
	delete from TStations
	where TSta_PK_ID in
	(
		select TSta_PK_ID from 
			(select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataArgos p on s.TSta_PK_ID = p.FK_TSta_ID) as T1
			where T1.TSta_PK_ID < ANY 
				(select TSta_PK_ID from (select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataArgos p on s.TSta_PK_ID = p.FK_TSta_ID) T2
					where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							--and T1.LAT = T2.LAT
							--and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.FK_TInd_ID = T2.FK_TInd_ID)
	);
	select @Dupli_Argos = @@ROWCOUNT 

	delete from TStations
	where TSta_PK_ID in
	(							
		select TSta_PK_ID from 
			(select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataGPS p 
				on s.TSta_PK_ID = p.FK_TSta_ID
			) as T1
			where T1.TSta_PK_ID < ANY
				(select TSta_PK_ID from (select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataGPS p
											 on s.TSta_PK_ID = p.FK_TSta_ID
										 ) T2
					where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							--and T1.LAT = T2.LAT
							--and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.FK_TInd_ID = T2.FK_TInd_ID)
	);
	select @Dupli_GPS = @@ROWCOUNT 


	--delete duplicated proto linked to same station
	delete from TProtocol_ArgosDataGPS
	where PK in
	(
		select T1.PK from TProtocol_ArgosDataGPS T1
			where T1.PK < ANY (select PK from TProtocol_ArgosDataGPS T2
						   where T1.PK <> T2.PK
						   and T1.FK_TSta_ID = T2.FK_TSta_ID
						   and T1.FK_TInd_ID = T2.FK_TInd_ID
						   )
	);
	select @dummy = @@ROWCOUNT 
	delete from TProtocol_ArgosDataArgos
	where PK in
	(
		select T1.PK from TProtocol_ArgosDataArgos T1
			where T1.PK < ANY (select PK from TProtocol_ArgosDataArgos T2
						   where T1.PK <> T2.PK
						   and T1.FK_TSta_ID = T2.FK_TSta_ID
						   and T1.FK_TInd_ID = T2.FK_TInd_ID
						   )
	);
	select @dummy = @@ROWCOUNT 
	--delete remaining duplicated argos stations
	delete from TStations
	where TSta_PK_ID in
	(
		select T1.TSta_PK_ID  from TStations T1
		where T1.TSta_PK_ID < ANY (select TSta_PK_ID from TStations T2
							where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							and T1.LAT = T2.LAT
							and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.Name like 'Argos%'
							)
	);
	select @dummy = @@ROWCOUNT 
	
	--ENG GPS
	delete from TArgosEngineeringData
	where TArE_PK_ID in
	(
		select T1.TArE_PK_ID from 
			(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
				on e.TArE_PTT = v.id19@TCarac_PTT 
				where v.id41@TCaracThes_Model_Precision like '%GPS%'
			) T1
			where T1.TArE_PK_ID < ANY 
					(select TArE_PK_ID from 
						(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
							on e.TArE_PTT = v.id19@TCarac_PTT 
							where v.id41@TCaracThes_Model_Precision like '%GPS%'
						) T2
						where T1.TArE_PK_ID <> T2.TArE_PK_ID
						   and T1.TArE_PTT = T2.TArE_PTT
						   and T1.TArE_TXDATE = T2.TArE_TXDATE
						   and T1.TArE_TEMP = T2.TArE_TEMP
						   and T1.TArE_ACT_CNT = T2.TArE_ACT_CNT
						   and T1.TArE_TXDATE is not null
						   )
	);
	select @Dupli_ENGGPS = @@ROWCOUNT 
	
	--ENG Argos
	delete from TArgosEngineeringData
	where TArE_PK_ID in
	(
		select T1.TArE_PK_ID from 
			(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
				on e.TArE_PTT = v.id19@TCarac_PTT 
				where v.id41@TCaracThes_Model_Precision not like '%GPS%'
			) T1
			where T1.TArE_PK_ID < ANY 
					(select TArE_PK_ID from 
						(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
							on e.TArE_PTT = v.id19@TCarac_PTT 
							where v.id41@TCaracThes_Model_Precision not like '%GPS%'
						) T2
						where T1.TArE_PK_ID <> T2.TArE_PK_ID
						   and T1.TArE_PTT = T2.TArE_PTT
						   and T1.TArE_TXDATE = T2.TArE_TXDATE
						   and T1.TArE_TEMP = T2.TArE_TEMP
						   and T1.TArE_ACT_CNT = T2.TArE_ACT_CNT
						   and T1.TArE_TXDATE is not null
						   )
	);
	select @Dupli_ENGArgos = @@ROWCOUNT 
	
	--Efface les stations orphelines
	delete
	from TStations
	where tsta_pk_id in
	(select TSta_PK_ID 
		from TStations s
		left join TProtocol_ArgosDataArgos p
		on s.TSta_PK_ID = p.FK_TSta_ID 
		left join TProtocol_ArgosDataGPS p2
		on s.TSta_PK_ID = p2.FK_TSta_ID 
		left join TArgosEngineeringData p3
		on s.TSta_PK_ID = p3.TarE_Nearest_FK_TSTA_ID
		where 
		p.PK is null and p2.PK is null 
		and p3.TArE_PK_ID is null
		and s.Name like 'ARGOS%'
	);
	
	--Reinit les autoincrements
	--select @dummy = MAX(TSta_PK_ID) from TStations
	--DBCC CHECKIDENT ('TStations', RESEED, @dummy)
	--select @dummy = MAX(PK) from TProtocol_ArgosDataArgos
	--DBCC CHECKIDENT ('TProtocol_ArgosDataArgos', RESEED, @dummy)
	--select @dummy = MAX(PK) from TProtocol_ArgosDataGPS
	--DBCC CHECKIDENT ('TProtocol_ArgosDataGPS', RESEED, @dummy)
	--select @dummy = MAX(TArE_PK_ID) from TArgosEngineeringData
	--DBCC CHECKIDENT ('TArgosEngineeringData', RESEED, @dummy)
	
	select @Dupli_GPS as dupliGPS, @Dupli_Argos as dupliArgos,
		   @Dupli_EngGPS as dupliENGGPS, @Dupli_EngArgos as dupliENGArgos
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_ARGOS_DeleteDuplicates]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_Sys_ARGOS_DeleteDuplicates] as

BEGIN

	declare @Dupli_GPS int, @Dupli_Argos int, @Dupli_EngGPS int, @Dupli_EngArgos int,
			@dummy int
	set @Dupli_GPS = 0
	set @Dupli_Argos = 0
	set @Dupli_EngGPS = 0
	set @Dupli_EngArgos = 0
	
	
	delete from TStations
	where TSta_PK_ID in
	(
		select TSta_PK_ID from 
			(select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataArgos p on s.TSta_PK_ID = p.FK_TSta_ID) as T1
			where T1.TSta_PK_ID > ANY 
				(select TSta_PK_ID from (select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataArgos p on s.TSta_PK_ID = p.FK_TSta_ID) T2
					where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							and T1.LAT = T2.LAT
							and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.FK_TInd_ID = T2.FK_TInd_ID)
	);
	select @Dupli_Argos = @@ROWCOUNT 

	delete from TStations
	where TSta_PK_ID in
	(							
		select TSta_PK_ID from 
			(select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataGPS p 
				on s.TSta_PK_ID = p.FK_TSta_ID
			) as T1
			where T1.TSta_PK_ID > ANY
				(select TSta_PK_ID from (select s.*, p.fk_tind_id from TStations s inner join TProtocol_ArgosDataGPS p
											 on s.TSta_PK_ID = p.FK_TSta_ID
										 ) T2
					where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							and T1.LAT = T2.LAT
							and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.FK_TInd_ID = T2.FK_TInd_ID)
	);
	select @Dupli_GPS = @@ROWCOUNT 


	--delete duplicated proto linked to same station
	delete from TProtocol_ArgosDataGPS
	where PK in
	(
		select T1.PK from TProtocol_ArgosDataGPS T1
			where T1.PK > ANY (select PK from TProtocol_ArgosDataGPS T2
						   where T1.PK <> T2.PK
						   and T1.FK_TSta_ID = T2.FK_TSta_ID
						   and T1.FK_TInd_ID = T2.FK_TInd_ID
						   )
	);
	select @dummy = @@ROWCOUNT 
	delete from TProtocol_ArgosDataArgos
	where PK in
	(
		select T1.PK from TProtocol_ArgosDataArgos T1
			where T1.PK > ANY (select PK from TProtocol_ArgosDataArgos T2
						   where T1.PK <> T2.PK
						   and T1.FK_TSta_ID = T2.FK_TSta_ID
						   and T1.FK_TInd_ID = T2.FK_TInd_ID
						   )
	);
	select @dummy = @@ROWCOUNT 
	--delete remaining duplicated argos stations
	delete from TStations
	where TSta_PK_ID in
	(
		select T1.TSta_PK_ID  from TStations T1
		where T1.TSta_PK_ID > ANY (select TSta_PK_ID from TStations T2
							where T1.TSta_PK_ID <> T2.TSta_PK_ID 
							and T1.DATE = T2.DATE
							and T1.LAT = T2.LAT
							and T1.LON = T2.LON 
							and T1.Name = T2.Name
							and T1.Name like 'Argos%'
							)
	);
	select @dummy = @@ROWCOUNT 
	
	--ENG GPS
	delete from TArgosEngineeringData
	where TArE_PK_ID in
	(
		select T1.TArE_PK_ID from 
			(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
				on e.TArE_PTT = v.id19@TCarac_PTT 
				where v.id41@TCaracThes_Model_Precision like '%GPS%'
			) T1
			where T1.TArE_PK_ID > ANY 
					(select TArE_PK_ID from 
						(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
							on e.TArE_PTT = v.id19@TCarac_PTT 
							where v.id41@TCaracThes_Model_Precision like '%GPS%'
						) T2
						where T1.TArE_PK_ID <> T2.TArE_PK_ID
						   and T1.TArE_PTT = T2.TArE_PTT
						   and T1.TArE_TXDATE = T2.TArE_TXDATE
						   and T1.TArE_TEMP = T2.TArE_TEMP
						   and T1.TArE_ACT_CNT = T2.TArE_ACT_CNT
						   and T1.TArE_TXDATE is not null
						   )
	);
	select @Dupli_ENGGPS = @@ROWCOUNT 
	
	--ENG Argos
	delete from TArgosEngineeringData
	where TArE_PK_ID in
	(
		select T1.TArE_PK_ID from 
			(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
				on e.TArE_PTT = v.id19@TCarac_PTT 
				where v.id41@TCaracThes_Model_Precision not like '%GPS%'
			) T1
			where T1.TArE_PK_ID > ANY 
					(select TArE_PK_ID from 
						(select e.*, v.id19@TCarac_PTT, v.id41@TCaracThes_Model_Precision from dbo.TArgosEngineeringData e inner join TViewTrx_Sat v
							on e.TArE_PTT = v.id19@TCarac_PTT 
							where v.id41@TCaracThes_Model_Precision not like '%GPS%'
						) T2
						where T1.TArE_PK_ID <> T2.TArE_PK_ID
						   and T1.TArE_PTT = T2.TArE_PTT
						   and T1.TArE_TXDATE = T2.TArE_TXDATE
						   and T1.TArE_TEMP = T2.TArE_TEMP
						   and T1.TArE_ACT_CNT = T2.TArE_ACT_CNT
						   and T1.TArE_TXDATE is not null
						   )
	);
	select @Dupli_ENGArgos = @@ROWCOUNT 
	
	--Efface les stations orphelines
	delete
	from TStations
	where tsta_pk_id in
	(select TSta_PK_ID 
		from TStations s
		left join TProtocol_ArgosDataArgos p
		on s.TSta_PK_ID = p.FK_TSta_ID 
		left join TProtocol_ArgosDataGPS p2
		on s.TSta_PK_ID = p2.FK_TSta_ID 
		left join TArgosEngineeringData p3
		on s.TSta_PK_ID = p3.TarE_Nearest_FK_TSTA_ID
		where 
		p.PK is null and p2.PK is null 
		and p3.TArE_PK_ID is null
		and s.Name like 'ARGOS%'
	);
	
	--Reinit les autoincrements
	--select @dummy = MAX(TSta_PK_ID) from TStations
	--DBCC CHECKIDENT ('TStations', RESEED, @dummy)
	--select @dummy = MAX(PK) from TProtocol_ArgosDataArgos
	--DBCC CHECKIDENT ('TProtocol_ArgosDataArgos', RESEED, @dummy)
	--select @dummy = MAX(PK) from TProtocol_ArgosDataGPS
	--DBCC CHECKIDENT ('TProtocol_ArgosDataGPS', RESEED, @dummy)
	--select @dummy = MAX(TArE_PK_ID) from TArgosEngineeringData
	--DBCC CHECKIDENT ('TArgosEngineeringData', RESEED, @dummy)
	
	select @Dupli_GPS as dupliGPS, @Dupli_Argos as dupliArgos,
		   @Dupli_EngGPS as dupliENGGPS, @Dupli_EngArgos as dupliENGArgos
	
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_usr_qry_GetNearestArgosPositionForIndividual]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_usr_qry_GetNearestArgosPositionForIndividual](@Fk_Tind AS int, @Date AS Datetime)
  RETURNS TABLE
AS
RETURN
     --Retour de la procédure
     --PK_ID, LAT, LON, ELE, DATE, différence en seconde
     SELECT   TOP 1
      tstations.TSTA_PK_ID, tstations.LAT, tstations.LON, tstations.ELE, tstations.Precision, tstations.DATE, DATEDIFF(second  , tstations.Date, @Date) AS SecDiff, DataType
    FROM (
        SELECT FK_TSta_ID, FK_TIND_ID, 'ARGOS' AS DataType
        FROM dbo.TProtocol_ArgosDataArgos
        WHERE FK_TIND_ID = @Fk_Tind
        UNION
        SELECT FK_TSta_ID, FK_TIND_ID, 'GPS' AS DataType
        FROM dbo.TProtocol_ArgosDataArgos
        WHERE FK_TIND_ID = @Fk_Tind
    )tmp
    JOIN tstations
    ON tstations.TSta_PK_ID = tmp.FK_TSta_ID
    ORDER BY ABS(DATEDIFF(second  , Date, @Date))
GO
/****** Object:  Table [dbo].[TSubProtocol_Transect]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSubProtocol_Transect](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Fk_Trans] [int] NULL,
	[Id_Taxon] [int] NOT NULL,
	[Name_Taxon] [nvarchar](1000) NOT NULL,
	[P1] [int] NULL,
	[P2] [int] NULL,
	[P3] [int] NULL,
	[P4] [int] NULL,
	[P5] [int] NULL,
	[P6] [int] NULL,
	[P7] [int] NULL,
	[P8] [int] NULL,
	[P9] [int] NULL,
	[P10] [int] NULL,
	[P11] [int] NULL,
	[P12] [int] NULL,
	[P13] [int] NULL,
	[P14] [int] NULL,
	[P15] [int] NULL,
	[P16] [int] NULL,
	[P17] [int] NULL,
	[P18] [int] NULL,
	[P19] [int] NULL,
	[P20] [int] NULL,
	[P21] [int] NULL,
	[P22] [int] NULL,
	[P23] [int] NULL,
	[P24] [int] NULL,
	[P25] [int] NULL,
	[P26] [int] NULL,
	[P27] [int] NULL,
	[P28] [int] NULL,
	[P29] [int] NULL,
	[P30] [int] NULL,
	[P31] [int] NULL,
	[P32] [int] NULL,
	[P33] [int] NULL,
	[P34] [int] NULL,
	[P35] [int] NULL,
	[P36] [int] NULL,
	[P37] [int] NULL,
	[P38] [int] NULL,
	[P39] [int] NULL,
	[P40] [int] NULL,
	[P41] [int] NULL,
	[P42] [int] NULL,
	[P43] [int] NULL,
	[P44] [int] NULL,
	[P45] [int] NULL,
	[P46] [int] NULL,
	[P47] [int] NULL,
	[P48] [int] NULL,
	[P49] [int] NULL,
	[P50] [int] NULL,
	[P51] [int] NULL,
	[P52] [int] NULL,
	[P53] [int] NULL,
	[P54] [int] NULL,
	[P55] [int] NULL,
	[P56] [int] NULL,
	[P57] [int] NULL,
	[P58] [int] NULL,
	[P59] [int] NULL,
	[P60] [int] NULL,
	[P61] [int] NULL,
	[P62] [int] NULL,
	[P63] [int] NULL,
	[P64] [int] NULL,
	[P65] [int] NULL,
	[P66] [int] NULL,
	[P67] [int] NULL,
	[P68] [int] NULL,
	[P69] [int] NULL,
	[P70] [int] NULL,
	[P71] [int] NULL,
	[P72] [int] NULL,
	[P73] [int] NULL,
	[P74] [int] NULL,
	[P75] [int] NULL,
	[P76] [int] NULL,
	[P77] [int] NULL,
	[P78] [int] NULL,
	[P79] [int] NULL,
	[P80] [int] NULL,
	[P81] [int] NULL,
	[P82] [int] NULL,
	[P83] [int] NULL,
	[P84] [int] NULL,
	[P85] [int] NULL,
	[P86] [int] NULL,
	[P87] [int] NULL,
	[P88] [int] NULL,
	[P89] [int] NULL,
	[P90] [int] NULL,
	[P91] [int] NULL,
	[P92] [int] NULL,
	[P93] [int] NULL,
	[P94] [int] NULL,
	[P95] [int] NULL,
	[P96] [int] NULL,
	[P97] [int] NULL,
	[P98] [int] NULL,
	[P99] [int] NULL,
	[P100] [int] NULL,
	[P101] [int] NULL,
	[P102] [int] NULL,
	[P103] [int] NULL,
	[P104] [int] NULL,
	[P105] [int] NULL,
	[P106] [int] NULL,
	[P107] [int] NULL,
	[P108] [int] NULL,
	[P109] [int] NULL,
	[P110] [int] NULL,
	[P111] [int] NULL,
	[P112] [int] NULL,
	[P113] [int] NULL,
	[P114] [int] NULL,
	[P115] [int] NULL,
	[P116] [int] NULL,
	[P117] [int] NULL,
	[P118] [int] NULL,
	[P119] [int] NULL,
	[P120] [int] NULL,
	[P121] [int] NULL,
	[P122] [int] NULL,
	[P123] [int] NULL,
	[P124] [int] NULL,
	[P125] [int] NULL,
	[P126] [int] NULL,
	[P127] [int] NULL,
	[P128] [int] NULL,
	[P129] [int] NULL,
	[P130] [int] NULL,
	[P131] [int] NULL,
	[P132] [int] NULL,
	[P133] [int] NULL,
	[P134] [int] NULL,
	[P135] [int] NULL,
	[P136] [int] NULL,
	[P137] [int] NULL,
	[P138] [int] NULL,
	[P139] [int] NULL,
	[P140] [int] NULL,
	[P141] [int] NULL,
	[P142] [int] NULL,
	[P143] [int] NULL,
	[P144] [int] NULL,
	[P145] [int] NULL,
	[P146] [int] NULL,
	[P147] [int] NULL,
	[P148] [int] NULL,
	[P149] [int] NULL,
	[P150] [int] NULL,
	[P151] [int] NULL,
	[P152] [int] NULL,
	[P153] [int] NULL,
	[P154] [int] NULL,
	[P155] [int] NULL,
	[P156] [int] NULL,
	[P157] [int] NULL,
	[P158] [int] NULL,
	[P159] [int] NULL,
	[P160] [int] NULL,
	[P161] [int] NULL,
	[P162] [int] NULL,
	[P163] [int] NULL,
	[P164] [int] NULL,
	[P165] [int] NULL,
	[P166] [int] NULL,
	[P167] [int] NULL,
	[P168] [int] NULL,
	[P169] [int] NULL,
	[P170] [int] NULL,
	[P171] [int] NULL,
	[P172] [int] NULL,
	[P173] [int] NULL,
	[P174] [int] NULL,
	[P175] [int] NULL,
	[P176] [int] NULL,
	[P177] [int] NULL,
	[P178] [int] NULL,
	[P179] [int] NULL,
	[P180] [int] NULL,
	[P181] [int] NULL,
	[P182] [int] NULL,
	[P183] [int] NULL,
	[P184] [int] NULL,
	[P185] [int] NULL,
	[P186] [int] NULL,
	[P187] [int] NULL,
	[P188] [int] NULL,
	[P189] [int] NULL,
	[P190] [int] NULL,
	[P191] [int] NULL,
	[P192] [int] NULL,
	[P193] [int] NULL,
	[P194] [int] NULL,
	[P195] [int] NULL,
	[P196] [int] NULL,
	[P197] [int] NULL,
	[P198] [int] NULL,
	[P199] [int] NULL,
	[P200] [int] NULL,
	[Identity_sure] [bit] NOT NULL,
	[Validator] [int] NULL,
	[Sampled] [bit] NOT NULL,
	[Picture] [bit] NOT NULL,
	[Cultivated] [bit] NOT NULL,
	[Comments] [nvarchar](250) NULL,
	[nb_contact]  AS ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((([P1]+[P2])+[P3])+[P4])+[P5])+[P6])+[P7])+[P8])+[P9])+[P10])+[P11])+[P12])+[P13])+[P14])+[P15])+[P16])+[P17])+[P18])+[P19])+[P20])+[P21])+[P22])+[P23])+[P24])+[P25])+[P26])+[P27])+[P28])+[P29])+[P30])+[P31])+[P32])+[P33])+[P34])+[P35])+[P36])+[P37])+[P38])+[P39])+[P40])+[P41])+[P42])+[P43])+[P44])+[P45])+[P46])+[P47])+[P48])+[P49])+[P50])+[P51])+[P52])+[P53])+[P54])+[P55])+[P56])+[P57])+[P58])+[P59])+[P60])+[P61])+[P62])+[P63])+[P64])+[P65])+[P66])+[P67])+[P68])+[P69])+[P70])+[P71])+[P72])+[P73])+[P74])+[P75])+[P76])+[P77])+[P78])+[P79])+[P80])+[P81])+[P82])+[P83])+[P84])+[P85])+[P86])+[P87])+[P88])+[P89])+[P90])+[P91])+[P92])+[P93])+[P94])+[P95])+[P96])+[P97])+[P98])+[P99])+[P100])+[P101])+[P102])+[P103])+[P104])+[P105])+[P106])+[P107])+[P108])+[P109])+[P110])+[P111])+[P112])+[P113])+[P114])+[P115])+[P116])+[P117])+[P118])+[P119])+[P120])+[P121])+[P122])+[P123])+[P124])+[P125])+[P126])+[P127])+[P128])+[P129])+[P130])+[P131])+[P132])+[P133])+[P134])+[P135])+[P136])+[P137])+[P138])+[P139])+[P140])+[P141])+[P142])+[P143])+[P144])+[P145])+[P146])+[P147])+[P148])+[P149])+[P150])+[P151])+[P152])+[P153])+[P154])+[P155])+[P156])+[P157])+[P158])+[P159])+[P160])+[P161])+[P162])+[P163])+[P164])+[P165])+[P166])+[P167])+[P168])+[P169])+[P170])+[P171])+[P172])+[P173])+[P174])+[P175])+[P176])+[P177])+[P178])+[P179])+[P180])+[P181])+[P182])+[P183])+[P184])+[P185])+[P186])+[P187])+[P188])+[P189])+[P190])+[P191])+[P192])+[P193])+[P194])+[P195])+[P196])+[P197])+[P198])+[P199])+[P200]),
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [aaaaaTSubProtocol_Transect_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [Unique_Transect_Taxon_Transect] UNIQUE NONCLUSTERED 
(
	[Id_Taxon] ASC,
	[Fk_Trans] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSubProtocol_Entomo_Pop_Census]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSubProtocol_Entomo_Pop_Census](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FK_Pr] [int] NOT NULL,
	[Id_Taxon] [int] NOT NULL,
	[Name_Taxon] [nvarchar](1000) NOT NULL,
	[Identity_sure] [bit] NOT NULL,
	[Validator] [nvarchar](250) NULL,
	[Year_validation] [date] NULL,
	[Collected] [bit] NOT NULL,
	[Collected_label] [nvarchar](250) NULL,
	[Id_Behaviour] [int] NULL,
	[Name_Behaviour] [nvarchar](250) NULL,
	[Male_adult_nb] [int] NULL,
	[Female_adult_nb] [int] NULL,
	[Indeterminate_adult_nb] [int] NULL,
	[Indeterminate_pupa_nb] [int] NULL,
	[Male_larva_nb] [int] NULL,
	[Female_larva_nb] [int] NULL,
	[Indeterminate_larva_nb] [int] NULL,
	[Indeterminate_neonata_nb] [int] NULL,
	[Indeterminate_egg_nb] [int] NULL,
	[Id_Male_adult_ab] [int] NULL,
	[Name_Male_adult_ab] [nvarchar](50) NULL,
	[Id_Female_adult_ab] [int] NULL,
	[Name_Female_adult_ab] [nvarchar](50) NULL,
	[Id_Indeterminate_adult_ab] [int] NULL,
	[Name_Indeterminate_adult_ab] [nvarchar](50) NULL,
	[Id_Indeterminate_pupa_ab] [int] NULL,
	[Name_Indeterminate_pupa_ab] [nvarchar](50) NULL,
	[Id_Male_larva_ab] [int] NULL,
	[Name_Male_larva_ab] [nvarchar](50) NULL,
	[Id_Female_larva_ab] [int] NULL,
	[Name_Female_larva_ab] [nvarchar](50) NULL,
	[Id_Indeterminate_larva_ab] [int] NULL,
	[Name_Indeterminate_larva_ab] [nvarchar](50) NULL,
	[Id_Indeterminate_neonata_ab] [int] NULL,
	[Name_Indeterminate_neonata_ab] [nvarchar](50) NULL,
	[Id_Indeterminate_egg_ab] [int] NULL,
	[Name_Indeterminate_egg_ab] [nvarchar](50) NULL,
	[Comments] [nvarchar](250) NULL,
 CONSTRAINT [aaaaaTSubProtocol_Entomo_Pop_Census_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Unique_EntomoCensus_Taxon_Capture] UNIQUE NONCLUSTERED 
(
	[FK_Pr] ASC,
	[Id_Taxon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TProtocol_Clutch_Description]    Script Date: 07/02/2014 14:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProtocol_Clutch_Description](
	[PK] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FK_TSta_ID] [int] NOT NULL,
	[FK_Nest] [int] NULL,
	[Egg_code] [nvarchar](50) NULL,
	[Weight] [decimal](9, 2) NULL,
	[Length] [decimal](9, 2) NULL,
	[Width] [decimal](9, 2) NULL,
	[Name_EggStatus] [nvarchar](250) NULL,
	[Id_EggStatus] [int] NULL,
	[Sampled] [bit] NOT NULL,
	[Collected] [bit] NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[Measured_by] [int] NULL,
 CONSTRAINT [aaaaaTProtocol_Clutch_Description_PK] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Id_State] ON [dbo].[TProtocol_Clutch_Description] 
(
	[Id_EggStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoClutch_FKNest] ON [dbo].[TProtocol_Clutch_Description] 
(
	[FK_Nest] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ind_TProtoClutch_FKSta] ON [dbo].[TProtocol_Clutch_Description] 
(
	[FK_TSta_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Qry_Nest_AllStations_with_relatedMother_data]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Nest_AllStations_with_relatedMother_data
CREATE VIEW [dbo].[V_Qry_Nest_AllStations_with_relatedMother_data] AS
SELECT  DISTINCT 
      sta.Site_name AS [Site_name], sta.TSta_PK_ID, sta.Name, 
      sta.Area, sta.Locality, sta.DATE, sta.LAT, 
      sta.LON, sta.FieldActivity_Name AS Fiel_activity, 
      nest.Id_Clutch_Description, 
      nest.Name_Clutch_Description, 
      nest.ID_Clutch_Size,
      nest.Name_Clutch_Size, 
      nest.Dummy_egg , 
      Eggs.Nb_Egg,
      g.Nb_NewBorn_Indeterminate AS NB_newborn, ind.Individual_Obj_PK, 
      Ind.id59@TCaracThes_Individual_Status AS CurrentIndividualStatus,
      ind.id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType, ind.id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus, 
      ind.id2@Thes_Age_Precision AS Age, 
      ind.id33@Thes_Origin_Precision AS Origin, ind.id5@TCarac_Transmitter_Frequency AS Frequency, vhf.value AS vhf@station,  
      ind.id3@TCaracThes_Transmitter_Shape_Precision AS Transmitter_shape, 
      ind.id4@TCaracThes_Transmitter_Model_Precision AS Transmitter_model, 
      ind.id6@TCarac_Transmitter_Serial_Number AS Serial_number, ind.id19@TCarac_PTT AS PTT, ptt.value AS PTT@station, 
      ind.id20@TCaracThes_PTT_manufacturer_Precision AS PTT_manufacturer, 
      ind.id22@TCaracThes_PTT_model_Precision AS PTT_model, ind.id30@TCaracThes_Sex_Precision AS Sex, 
      ind.id9@TCarac_Release_Ring_Code AS Release_ring_code, ind.id12@TCarac_Breeding_Ring_Code AS Breeding_ring_code, 
      ind.id13@TCarac_Chip_Code AS Chip_code, ind.id35@Birth_date AS Birth_date, 
      ind.id36@Death_date AS Death_date, ind.id37@Comments AS Comments, 
      nest.FK_TIND_ID, 
      nest.Identification_criteria AS [Identification criteria], 
      CASE WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%25760%' THEN 'NE' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Transmitter_Shape_Precision%17913%' THEN 'Collar' WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17920%'
       THEN 'Backpack' WHEN nest.Identification_criteria LIKE '%12351%' THEN 'Merlin' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Transmitter_Shape_Precision%17912%' THEN 'Collar' WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17922%'
       THEN ' Black Backpack' WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17916%' THEN 'Collar' WHEN
       nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17924%' THEN 'White Bakpack' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Transmitter_Shape_Precision%17919%' THEN 'Collar' WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17923%'
       THEN 'Grey Backpack' WHEN nest.Identification_criteria LIKE '%TCaracThes_Transmitter_Shape_Precision%17926%' THEN 'Brown Backpack'
       WHEN nest.Identification_criteria LIKE '%25760%' THEN 'NE' WHEN nest.Identification_criteria LIKE '%12334%'
       THEN 'ATS' WHEN nest.Identification_criteria LIKE '%12352%' THEN 'Solar Backpack' END AS Transmitter_type, 
      CASE WHEN nest.Identification_criteria LIKE '%transmitter_shape%' THEN 'x' END AS [TransmitterShape entered], 
      CASE WHEN nest.Identification_criteria LIKE '%transmitter_model%' THEN 'x' END AS [TransmitterModel entered], 
      CASE WHEN nest.Identification_criteria LIKE '%18873%' THEN 'Male' WHEN nest.Identification_criteria LIKE '%18874%'
       THEN 'Female' END AS [Sex entered], 
      CASE WHEN nest.Identification_criteria LIKE '%TCaracThes_Release_Ring_Position_Precision],1000247%' THEN 'No ring' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Release_Ring_Position_Precision],17947%' THEN 'Right' WHEN nest.Identification_criteria LIKE '%TCaracThes_Release_Ring_Position_Precision],17949%'
       THEN 'Left' END AS RelRingPosition, 
      CASE WHEN nest.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Position_Precision],1000247%' THEN 'No ring' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Breeding_Ring_Position_Precision],17947%' THEN 'Right' WHEN nest.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Position_Precision],17949%'
       THEN 'Left' END AS BreRingPosition, 
      CASE WHEN nest.Identification_criteria LIKE '%ring_position%' THEN 'x' END AS [RingPosition entered], 
      CASE WHEN nest.Identification_criteria LIKE '%TCaracThes_Release_Ring_Color_Precision],18722%' THEN 'Metal' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Release_Ring_Color_Precision],18718%' THEN 'Blue' END AS [RelRing Color], 
      CASE WHEN nest.Identification_criteria LIKE '%TCaracThes_Breeding_Ring_Color_Precision],18722%' THEN 'Metal' WHEN nest.Identification_criteria
       LIKE '%TCaracThes_Breeding_Ring_Color_Precision],18718%' THEN 'Blue' END AS [BreRing Color], 
      CASE WHEN nest.Identification_criteria LIKE '%ring_color%' THEN 'x' END AS [RingColor entered], 
      CASE WHEN nest.Identification_criteria LIKE '%15889%' THEN 'North African Houbara Bustard' WHEN nest.Identification_criteria
       LIKE '%15888%' THEN 'Houbara Bustard' END AS Species, 
      CASE WHEN nest.Identification_criteria LIKE '%specie%' THEN 'x' END AS [Species entered]
FROM  dbo.TProtocol_Nest_Description nest
LEFT OUTER JOIN dbo.TViewIndividual  ind
ON ind.Individual_Obj_PK = nest.FK_TIND_ID 
INNER JOIN  (SELECT * FROM V_Qry_StationsForMap WHERE  (Site_idType = 18990)) sta
ON nest.FK_TSta_ID = sta.TSta_PK_ID
LEFT OUTER JOIN  TProtocol_Vertebrate_Group g
ON  sta.TSta_PK_ID = g.FK_TSta_ID AND nest.Id_Taxon  = g.id_taxon
LEFT OUTER JOIN (select COUNT(*) as Nb_Egg, Fk_nest, fk_tsta_id from dbo.TProtocol_Clutch_Description group by fk_nest, fk_tsta_id) as Eggs
on nest.PK = Eggs.FK_Nest
LEFT OUTER JOIN (SELECT * FROM TObj_Carac_value WHERE Fk_carac = 19) ptt
ON ind.Individual_Obj_PK = ptt.fk_object  AND sta.DATE BETWEEN ptt.begin_date AND COALESCE(ptt.end_date, CURRENT_TIMESTAMP)
LEFT OUTER JOIN (SELECT * FROM TObj_Carac_value WHERE Fk_carac = 5) vhf
ON ind.Individual_Obj_PK = vhf.fk_object  AND sta.DATE BETWEEN vhf.begin_date AND COALESCE(vhf.end_date, CURRENT_TIMESTAMP)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nest"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 220
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "ind"
            Begin Extent = 
               Top = 63
               Left = 353
               Bottom = 182
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sta"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 125
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Eggs"
            Begin Extent = 
               Top = 246
               Left = 301
               Bottom = 350
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Nest_AllStations_with_relatedMother_data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Nest_AllStations_with_relatedMother_data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Nest_AllStations_with_relatedMother_data'
GO
/****** Object:  Trigger [tr_AfterDeleteTransectsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Transects delete
CREATE TRIGGER [dbo].[tr_AfterDeleteTransectsToProtocoleSummary]
ON [dbo].[TProtocol_Transects]
AFTER Delete
as
Begin
print('After Delete Transects')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,15,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeleteTracks_and_CluesToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Tracks_and_Clues delete
CREATE TRIGGER [dbo].[tr_AfterDeleteTracks_and_CluesToProtocoleSummary]
ON [dbo].[TProtocol_Track_clue]
AFTER Delete
as
Begin
print('After Delete Tracks_and_Clues')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,6,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteStation_equipmentToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Station_equipment delete
CREATE TRIGGER [dbo].[tr_AfterDeleteStation_equipmentToProtocoleSummary]
ON [dbo].[TProtocol_Station_equipment]
AFTER Delete
as
Begin
print('After Delete Station_equipment')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,29,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeleteStation_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Station_description delete
CREATE TRIGGER [dbo].[tr_AfterDeleteStation_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_habitat]
AFTER Delete
as
Begin
print('After Delete Station_description')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,8,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeleteSimplified_HabitatToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Simplified_Habitat delete
CREATE TRIGGER [dbo].[tr_AfterDeleteSimplified_HabitatToProtocoleSummary]
ON [dbo].[TProtocol_Simplified_Habitat]
AFTER Delete
as
Begin
print('After Delete Simplified_Habitat')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,1,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeleteSighting_conditionsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Sighting_conditions delete
CREATE TRIGGER [dbo].[tr_AfterDeleteSighting_conditionsToProtocoleSummary]
ON [dbo].[TProtocol_Sighting_conditions]
AFTER Delete
as
Begin
print('After Delete Sighting_conditions')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,7,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeletePlant_inventoryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Plant_inventory delete
CREATE TRIGGER [dbo].[tr_AfterDeletePlant_inventoryToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_releve]
AFTER Delete
as
Begin
print('After Delete Plant_inventory')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,9,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteChiro_detectionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Chiro_detection delete
CREATE TRIGGER [dbo].[tr_AfterDeleteChiro_detectionToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_detection]
AFTER Delete
as
Begin
print('After Delete Chiro_detection')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,13,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteChiro_captureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Chiro_capture delete
CREATE TRIGGER [dbo].[tr_AfterDeleteChiro_captureToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_capture]
AFTER Delete
as
Begin
print('After Delete Chiro_capture')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,12,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteBuilding_and_ActivitiesToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Building_and_Activities delete
CREATE TRIGGER [dbo].[tr_AfterDeleteBuilding_and_ActivitiesToProtocoleSummary]
ON [dbo].[TProtocol_Building_and_Activities]
AFTER Delete
as
Begin
print('After Delete Building_and_Activities')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,10,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterDeleteBiometryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Biometry delete
CREATE TRIGGER [dbo].[tr_AfterDeleteBiometryToProtocoleSummary]
ON [dbo].[TProtocol_Bird_Biometry]
AFTER Delete
as
Begin
print('After Delete Biometry')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,17,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteArgos_GPSToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_GPS delete
CREATE TRIGGER [dbo].[tr_AfterDeleteArgos_GPSToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataGPS]
AFTER Delete
as
Begin
print('After Delete Argos_GPS')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,21,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteArgos_ArgosToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_Argos delete
CREATE TRIGGER [dbo].[tr_AfterDeleteArgos_ArgosToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataArgos]
AFTER Delete
as
Begin
print('After Delete Argos_Argos')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,24,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteNest_and_clutch_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Nest_and_clutch_description delete
CREATE TRIGGER [dbo].[tr_AfterDeleteNest_and_clutch_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Nest_Description]
AFTER Delete
as
Begin
print('After Delete Nest_and_clutch_description')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,2,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteEntomo_populationToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Entomo_population delete
CREATE TRIGGER [dbo].[tr_AfterDeleteEntomo_populationToProtocoleSummary]
ON [dbo].[TProtocol_Entomo_population]
AFTER Delete
as
Begin
print('After Delete Entomo_population')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,11,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterInsertChiro_detectionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Chiro_detection insert
CREATE TRIGGER [dbo].[tr_AfterInsertChiro_detectionToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_detection]
AFTER INSERT
as
Begin
print('After Insert Chiro_detection')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,13,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertChiro_captureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Chiro_capture insert
CREATE TRIGGER [dbo].[tr_AfterInsertChiro_captureToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_capture]
AFTER INSERT
as
Begin
print('After Insert Chiro_capture')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,12,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertBuilding_and_ActivitiesToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Building_and_Activities insert
CREATE TRIGGER [dbo].[tr_AfterInsertBuilding_and_ActivitiesToProtocoleSummary]
ON [dbo].[TProtocol_Building_and_Activities]
AFTER INSERT
as
Begin
print('After Insert Building_and_Activities')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,10,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertBiometryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Biometry insert
CREATE TRIGGER [dbo].[tr_AfterInsertBiometryToProtocoleSummary]
ON [dbo].[TProtocol_Bird_Biometry]
AFTER INSERT
as
Begin
print('After Insert Biometry')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,17,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertArgos_GPSToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_GPS insert
CREATE TRIGGER [dbo].[tr_AfterInsertArgos_GPSToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataGPS]
AFTER INSERT
as
Begin
print('After Insert Argos_GPS')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,21,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertArgos_ArgosToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_Argos insert
CREATE TRIGGER [dbo].[tr_AfterInsertArgos_ArgosToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataArgos]
AFTER INSERT
as
Begin
print('After Insert Argos_Argos')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,24,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from TProtocol_ArgosDataArgos
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_ReleaseToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Release delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_ReleaseToProtocoleSummary]
ON [dbo].[TProtocol_Release_Group]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Release')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,28,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterInsertTransectsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Transects insert
CREATE TRIGGER [dbo].[tr_AfterInsertTransectsToProtocoleSummary]
ON [dbo].[TProtocol_Transects]
AFTER INSERT
as
Begin
print('After Insert Transects')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,15,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertTracks_and_CluessToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Tracks_and_Clues insert
CREATE TRIGGER [dbo].[tr_AfterInsertTracks_and_CluessToProtocoleSummary]
ON [dbo].[TProtocol_Track_clue]
AFTER INSERT
as
Begin
print('After Insert Tracks_and_Clues')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,6,sta.LAT,sta.LON,sta.DATE,PK,name_taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertStation_equipmentToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Station_equipment insert
CREATE TRIGGER [dbo].[tr_AfterInsertStation_equipmentToProtocoleSummary]
ON [dbo].[TProtocol_Station_equipment]
AFTER INSERT
as
Begin
print('After Insert Station_equipment')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,29,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertStation_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Station_description insert
CREATE TRIGGER [dbo].[tr_AfterInsertStation_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_habitat]
AFTER INSERT
as
Begin
print('After Insert Station_description')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,8,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertSimplified_HabitatToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------- Trigger
---- Simplified_Habitat insert
CREATE TRIGGER [dbo].[tr_AfterInsertSimplified_HabitatToProtocoleSummary]
ON [dbo].[TProtocol_Simplified_Habitat]
AFTER INSERT
as
Begin
print('After Insert Simplified_Habitat')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,1,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertSighting_conditionsToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Sighting_conditions insert
CREATE TRIGGER [dbo].[tr_AfterInsertSighting_conditionsToProtocoleSummary]
ON [dbo].[TProtocol_Sighting_conditions]
AFTER INSERT
as
Begin
print('After Insert Sighting_conditions')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,7,sta.LAT,sta.LON,sta.DATE,PK from TProtocol_Sighting_conditions
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertPlant_inventoryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Plant_inventory insert
CREATE TRIGGER [dbo].[tr_AfterInsertPlant_inventoryToProtocoleSummary]
ON [dbo].[TProtocol_Phytosociology_releve]
AFTER INSERT
as
Begin
print('After Insert Plant_inventory')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,9,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertNest_and_clutch_descriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Nest_and_clutch_description insert
CREATE TRIGGER [dbo].[tr_AfterInsertNest_and_clutch_descriptionToProtocoleSummary]
ON [dbo].[TProtocol_Nest_Description]
AFTER INSERT
as
Begin
print('After Insert Nest_and_clutch_description')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TIND_ID,FK_TSta_ID,2,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertEntomo_populationToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Entomo_population insert
CREATE TRIGGER [dbo].[tr_AfterInsertEntomo_populationToProtocoleSummary]
ON [dbo].[TProtocol_Entomo_population]
AFTER INSERT
as
Begin
print('After Insert Entomo_population')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,11,sta.LAT,sta.LON,sta.DATE,PK from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_interviewingToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_interviewing delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_interviewingToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_interview]
AFTER Delete
as
Begin
print('After Delete Vertebrate_interviewing')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,22,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_Individual_DeathToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Individual_Death delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_Individual_DeathToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual_Death]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Individual_Death')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,20,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_CaptureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Capture delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_CaptureToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Group]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Capture')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TSta_ID,18,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID 

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_interviewingToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_interviewing insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_interviewingToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_interview]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_interviewing')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,22,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_Individual_DeathToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Individual_Death insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_Individual_DeathToProtocoleSummary]
ON [dbo].[TProtocol_Vertebrate_Individual_Death]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Individual_Death')
INSERT INTO [TProtocol_Summary] (Fk_Ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,20,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_CaptureToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Vertebrate_Capture insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_CaptureToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Group]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Capture')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,18,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterUpdateBuilding_and_ActivitiesToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Building_and_Activities update
CREATE TRIGGER [dbo].[tr_AfterUpdateBuilding_and_ActivitiesToProtocoleSummary]
ON [dbo].[TProtocol_Building_and_Activities]
AFTER UPDATE
as
Begin
print('After Update Building_and_Activities')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,10,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,10,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  Trigger [tr_AfterUpdateBiometryToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Biometry update
CREATE TRIGGER [dbo].[tr_AfterUpdateBiometryToProtocoleSummary]
ON [dbo].[TProtocol_Bird_Biometry]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Aerian_Individuals')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,17,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,17,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateArgos_GPSToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_GPS update
CREATE TRIGGER [dbo].[tr_AfterUpdateArgos_GPSToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataGPS]
AFTER UPDATE
as
Begin
print('After Update TProtocol_ArgosDataGPS')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,21,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,21,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateArgos_ArgosToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Argos_Argos update
CREATE TRIGGER [dbo].[tr_AfterUpdateArgos_ArgosToProtocoleSummary]
ON [dbo].[TProtocol_ArgosDataArgos]
AFTER UPDATE
as
Begin
print('After Update Argos_Argos')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,24,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,24,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdatChiro_detectionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Chiro_detection update
CREATE TRIGGER [dbo].[tr_AfterUpdatChiro_detectionToProtocoleSummary]
ON [dbo].[TProtocol_Chiroptera_detection]
AFTER UPDATE
as
Begin
print('After Update Chiro_detection')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TSta_ID,13,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for Select FK_TSta_ID,13,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_ReleaseToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Vertebrate_Release insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_ReleaseToProtocoleSummary]
ON [dbo].[TProtocol_Release_Group]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Release')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TSta_ID,28,sta.LAT,sta.LON,sta.DATE,PK,Name_Taxon from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_Release_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Release_indiv insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_Release_indivToProtocoleSummary]
ON [dbo].[TProtocol_Release_Individual]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Release_indiv')
INSERT INTO [TProtocol_Summary] (fk_ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,30,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterInsertVertebrate_Capture_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Capture_indiv insert
CREATE TRIGGER [dbo].[tr_AfterInsertVertebrate_Capture_indivToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Individual]
AFTER INSERT
as
Begin
print('After Insert Vertebrate_Capture_indiv')
INSERT INTO [TProtocol_Summary] (fk_ind,Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole,Taxon)
Select FK_TInd_ID,FK_TSta_ID,31,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID
end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_Capture_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Capture_indiv delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_Capture_indivToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Individual]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Capture_indiv')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,31,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterInsertClutch_DescriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Clutch_Description insert
CREATE TRIGGER [dbo].[tr_AfterInsertClutch_DescriptionToProtocoleSummary]
ON [dbo].[TProtocol_Clutch_Description]
AFTER INSERT
as
Begin
print('After Insert Clutch_Description')
INSERT INTO [TProtocol_Summary] (Fk_Station,StationType,LAT,LON,DATE,Fk_Protocole)
Select FK_TSta_ID,27,sta.LAT,sta.LON,sta.DATE,PK from  INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID
end
GO
/****** Object:  Trigger [tr_AfterDeleteVertebrate_Release_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Release_indiv delete
CREATE TRIGGER [dbo].[tr_AfterDeleteVertebrate_Release_indivToProtocoleSummary]
ON [dbo].[TProtocol_Release_Individual]
AFTER Delete
as
Begin
print('After Delete Vertebrate_Release_indiv')
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,30,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

Delete from [TProtocol_Summary] 
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterDeleteClutch_DescriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Clutch_Description delete
CREATE TRIGGER [dbo].[tr_AfterDeleteClutch_DescriptionToProtocoleSummary]
ON [dbo].[TProtocol_Clutch_Description]
AFTER Delete
as
Begin
print('After Delete Clutch_Description')
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,27,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

Delete from [TProtocol_Summary] 
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Ind_SelectStationsWhithIndividualX]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 13/01/2009
-- Update date: 04/12/2009
-- Description:	Fonction renvoyant les données sur les stations où un/des protocoles ont 
--			été réalisés sur un individu pendant une période de temps données
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sys_Ind_SelectStationsWhithIndividualX] 
	-- @Fk_TInd : identifiant de l'individu d'intéret
	-- @TablePrName : nom de la table du protocole si = à All tous les protocoles
	@Fk_TInd int = 0,
	@TablePrName nvarchar(100) = 'All', 
	@beginDate nvarchar(100) = NULL,
	@endDate  nvarchar(100) = NULL
AS
BEGIN
	
	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), FK_TSta_ID int)

	DECLARE @tablename nvarchar(100), @sql nvarchar(500),  @wheredate nvarchar(500), @bDate datetime, @eDate datetime;
	
	SET DATEFORMAT DMY
	
	---Ajout des conditions DATES
	IF @endDate IS NULL
	BEGIN
		SET @eDate = CAST( FLOOR( CAST(dateadd(day, 1, CURRENT_TIMESTAMP) AS FLOAT ) ) AS DATETIME )
	END
	ELSE 
	BEGIN
		SET @eDate =  CAST( FLOOR( CAST(dateadd(day, 1, @endDate) AS FLOAT ) ) AS DATETIME )
	END
	
	IF NOT @beginDate IS NULL
	BEGIN
		SET @bDate = CAST( @beginDate AS DATETIME)
		SET @wheredate = ' AND date  BETWEEN ''' + CAST(@bDate AS nvarchar(100)) + ''' AND ''' + CAST(@eDate AS nvarchar(100))+ ''''
	END
	
	IF @TablePrName = 'All' 
	BEGIN
		--Liste des tables protocoles actifs ayant un champ FK_TInd_ID
		DECLARE c CURSOR  FOR 
			SELECT tables.name
			FROM 
				dbo.syscolumns col, 
				sysobjects tables
			WHERE 
				tables.id = col.id AND tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%'AND col.name ='FK_TInd_ID';
		--Pour chaque protocole
		OPEN c
			FETCH c into  @tablename
			WHILE @@FETCH_STATUS = 0
				BEGIN
					--Selection de l'identifiant des protocoles d'intéret 
					SET @sql= 'SELECT  '''+@tablename+''', FK_TSta_ID FROM '+@tablename+' JOIN TStations ON FK_TSTA_ID = TSTA_PK_ID WHERE FK_TInd_ID= '+CAST (@Fk_TInd AS VARCHAR);
					INSERT INTO #tabletemp EXEC (@sql+@wheredate);
				FETCH c INTO @tablename
				END
		CLOSE c
		DEALLOCATE  c
	END
	ELSE
	BEGIN
		SET @sql= 'SELECT  '''+@TablePrName+''', FK_TSta_ID FROM '+@TablePrName+' JOIN TStations ON FK_TSTA_ID = TSTA_PK_ID WHERE FK_TInd_ID= '+CAST (@Fk_TInd AS VARCHAR);
		INSERT INTO #tabletemp EXEC (@sql+@wheredate);
	END
	
	--Retour de la procédure
	--SELECT 
	--	V_Qry_StationsForMap.*
	--FROM #tabletemp tmp
	--JOIN 
	--	V_Qry_StationsForMap
	--ON V_Qry_StationsForMap.TSta_PK_ID = tmp.FK_TSta_ID
	--ORDER BY V_Qry_StationsForMap.DATE
	
	Select V_Qry_StationsForMap.*
		From V_Qry_StationsForMap
		Where TSta_PK_ID in (select distinct FK_TSta_ID from #tabletemp)
		ORDER BY V_Qry_StationsForMap.DATE
		
	DROP TABLE #tabletemp
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_Argos_NearestStationForOneIndividualAndDate]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  Natural solution
-- Create date: 19/03/2010
-- Description: Fonction renvoyant la stations antérieure à une date données où un/des protocoles ont 
--   été réalisés sur un individu
CREATE PROCEDURE [dbo].[sp_Sys_Argos_NearestStationForOneIndividualAndDate]
 -- @Fk_TInd : identifiant de l'individu d'intéret
 -- @Date : date pour laquelle on veut récupérer la première station antérieure pour cet individu
 @Fk_TInd int ,
 @Date datetime = NULL,
 @DateStr nvarchar(50)
AS
BEGIN
 
 SET DATEFORMAT 'YMD';
 IF @Date is null SET @Date = CAST(@DateStr as DATETIME);
 
 --Création du table temporaire qui contiendra pour chaque réalisation de protocole le nom de ce protocole et son identifiant
 CREATE TABLE #tabletemp (tablename nvarchar(200), FK_TSta_ID int)

 DECLARE @tablename nvarchar(100), @sql nvarchar(500);

 --Liste des tables protocoles actifs ayant un champ FK_TInd_ID
 DECLARE c CURSOR  FOR 
  SELECT tables.name
  FROM 
   dbo.syscolumns col, 
   sysobjects tables
  WHERE 
   tables.id = col.id AND tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%'AND col.name ='FK_TInd_ID';
 --Pour chaque protocole
 OPEN c
  FETCH c into  @tablename
  WHILE @@FETCH_STATUS = 0
   BEGIN
    --Selection de l'identifiant des protocoles d'intéret 
    SET @sql= 'SELECT  '''+@tablename+''', FK_TSta_ID FROM '+@tablename+' JOIN TStations ON FK_TSTA_ID = TSTA_PK_ID WHERE FK_TInd_ID= '+CAST (@Fk_TInd AS VARCHAR);
    INSERT INTO #tabletemp EXEC (@sql);
   FETCH c INTO @tablename
   END
 CLOSE c
 DEALLOCATE  c

 
 --Retour de la procédure
 --PK_ID, LAT, LON, ELE, DATE, différence en seconde
 SELECT DISTINCT  TOP 1
  V_Qry_StationsForMap.TSTA_PK_ID, V_Qry_StationsForMap.LAT, V_Qry_StationsForMap.LON,
  V_Qry_StationsForMap.ELE, V_Qry_StationsForMap.DATE, DATEDIFF(second  , Date, @Date) AS SecDiff,
  V_Qry_StationsForMap.Creation_date 
 FROM #tabletemp tmp
 JOIN 
  V_Qry_StationsForMap
 ON V_Qry_StationsForMap.TSta_PK_ID = tmp.FK_TSta_ID
 WHERE DATEDIFF(second  , Date, @Date)  > 0
 ORDER BY DATEDIFF(second  , Date, @Date)
 
 DROP TABLE #tabletemp
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AdminQry_SelectProtocolesForAllStations]    Script Date: 07/02/2014 14:07:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Natural solution
-- Create date: 13/01/2009
-- Description:	Fonction renvoyant la liste des protocoles réalisés sur une station donnée
-- =============================================
CREATE PROCEDURE[dbo].[sp_AdminQry_SelectProtocolesForAllStations] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Création du table temporaire qui contiendra pour chauqe réalisation de protocole le nom de ce protocole et son identifiant
	CREATE TABLE #tabletemp (tablename nvarchar(200), prlibelle nvarchar(200), pk int, FK_TSta_ID int)

	DECLARE @tablename nvarchar(100),@prname nvarchar(100), @sql nvarchar(500);

	--Liste des tables protocoles actifs
	DECLARE c CURSOR  FOR 
		SELECT tables.name , REPLACE(tables.name, 'TProtocol_', '')
		FROM sysobjects tables
		WHERE tables.xtype = 'U' AND tables.name LIKE 'TProtocol[^e]%';

	--Pour chaque protocole
	open c
		fetch c into  @tablename, @prname
		while @@FETCH_STATUS = 0
			begin
				--Selection de l'identifiant des protocoles d'intéret 
				SET @sql= 'SELECT  '''+@tablename+''', '''+@prname+''', PK , FK_TSta_ID FROM '+@tablename;
				INSERT INTO #tabletemp EXEC (@sql)
			fetch c into @tablename, @prname
			end
	close c
	deallocate  c
	--Retour de la procédure
	SELECT 
		V_Qry_StationsForMap.*,
		prlibelle, 
		pk
	FROM 
		#tabletemp 
	JOIN
		dbo.V_Qry_StationsForMap
	ON FK_TSta_ID = TSta_PK_ID
	ORDER BY FK_TSta_ID
	DROP TABLE #tabletemp
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_v_qry_GetArgosGPS_DataPerDay_withStatus_60j_90j_365j_xj_ForInd]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la fonction fn_v_qry_GetArgosGPS_DataPerDay_withStatus_60j_90j_365j_xj_ForInd
CREATE FUNCTION [dbo].[fn_v_qry_GetArgosGPS_DataPerDay_withStatus_60j_90j_365j_xj_ForInd](@Ind_id AS int, @deathDate AS Datetime, @ReleaseDate AS Datetime)
  RETURNS TABLE
AS
RETURN   
SELECT * 
FROM  (
	SELECT   
		status AS _xj_status,lastDate AS _xj_lastDate,MaxDateDiff AS _xj_MaxDateDiff,dateDiffSinceRel AS _xj_dateDiffSinceRel,FK_TSta_ID AS _xj_FK_TSta_ID,PK AS _xj_PK,
		DATE AS _xj_DATE, NAME AS _xj_staName, LAT AS _xj_LAT,LON AS _xj_LON,Area AS _xj_Area,Locality AS _xj_Locality, ELE AS _xj_ELE,Precision AS _xj_Precision,FK_TInd_ID AS _xj_FK_TInd_ID
	FROM (SELECT * FROM TViewIndividual	WHERE  Individual_Obj_PK = @Ind_id) ind
	CROSS apply [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd]( @Ind_id,@deathDate, @ReleaseDate,  DATEDIFF(day, @ReleaseDate,  CURRENT_TIMESTAMP)) as _xj
) _xj
LEFT OUTER JOIN (
	SELECT	_365j.status AS _365j_status, _365j.lastDate AS _365j_lastDate, _365j.MaxDateDiff AS _365j_MaxDateDiff, _365j.dateDiffSinceRel AS _365j_dateDiffSinceRel, _365j.FK_TSta_ID AS _365j_FK_TSta_ID, _365j.PK AS _365j_PK
	FROM (SELECT * FROM TViewIndividual	WHERE  Individual_Obj_PK = @Ind_id) ind	
	CROSS apply [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd]( @Ind_id,@deathDate, @ReleaseDate, 365) as _365j
) _365j
ON _365j_PK = _xj_PK
LEFT OUTER JOIN (
	SELECT	_90j.status AS _90j_status, _90j.lastDate AS _90j_lastDate, _90j.MaxDateDiff AS _90j_MaxDateDiff, _90j.dateDiffSinceRel AS _90j_dateDiffSinceRel, _90j.FK_TSta_ID AS _90j_FK_TSta_ID, _90j.PK AS _90j_PK
	FROM (SELECT * FROM TViewIndividual	WHERE  Individual_Obj_PK = @Ind_id) ind
	CROSS apply [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd]( @Ind_id,@deathDate, @ReleaseDate, 90) as _90j
) _90j
ON _365j_PK = _90j_PK
LEFT OUTER JOIN (
	SELECT	_60j.status AS _60j_status, _60j.lastDate AS _60j_lastDate, _60j.MaxDateDiff AS _60j_MaxDateDiff, _60j.dateDiffSinceRel AS _60j_dateDiffSinceRel, _60j.FK_TSta_ID AS _60j_FK_TSta_ID, _60j.PK AS _60j_PK
	FROM (SELECT * FROM TViewIndividual	WHERE  Individual_Obj_PK = @Ind_id) ind
	CROSS apply [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_xj_ForInd]( @Ind_id,@deathDate, @ReleaseDate, 60) as _60j
) _60j
ON _60j_PK = _90j_PK
GO
/****** Object:  View [dbo].[V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_CurrentIndiv]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_CurrentIndiv
CREATE VIEW [dbo].[V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_CurrentIndiv] AS 
SELECT 
	individual_obj_pk as ind_id,id2@Thes_Age_Precision as Age,id19@TCarac_PTT AS currentPTT, 
	id9@TCarac_Release_Ring_Code as Release_Code,id12@TCarac_Breeding_Ring_Code as Breeding_Code,id13@TCarac_Chip_Code as Chip_Code,id30@TCaracThes_Sex_Precision as Sex,
	id33@Thes_Origin_Precision as Origine,id34@TCaracThes_Species_Precision as Taxon,id35@Birth_date as Birth_Date,id36@Death_date as Death_Date,
	id59@TCaracThes_Individual_Status as Ind_Status,id60@TCaracThes_Monitoring_Status_Precision as Monitoring_Status,id61@TCaracThes_Survey_type_Precision as Survey_Type,
	CurrentVHF as Current_VHF,CurrentPTT as Current_PTT,VHF@Station as VHF_Station,PTT@Station as PTT_Station,
	V_Qry_AllIndivs_FirstStation.StaType AS firstStaType, V_Qry_AllIndivs_FirstStation.StaDate  AS firstStaDate,
	V_Qry_AllIndivs_FirstStation.Area AS firstStaArea,
	_xj_FK_TSta_ID AS FK_TSta_ID,'Argos' AS StaType,_xj_staName AS Name,_xj_DATE AS DATE ,_xj_LAT AS LAT,_xj_LON AS LON,_xj_Precision AS Precision,_xj_Area AS Area,_xj_Locality AS Locality,_xj_PK AS d_xj_PK,_xj_status AS d_xj_status,_xj_lastDate AS d_xj_lastDate,_xj_MaxDateDiff AS d_xj_MaxDateDiff,_xj_dateDiffSinceRel AS d_xj_dateDiffSinceRel,
	_365j_PK AS d_365j_PK,_365j_status AS d_365j_status,_365j_lastDate AS d_365j_lastDate,_365j_MaxDateDiff AS d_365j_MaxDateDiff,
	_90j_PK AS d_90j_PK,_90j_status AS d_90j_status,_90j_lastDate AS d_90j_lastDate,_90j_MaxDateDiff AS d_90j_MaxDateDiff,
	_60j_PK AS d_60j_PK,_60j_status AS d_60j_status,_60j_lastDate AS d_60j_lastDate,_60j_dateDiffSinceRel AS d_60j_dateDiffSinceRel
FROM (SELECT * FROM TViewIndividual	WHERE NOT id19@TCarac_PTT IS NULL) ind
JOIN dbo.V_Qry_AllIndivs_FirstStation
ON Individual_Obj_PK = ind_id
CROSS APPLY [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_60j_90j_365j_xj_ForInd](Individual_Obj_PK,CAST(id36@Death_date as DATE), V_Qry_AllIndivs_FirstStation.StaDate) as jst
UNION
SELECT 	
	individual_obj_pk as ind_id,
	id2@Thes_Age_Precision as Age,id19@TCarac_PTT AS currentPTT, 
	id9@TCarac_Release_Ring_Code as Release_Code,id12@TCarac_Breeding_Ring_Code as Breeding_Code,id13@TCarac_Chip_Code as Chip_Code,id30@TCaracThes_Sex_Precision as Sex,id33@Thes_Origin_Precision as Origine,id34@TCaracThes_Species_Precision as Taxon,id35@Birth_date as Birth_Date,id36@Death_date as Death_Date,id59@TCaracThes_Individual_Status as Ind_Status,id60@TCaracThes_Monitoring_Status_Precision as Monitoring_Status,id61@TCaracThes_Survey_type_Precision as Survey_Type,
	CurrentVHF as Current_VHF,CurrentPTT as Current_PTT,VHF@Station as VHF_Station,PTT@Station as PTT_Station,
	V_Qry_AllIndivs_FirstStation.StaType AS firstStaType, V_Qry_AllIndivs_FirstStation.StaDate  AS firstStaDate,
	V_Qry_AllIndivs_FirstStation.Area AS firstStaArea,
	Sta_ID AS FK_TSta_ID,StaType AS StaType,StaName AS StaName,StaDate AS DATE ,LAT AS LAT,LON AS LON,
	Precision AS Precision,Area AS Area,Locality AS Locality,NULL AS d_xj_PK,
	'Capture_Release' AS d_xj_status,NULL AS d_xj_lastDate,0 AS d_xj_MaxDateDiff,0 AS d_xj_dateDiffSinceRel,
	NULL AS d_365j_PK,'Capture_Release' AS d_365j_status,NULL AS d_365j_lastDate,0 AS d_365j_MaxDateDiff,
	NULL AS d_90j_PK,'Capture_Release' AS d_90j_status,NULL AS d_90j_lastDate,0 AS d_90j_MaxDateDiff,
	NULL AS d_60j_PK,'Capture_Release' AS d_60j_status,NULL AS d_60j_lastDate,0 AS d_60j_dateDiffSinceRel
FROM (SELECT * FROM TViewIndividual	WHERE NOT id19@TCarac_PTT IS NULL) ind
JOIN dbo.V_Qry_AllIndivs_FirstStation
ON Individual_Obj_PK = ind_id
GO
/****** Object:  View [dbo].[V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_AllIndividuals]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_AllIndividuals
CREATE VIEW [dbo].[V_Qry_Argos_DataPerDay_withStatus_60j_90j_365j_xj_AllIndividuals] AS 
SELECT 
individual_obj_pk as ind_id,id2@Thes_Age_Precision as Age,ind.value AS currentPTT, 
	id9@TCarac_Release_Ring_Code as Release_Code,id12@TCarac_Breeding_Ring_Code as Breeding_Code,id13@TCarac_Chip_Code as Chip_Code,id30@TCaracThes_Sex_Precision as Sex,
	id33@Thes_Origin_Precision as Origine,id34@TCaracThes_Species_Precision as Taxon,id35@Birth_date as Birth_Date,id36@Death_date as Death_Date,
	id59@TCaracThes_Individual_Status as Ind_Status,id60@TCaracThes_Monitoring_Status_Precision as Monitoring_Status,id61@TCaracThes_Survey_type_Precision as Survey_Type,
	CurrentVHF as Current_VHF,CurrentPTT as Current_PTT,VHF@Station as VHF_Station,PTT@Station as PTT_Station,
	V_Qry_AllIndivs_FirstStation.StaType AS firstStaType, V_Qry_AllIndivs_FirstStation.StaDate  AS firstStaDate,
	V_Qry_AllIndivs_FirstStation.Area AS firstStaArea,
	_xj_FK_TSta_ID AS FK_TSta_ID,'Argos' AS StaType,_xj_staName AS Name,_xj_DATE AS DATE ,_xj_LAT AS LAT,_xj_LON AS LON,_xj_Precision AS Precision,_xj_Area AS Area,_xj_Locality AS Locality,_xj_PK AS d_xj_PK,_xj_status AS d_xj_status,_xj_lastDate AS d_xj_lastDate,_xj_MaxDateDiff AS d_xj_MaxDateDiff,_xj_dateDiffSinceRel AS d_xj_dateDiffSinceRel,
	_365j_PK AS d_365j_PK,_365j_status AS d_365j_status,_365j_lastDate AS d_365j_lastDate,_365j_MaxDateDiff AS d_365j_MaxDateDiff,
	_90j_PK AS d_90j_PK,_90j_status AS d_90j_status,_90j_lastDate AS d_90j_lastDate,_90j_MaxDateDiff AS d_90j_MaxDateDiff,
	_60j_PK AS d_60j_PK,_60j_status AS d_60j_status,_60j_lastDate AS d_60j_lastDate,_60j_dateDiffSinceRel AS d_60j_dateDiffSinceRel
FROM (SELECT * FROM Tobj_carac_value WHERE Fk_carac=19 AND object_type = 'Individual') ind
JOIN dbo.TViewIndividual
ON fk_object = individual_obj_pk
JOIN dbo.V_Qry_AllIndivs_FirstStation
ON Individual_Obj_PK = ind_id
CROSS APPLY [fn_v_qry_GetArgosGPS_DataPerDay_withStatus_60j_90j_365j_xj_ForInd](Individual_Obj_PK,CAST(id36@Death_date as DATE), V_Qry_AllIndivs_FirstStation.StaDate) as jst
UNION
SELECT 	
	individual_obj_pk as ind_id,
	id2@Thes_Age_Precision as Age,ind.value AS currentPTT, 
	id9@TCarac_Release_Ring_Code as Release_Code,id12@TCarac_Breeding_Ring_Code as Breeding_Code,id13@TCarac_Chip_Code as Chip_Code,id30@TCaracThes_Sex_Precision as Sex,id33@Thes_Origin_Precision as Origine,id34@TCaracThes_Species_Precision as Taxon,id35@Birth_date as Birth_Date,id36@Death_date as Death_Date,id59@TCaracThes_Individual_Status as Ind_Status,id60@TCaracThes_Monitoring_Status_Precision as Monitoring_Status,id61@TCaracThes_Survey_type_Precision as Survey_Type,
	CurrentVHF as Current_VHF,CurrentPTT as Current_PTT,VHF@Station as VHF_Station,PTT@Station as PTT_Station,
	V_Qry_AllIndivs_FirstStation.StaType AS firstStaType, V_Qry_AllIndivs_FirstStation.StaDate  AS firstStaDate,
	V_Qry_AllIndivs_FirstStation.Area AS firstStaArea,
	Sta_ID AS FK_TSta_ID,StaType AS StaType,StaName AS StaName,StaDate AS DATE ,LAT AS LAT,LON AS LON,
	Precision AS Precision,Area AS Area,Locality AS Locality,NULL AS d_xj_PK,
	'Capture_Release' AS d_xj_status,NULL AS d_xj_lastDate,0 AS d_xj_MaxDateDiff,0 AS d_xj_dateDiffSinceRel,
	NULL AS d_365j_PK,'Capture_Release' AS d_365j_status,NULL AS d_365j_lastDate,0 AS d_365j_MaxDateDiff,
	NULL AS d_90j_PK,'Capture_Release' AS d_90j_status,NULL AS d_90j_lastDate,0 AS d_90j_MaxDateDiff,
	NULL AS d_60j_PK,'Capture_Release' AS d_60j_status,NULL AS d_60j_lastDate,0 AS d_60j_dateDiffSinceRel
FROM (SELECT * FROM Tobj_carac_value WHERE Fk_carac=19 AND object_type = 'Individual') ind
JOIN dbo.TViewIndividual
ON fk_object = individual_obj_pk
JOIN dbo.V_Qry_AllIndivs_FirstStation
ON Individual_Obj_PK = ind_id
GO
/****** Object:  View [dbo].[V_Search_Indiv]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_AllIndivs_FirstStation
CREATE VIEW [dbo].[V_Search_Indiv] as
SELECT
Individual_Obj_PK as id,
id2@Thes_Age_Precision as age,
id19@TCarac_PTT as ptt,
id30@TCaracThes_Sex_Precision as sex,
id33@Thes_Origin_Precision as origin,
id34@TCaracThes_Species_Precision as specie,
id60@TCaracThes_Monitoring_Status_Precision as monitoringStatus,
id61@TCaracThes_Survey_type_Precision as surveyType,
rel.Area as releaseArea,
YEAR(rel.date) as releaseYear,
capt.Area as captureArea,
YEAR(capt.Date) as captureYear
FROM
	[ecoReleve_Data].[dbo].TViewIndividual
	left outer join 
	(select FK_TInd_ID, Area, Date
	from [ecoReleve_Data].[dbo].[TProtocol_Release_Individual]
	inner join [ecoReleve_Data].[dbo].TStations
	on FK_TSta_ID = TSta_PK_ID) rel
	on rel.FK_TInd_ID = Individual_Obj_PK
	left outer join
	(select FK_TInd_ID, Area, Date
	from [ecoReleve_Data].[dbo].[TProtocol_Capture_Individual]
	inner join [ecoReleve_Data].[dbo].TStations
	on FK_TSta_ID = TSta_PK_ID) capt
	on capt.FK_TInd_ID = Individual_Obj_PK
GO
/****** Object:  View [dbo].[V_Qry_Plant_Inventory]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Plant_Inventory
CREATE VIEW [dbo].[V_Qry_Plant_Inventory]
AS
SELECT DISTINCT 
	  fam.family, CAST(prPhyto.Name_Taxon AS varchar(255)) AS Taxon, sta.TSta_PK_ID AS ID_Station, sta.Name AS Name_Station, sta.DATE, sta.LAT, 
	  sta.LON, sta.ELE, sta.FieldWorker1, sta.FieldWorker2, sta.FieldWorker3, sta.FieldWorker4, sta.FieldWorker5, sta.FieldActivity_Name AS Protocol, sta.Area, sta.Locality, prPhyto.sampled, 
	  prPhytoHabitat.Name_Milieu, prPhytoHabitat.Name_Habitat2, prPhyto.Identity_sure, prPhyto.Comments, prPhyto.Cultivated
FROM         dbo.TProtocol_Phytosociology_releve AS prPhyto INNER JOIN
	  dbo.V_Qry_StationsForMap AS sta ON sta.TSta_PK_ID = prPhyto.FK_TSta_ID INNER JOIN
	  dbo.V_Qry_Plant_family AS fam ON prPhyto.Id_Taxon = fam.ID LEFT OUTER JOIN
	  dbo.TProtocol_Phytosociology_habitat AS prPhytoHabitat ON prPhytoHabitat.FK_TSta_ID = sta.TSta_PK_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "prPhyto"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "sta"
            Begin Extent = 
               Top = 2
               Left = 503
               Bottom = 216
               Right = 683
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "fam"
            Begin Extent = 
               Top = 6
               Left = 314
               Bottom = 216
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prPhytoHabitat"
            Begin Extent = 
               Top = 0
               Left = 672
               Bottom = 216
               Right = 921
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Plant_Inventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Plant_Inventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Qry_Plant_Inventory'
GO
/****** Object:  View [dbo].[V_Qry_AllIndivs_Released_YearArea]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_AllIndivs_Released_YearArea]
AS 
with cte as (
	select FK_TInd_ID, Area as releaseArea, YEAR(date) as releaseYear, ROW_NUMBER() over (partition by FK_TInd_ID order by date) as rn
	from TProtocol_Release_Individual
	inner join TStations
	on FK_TSta_ID = TSta_PK_ID
)

select FK_TInd_ID, releaseArea, releaseYear
from
cte
where
rn = 1
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_Release_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Release_indiv update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_Release_indivToProtocoleSummary]
ON [dbo].[TProtocol_Release_Individual]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Release_indiv')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,30,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,30,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateVertebrate_Capture_indivToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Vertebrate_Capture_indiv update
CREATE TRIGGER [dbo].[tr_AfterUpdateVertebrate_Capture_indivToProtocoleSummary]
ON [dbo].[TProtocol_Capture_Individual]
AFTER UPDATE
as
Begin
print('After Update Vertebrate_Capture_indiv')
DECLARE @Fk_Ind AS INT,@Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT,@Taxon as varchar(255)
DECLARE @OldFk_Ind AS INT,@OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT,@OldTaxon as varchar(255)

DECLARE cCheckU cursor for Select FK_TIND_ID,FK_TSta_ID,31,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision 
from INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

DECLARE cCheckOldU cursor for Select FK_TIND_ID,FK_TSta_ID,31,sta.LAT,sta.LON,sta.DATE,PK,Ind.id34@TCaracThes_Species_Precision from DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID join TViewIndividual as Ind on Individual_Obj_PK=FK_TInd_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Ind,@Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole,@Taxon

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Ind,@OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole,@OldTaxon

UPDATE [TProtocol_Summary] set Fk_Ind=@Fk_Ind,Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole,Taxon=@Taxon
where Fk_Ind=@OldFk_Ind and Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole and Taxon=@OldTaxon

end
GO
/****** Object:  Trigger [tr_AfterUpdateClutch_DescriptionToProtocoleSummary]    Script Date: 07/02/2014 14:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Clutch_Description update
CREATE TRIGGER [dbo].[tr_AfterUpdateClutch_DescriptionToProtocoleSummary]
ON [dbo].[TProtocol_Clutch_Description]
AFTER UPDATE
as
Begin
print('After Update Clutch_Description')
DECLARE @Fk_Station AS INT,@StationType AS INT,@LAT AS decimal(9, 5),@LON AS decimal(9, 5),@DATE AS datetime,@Fk_Protocole AS INT
DECLARE @OldFk_Station AS INT,@OldStationType AS INT,@OldLAT AS decimal(9, 5),@OldLON AS decimal(9, 5),@OldDATE AS datetime,@OldFk_Protocole AS INT

DECLARE cCheckU cursor for SELECT FK_TSta_ID,27,sta.LAT,sta.LON,sta.DATE,PK FROM INSERTED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

DECLARE cCheckOldU cursor for SELECT FK_TSta_ID,27,sta.LAT,sta.LON,sta.DATE,PK FROM DELETED
join TStations as sta on FK_TSta_ID=TSta_PK_ID

OPEN cCheckU
FETCH NEXT FROM cCheckU INTO @Fk_Station,@StationType,@LAT,@LON,@DATE,@Fk_Protocole

OPEN cCheckOldU
FETCH NEXT FROM cCheckOldU INTO @OldFk_Station,@OldStationType,@OldLAT,@OldLON,@OldDATE,@OldFk_Protocole

UPDATE [TProtocol_Summary] set Fk_Station=@Fk_Station,StationType=@StationType,LAT=@LAT,LON=@LON,[DATE]=@DATE,Fk_Protocole=@Fk_Protocole
where Fk_Station=@OldFk_Station and StationType=@OldStationType and LAT=@OldLAT and LON=@OldLON and [DATE]=@OldDATE and Fk_Protocole=@OldFk_Protocole

end
GO
/****** Object:  View [dbo].[V_Qry_Nest_Schedule_MonitoredNest]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Nest_Schedule_MonitoredNest
CREATE  VIEW [dbo].[V_Qry_Nest_Schedule_MonitoredNest]
AS
SELECT 
	v.[TSta_PK_ID], v.[FieldWorker1], v.[FieldWorker2],v.[FieldWorker3],v.[FieldWorker4],v.[FieldWorker5], v.[NbFieldWorker], v.[FieldActivity_Name], 
	v.[Name], v.[Area], v.[Locality], v.[DATE], v.[LAT], v.[LON], v.[Precision], v.[ELE], 
	v.[Creator], v.[Creation_date], v.[TSta_FK_TGeo_ID], 
	v.[Site_name], v.[Site_idType], v.[Site_type], v.[FieldActivity_ID],
	Eggs.Nb_Egg, lastNestDescription.FK_TIND_ID, 
	TViewIndividual.id19@TCarac_PTT, TViewIndividual.id5@TCarac_Transmitter_Frequency, TViewIndividual.id33@Thes_Origin_Precision, TViewIndividual.id13@TCarac_Chip_Code, TViewIndividual.id9@TCarac_Release_Ring_Code,
	totalAvghatchDate As HatchingDate,
	CASE 
		WHEN (DATEADD( day, 7, v.DATE) <= CURRENT_TIMESTAMP) AND (totalAvghatchDate <= CURRENT_TIMESTAMP )  THEN CURRENT_TIMESTAMP
		WHEN (DATEADD( day, 7, v.DATE) >=  DATEADD( day, -2, totalAvghatchDate))  THEN totalAvghatchDate
		WHEN ((DATEADD( day, 7, v.DATE) >  DATEADD( day,-7, totalAvghatchDate))) 
			AND ((DATEADD( day, 7, v.DATE) <  DATEADD( day, -2, totalAvghatchDate)) )  THEN DATEADD( day, 7, v.DATE)
		ELSE DATEADD( day, 7, v.DATE)
	END AS  NextVisiteDate, 
	CASE 
		WHEN (DATEADD( day, 7, v.DATE) <= CURRENT_TIMESTAMP) AND (totalAvghatchDate <= CURRENT_TIMESTAMP )   THEN 'CURRENT_TIMESTAMP'
		WHEN ((DATEADD( day, 7, v.DATE) >  DATEADD( day, -5, totalAvghatchDate))) 
		AND ((DATEADD( day, 7, v.DATE) <  DATEADD( day, -2, totalAvghatchDate)) )  THEN 'Jaune'
	END AS CASNextVisiteDate
FROM (
	SELECT 	
		CAST(CAST((AVG(CAST(hatchDate1 AS float)) + AVG(CAST(hatchDate2 AS float))) AS INT) /2 + CAST((AVG(CAST(hatchDate1 AS float)) + AVG(CAST(hatchDate2 AS float))) AS INT)%2 AS datetime)  AS totalAvghatchDate,
		MIN(hatchDate1) AS minhatchDate1,  MAX(hatchDate1) AS maxhatchDate1,  MIN(hatchDate2) AS  minhatchDate2,  MAX(hatchDate2)AS  maxhatchDate2, 
		MIN(clutchDate1) AS minclutchDate1,  MAX(clutchDate1) AS maxclutchDate1, MIN(clutchDate2) AS minclutchDate2,  MAX(clutchDate2) AS maxclutchDate2 ,
		MAX(DATE) AS lastStaDate, TSta_FK_TGeo_ID, count(*) as dataEggNb
	FROM (
		SELECT ClutchHatch.*, lastEggData.PK, lastEggData.FK_TSta_ID, lastEggData.FK_Nest, lastEggData.Egg_code, lastEggData.Id_EggStatus,
			lastEggData.LAT, lastEggData.LON, lastEggData.ELE, lastEggData.DATE, lastEggData.Name, lastEggData.TSta_FK_TGeo_ID, lastEggData.TSta_PK_ID
		FROM (
			SELECT eggData.* , [Name_Taxon]
			FROM (
				SELECT clutch.* , TStations.lat, LON, ELE, DATE, Name, TSta_PK_ID , TSta_FK_TGeo_ID 
				FROM dbo.TProtocol_Clutch_Description AS clutch
				JOIN dbo.TStations
				ON clutch.FK_TSta_ID = tsta_pk_id
			) AS eggData
			JOIN (
				SELECT MAX(tstations.DATE) as lastDate,[Egg_code], FK_tind_id, [Name_Taxon]
				FROM dbo.TProtocol_Nest_Description AS  nest
				JOIN dbo.TProtocol_Clutch_Description AS clutch
				ON clutch.FK_nest = nest.PK
				JOIN dbo.TStations
				ON clutch.FK_TSta_ID = tsta_pk_id
				WHERE  NOT (clutch.Weight IS NULL AND clutch.Length IS NULL AND clutch.Width IS NULL)
				GROUP BY [Egg_code], FK_tind_id, [Name_Taxon]
			) AS lastMeasure
			ON eggData.[Egg_code] = lastMeasure.Egg_code AND eggData.DATE = lastMeasure.lastDate
		) AS lastEggData
		CROSS APPLY	dbo.fn_user_Get_ClutchHatchDate (lastEggData.Weight, lastEggData.Length , lastEggData.Width, lastEggData.DATE,[Name_Taxon]) as  ClutchHatch
	) lastEggDataHatch
	GROUP BY TSta_FK_TGeo_ID
) AS meanCluchData
LEFT OUTER JOIN (
	SELECT 
		v.[TSta_PK_ID], v.[FieldWorker1], v.[FieldWorker2],v.[FieldWorker3],v.[FieldWorker4],v.[FieldWorker5], v.[NbFieldWorker], v.[FieldActivity_Name], 
		v.[Name], v.[Area], v.[Locality], v.[DATE], v.[LAT], v.[LON], v.[Precision], v.[ELE], 
		v.[Creator], v.[Creation_date],  v.[TSta_FK_TGeo_ID], 
		v.[Site_name], v.[Site_idType], v.[Site_type], v.[FieldActivity_ID]
	FROM dbo.V_Qry_StationsForMap v 
	JOIN (
		SELECT MAX(DATE) as lastDate, TSta_FK_TGeo_ID , YEAR(DATE) AS year
		FROM dbo.Tstations
		WHERE FieldActivity_ID = 7 AND NOT TSta_FK_TGeo_ID IS NULL
		GROUP BY FieldActivity_Name, TSta_FK_TGeo_ID, YEAR(DATE)
	) as lastNestSta
	ON lastNestSta.TSta_FK_TGeo_ID = v.TSta_FK_TGeo_ID AND lastNestSta.lastDate = v.date AND  YEAR(v.DATE) = lastNestSta.year 
	AND FieldActivity_ID = 7 
) v
ON meanCluchData.TSta_FK_TGeo_ID = v.TSta_FK_TGeo_ID AND YEAR(meanCluchData.lastStaDate) = YEAR(v.date)
JOIN dbo.TProtocol_Nest_Description lastNestDescription
ON lastNestDescription.FK_TSTA_ID = v.TSta_PK_ID
LEFT OUTER JOIN (select COUNT(*) as Nb_Egg, Fk_nest, fk_tsta_id from dbo.TProtocol_Clutch_Description group by fk_nest, fk_tsta_id) as Eggs
on lastNestDescription.PK = Eggs.FK_Nest
LEFT OUTER JOIN dbo.TViewIndividual
ON lastNestDescription.FK_TIND_ID = TViewIndividual.Individual_Obj_PK
GO
/****** Object:  View [dbo].[V_Qry_Death_AllIndivs_AllStations]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Death_AllIndivs_AllStations
CREATE VIEW [dbo].[V_Qry_Death_AllIndivs_AllStations]
AS
SELECT     dbo.TProtocol_Vertebrate_individual_death.FK_TInd_ID, dbo.TViewIndividual.id33@Thes_Origin_Precision AS Origin, 	
	id60@TCaracThes_Monitoring_Status_Precision AS CurrentMonitoringStatus,
	id61@TCaracThes_Survey_type_Precision AS CurrentSurveyType,
	 dbo.TViewIndividual.id30@TCaracThes_Sex_Precision AS Sex, 
	dbo.TViewIndividual.id36@Death_date AS Death_date, sta.TSta_PK_ID, sta.FieldActivity_Name AS Field_activity, 
	sta.DATE, sta.LAT, sta.LON, sta.Area, sta.Locality, 
	dbo.TProtocol_Vertebrate_individual_death.Name_Death_Reason AS Reason_of_death, 
	dbo.TProtocol_Vertebrate_individual_death.Sure_reason AS Sure, dbo.TProtocol_Vertebrate_individual_death.Name_Remains AS Rest, 
	dbo.TProtocol_Vertebrate_individual_death.Name_Death_Time AS Death_time, dbo.TProtocol_Vertebrate_individual_death.Comments
FROM  dbo.TProtocol_Vertebrate_individual_death 
INNER JOIN dbo.TViewIndividual ON dbo.TProtocol_Vertebrate_individual_death.FK_TInd_ID = dbo.TViewIndividual.Individual_Obj_PK 
INNER JOIN dbo.V_Qry_StationsForMap sta ON dbo.TProtocol_Vertebrate_individual_death.FK_TSta_ID = sta.TSta_PK_ID
GO
/****** Object:  View [dbo].[V_Qry_Chiro_detection]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Chiro_detection
CREATE  VIEW [dbo].[V_Qry_Chiro_detection]
AS
SELECT 	
Tthesaurus_Taxon.topic_EN AS Vernacular_name,
	Tthesaurus_Taxon.definition_EN AS Latin_name,
	TProtocol_Chiroptera_detection.Ind_Id,
	TProtocol_Chiroptera_detection.Number,
	TProtocol_Chiroptera_detection.Time,
	TProtocol_Chiroptera_detection.Recorded,
	TProtocol_Chiroptera_detection.Comments,
    Tthesaurus_Record_type.topic_en AS Record_type,
    TProtocol_Chiroptera_detection.File_name,
    Tthesaurus_Call_type.topic_en As Call_type,
    TProtocol_Chiroptera_detection.Flutter_0_min,
    TProtocol_Chiroptera_detection.Flutter_0_max, 
    Tthesaurus_Activity_type.topic_en AS Activity,
	v.[TSta_PK_ID], v.[FieldWorker1], v.[FieldWorker2],v.[FieldWorker3],v.[FieldWorker4],v.[FieldWorker5], v.[NbFieldWorker], v.[FieldActivity_Name],
	v.[Name], v.[Area], v.[Locality], v.[DATE], v.[LAT], v.[LON], v.[Precision], v.[ELE], 
	v.[Creator], v.[Creation_date], 
	v.[TSta_FK_TGeo_ID], v.[Site_name], v.[Site_idType], v.[Site_type], v.[FieldActivity_ID],
	TProtocol_Chiroptera_detection.PK as NumEnregistrement
FROM dbo.V_Qry_StationsForMap AS V
INNER JOIN dbo.TProtocol_Chiroptera_detection
    ON V.TSta_PK_ID = TProtocol_Chiroptera_detection.FK_TSta_ID
INNER JOIN dbo.Tthesaurus AS Tthesaurus_Taxon
    ON TProtocol_Chiroptera_detection.Id_Taxon = Tthesaurus_Taxon.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Call_type
    ON TProtocol_Chiroptera_detection.Id_Call_type = Tthesaurus_Call_type.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Activity_type
    ON TProtocol_Chiroptera_detection.Id_Activity_type = Tthesaurus_Activity_type.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Record_type
    ON TProtocol_Chiroptera_detection.Id_Record_type = Tthesaurus_Record_type.ID
GO
/****** Object:  View [dbo].[V_Qry_Chiro_capture]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Chiro_capture
CREATE  VIEW [dbo].[V_Qry_Chiro_capture]
AS
SELECT	
Tthesaurus_Taxon.topic_EN AS Vernacular_name,
Tthesaurus_Taxon.definition_EN AS Latin_name,
c.Dead,'1' as Number,c.Hour,c.Ind_Id,
Tthesaurus_Age.topic_en AS Age,
Tthesaurus_Sex.topic_en AS Sex,
c.Sampled,
c.Picture,c.Recatch,c.Recorded,
c.Comments,

c.[FA],c.Tib,c.D3,c.[D3_1],c.[D3_2],c.[D3_3],c.D4,c.[D4_1],c.[D4_2],c.D5,c.[D5_1],c.[D5_2],c.CM3,c.D1,
c.Claw_D1,c.tragus_Lenght,c.tragus_Width,c.Weight,c.CommentsBiometry,
Tthesaurus_Reproductive_Status_male.topic_EN AS Reproductive_Status_male,
Tthesaurus_Reproductive_Status_female.topic_EN AS Reproductive_Status_female,
Tthesaurus_Maturity_Female.topic_EN AS Maturity_Female,
c.CommentsPhysiology,
v.[TSta_PK_ID], v.[FieldWorker1], v.[FieldWorker2],v.[FieldWorker3],v.[FieldWorker4],v.[FieldWorker5], v.[NbFieldWorker], v.[FieldActivity_Name], v.[Name], v.[Area], v.[Locality], v.[DATE], v.[LAT], v.[LON], v.[Precision], v.[ELE], v.[Creator], v.[Creation_date], v.[TSta_FK_TGeo_ID], v.[Site_name], v.[Site_idType], v.[Site_type], v.[FieldActivity_ID],
c.PK as NumEnregistrement
FROM dbo.TProtocol_Chiroptera_capture AS c
INNER JOIN dbo.V_Qry_StationsForMap AS V
	ON c.FK_TSta_ID = V.TSta_PK_ID
INNER JOIN dbo.Tthesaurus AS Tthesaurus_Taxon
	ON c.Id_Taxon = Tthesaurus_Taxon.ID
INNER JOIN dbo.Tthesaurus AS Tthesaurus_Age
	ON c.Id_Age = Tthesaurus_Age.ID
INNER JOIN dbo.Tthesaurus AS Tthesaurus_Sex
	ON c.Id_Sex = Tthesaurus_Sex.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Reproductive_Status_male
	ON c.Id_Rep_Male = Tthesaurus_Reproductive_Status_male.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Reproductive_Status_female
	ON c.Id_Rep_Female = Tthesaurus_Reproductive_Status_female.ID
LEFT OUTER JOIN dbo.Tthesaurus AS Tthesaurus_Maturity_Female
	ON c.Id_Maturity_Female = Tthesaurus_Maturity_Female.ID
GO
/****** Object:  View [dbo].[V_Qry_Plant_Transects]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Plant_Transects
CREATE VIEW  [dbo].[V_Qry_Plant_Transects] as
SELECT     sta.TSta_PK_ID, sta.Name AS Station, f.family, transTax.Id_Taxon, transTax.Name_Taxon AS Taxon, transTax.nb_contact, Touch_Trans.Nb_Touch, sta.DATE, YEAR(sta.DATE) AS Annee, 
		  tr.Num_Transect, gtransect.Nb_transect, sta.FieldWorker1, sta.FieldWorker2, sta.FieldWorker3, sta.FieldWorker4, sta.FieldWorker5, sta.NbFieldWorker, sta.FieldActivity_ID, sta.FieldActivity_Name, sta.Name, sta.Area, 
		  sta.Locality, sta.LAT, sta.LON, sta.Precision, sta.ELE, sta.Creator, sta.Creation_date, sta.TSta_FK_TGeo_ID, sta.Site_name, sta.Site_idType, sta.Site_type, u1.Utilisateur as Observer,
		  u2.Utilisateur as Assistant
FROM         dbo.TProtocol_Transects AS tr INNER JOIN
	  dbo.TSubProtocol_Transect AS transTax ON tr.PK = transTax.Fk_Trans INNER JOIN
	  dbo.V_Qry_Plant_family AS f ON transTax.Id_Taxon = f.ID INNER JOIN
		  (SELECT     FK_TSta_ID, COUNT(*) AS Nb_transect
			FROM          dbo.TProtocol_Transects
			GROUP BY FK_TSta_ID) AS gtransect ON tr.FK_TSta_ID = gtransect.FK_TSta_ID INNER JOIN
	  dbo.V_Qry_StationsForMap AS sta ON sta.TSta_PK_ID = tr.FK_TSta_ID
	  left outer join
	  dbo.VUsers as U2 on tr.Id_Assistant = u2.Id_Utilisateur
	  left outer join
	  dbo.VUsers as U1 on tr.Id_Observer = U1.Id_Utilisateur
	   inner join 
	  (select Fk_Trans, Id_Taxon, Name_Taxon,
(Case when P1 > 0 then 1 else 0 end +
Case when P2 > 0 then 1 else 0 end +
Case when P3 > 0 then 1 else 0 end +
Case when P4 > 0 then 1 else 0 end +
Case when P5 > 0 then 1 else 0 end +
Case when P6 > 0 then 1 else 0 end +
Case when P7 > 0 then 1 else 0 end +
Case when P8 > 0 then 1 else 0 end +
Case when P9 > 0 then 1 else 0 end +
Case when P10 > 0 then 1 else 0 end +
Case when P11 > 0 then 1 else 0 end +
Case when P12 > 0 then 1 else 0 end +
Case when P13 > 0 then 1 else 0 end +
Case when P14 > 0 then 1 else 0 end +
Case when P15 > 0 then 1 else 0 end +
Case when P16 > 0 then 1 else 0 end +
Case when P17 > 0 then 1 else 0 end +
Case when P18 > 0 then 1 else 0 end +
Case when P19 > 0 then 1 else 0 end +
Case when P20 > 0 then 1 else 0 end +
Case when P21 > 0 then 1 else 0 end +
Case when P22 > 0 then 1 else 0 end +
Case when P23 > 0 then 1 else 0 end +
Case when P24 > 0 then 1 else 0 end +
Case when P25 > 0 then 1 else 0 end +
Case when P26 > 0 then 1 else 0 end +
Case when P27 > 0 then 1 else 0 end +
Case when P28 > 0 then 1 else 0 end +
Case when P29 > 0 then 1 else 0 end +
Case when P30 > 0 then 1 else 0 end +
Case when P31 > 0 then 1 else 0 end +
Case when P32 > 0 then 1 else 0 end +
Case when P33 > 0 then 1 else 0 end +
Case when P34 > 0 then 1 else 0 end +
Case when P35 > 0 then 1 else 0 end +
Case when P36 > 0 then 1 else 0 end +
Case when P37 > 0 then 1 else 0 end +
Case when P38 > 0 then 1 else 0 end +
Case when P39 > 0 then 1 else 0 end +
Case when P40 > 0 then 1 else 0 end +
Case when P41 > 0 then 1 else 0 end +
Case when P42 > 0 then 1 else 0 end +
Case when P43 > 0 then 1 else 0 end +
Case when P44 > 0 then 1 else 0 end +
Case when P45 > 0 then 1 else 0 end +
Case when P46 > 0 then 1 else 0 end +
Case when P47 > 0 then 1 else 0 end +
Case when P48 > 0 then 1 else 0 end +
Case when P49 > 0 then 1 else 0 end +
Case when P50 > 0 then 1 else 0 end +
Case when P51 > 0 then 1 else 0 end +
Case when P52 > 0 then 1 else 0 end +
Case when P53 > 0 then 1 else 0 end +
Case when P54 > 0 then 1 else 0 end +
Case when P55 > 0 then 1 else 0 end +
Case when P56 > 0 then 1 else 0 end +
Case when P57 > 0 then 1 else 0 end +
Case when P58 > 0 then 1 else 0 end +
Case when P59 > 0 then 1 else 0 end +
Case when P60 > 0 then 1 else 0 end +
Case when P61 > 0 then 1 else 0 end +
Case when P62 > 0 then 1 else 0 end +
Case when P63 > 0 then 1 else 0 end +
Case when P64 > 0 then 1 else 0 end +
Case when P65 > 0 then 1 else 0 end +
Case when P66 > 0 then 1 else 0 end +
Case when P67 > 0 then 1 else 0 end +
Case when P68 > 0 then 1 else 0 end +
Case when P69 > 0 then 1 else 0 end +
Case when P70 > 0 then 1 else 0 end +
Case when P71 > 0 then 1 else 0 end +
Case when P72 > 0 then 1 else 0 end +
Case when P73 > 0 then 1 else 0 end +
Case when P74 > 0 then 1 else 0 end +
Case when P75 > 0 then 1 else 0 end +
Case when P76 > 0 then 1 else 0 end +
Case when P77 > 0 then 1 else 0 end +
Case when P78 > 0 then 1 else 0 end +
Case when P79 > 0 then 1 else 0 end +
Case when P80 > 0 then 1 else 0 end +
Case when P81 > 0 then 1 else 0 end +
Case when P82 > 0 then 1 else 0 end +
Case when P83 > 0 then 1 else 0 end +
Case when P84 > 0 then 1 else 0 end +
Case when P85 > 0 then 1 else 0 end +
Case when P86 > 0 then 1 else 0 end +
Case when P87 > 0 then 1 else 0 end +
Case when P88 > 0 then 1 else 0 end +
Case when P89 > 0 then 1 else 0 end +
Case when P90 > 0 then 1 else 0 end +
Case when P91 > 0 then 1 else 0 end +
Case when P92 > 0 then 1 else 0 end +
Case when P93 > 0 then 1 else 0 end +
Case when P94 > 0 then 1 else 0 end +
Case when P95 > 0 then 1 else 0 end +
Case when P96 > 0 then 1 else 0 end +
Case when P97 > 0 then 1 else 0 end +
Case when P98 > 0 then 1 else 0 end +
Case when P99 > 0 then 1 else 0 end +
Case when P100 > 0 then 1 else 0 end +
Case when P101 > 0 then 1 else 0 end +
Case when P102 > 0 then 1 else 0 end +
Case when P103 > 0 then 1 else 0 end +
Case when P104 > 0 then 1 else 0 end +
Case when P105 > 0 then 1 else 0 end +
Case when P106 > 0 then 1 else 0 end +
Case when P107 > 0 then 1 else 0 end +
Case when P108 > 0 then 1 else 0 end +
Case when P109 > 0 then 1 else 0 end +
Case when P110 > 0 then 1 else 0 end +
Case when P111 > 0 then 1 else 0 end +
Case when P112 > 0 then 1 else 0 end +
Case when P113 > 0 then 1 else 0 end +
Case when P114 > 0 then 1 else 0 end +
Case when P115 > 0 then 1 else 0 end +
Case when P116 > 0 then 1 else 0 end +
Case when P117 > 0 then 1 else 0 end +
Case when P118 > 0 then 1 else 0 end +
Case when P119 > 0 then 1 else 0 end +
Case when P120 > 0 then 1 else 0 end +
Case when P121 > 0 then 1 else 0 end +
Case when P122 > 0 then 1 else 0 end +
Case when P123 > 0 then 1 else 0 end +
Case when P124 > 0 then 1 else 0 end +
Case when P125 > 0 then 1 else 0 end +
Case when P126 > 0 then 1 else 0 end +
Case when P127 > 0 then 1 else 0 end +
Case when P128 > 0 then 1 else 0 end +
Case when P129 > 0 then 1 else 0 end +
Case when P130 > 0 then 1 else 0 end +
Case when P131 > 0 then 1 else 0 end +
Case when P132 > 0 then 1 else 0 end +
Case when P133 > 0 then 1 else 0 end +
Case when P134 > 0 then 1 else 0 end +
Case when P135 > 0 then 1 else 0 end +
Case when P136 > 0 then 1 else 0 end +
Case when P137 > 0 then 1 else 0 end +
Case when P138 > 0 then 1 else 0 end +
Case when P139 > 0 then 1 else 0 end +
Case when P140 > 0 then 1 else 0 end +
Case when P141 > 0 then 1 else 0 end +
Case when P142 > 0 then 1 else 0 end +
Case when P143 > 0 then 1 else 0 end +
Case when P144 > 0 then 1 else 0 end +
Case when P145 > 0 then 1 else 0 end +
Case when P146 > 0 then 1 else 0 end +
Case when P147 > 0 then 1 else 0 end +
Case when P148 > 0 then 1 else 0 end +
Case when P149 > 0 then 1 else 0 end +
Case when P150 > 0 then 1 else 0 end +
Case when P151 > 0 then 1 else 0 end +
Case when P152 > 0 then 1 else 0 end +
Case when P153 > 0 then 1 else 0 end +
Case when P154 > 0 then 1 else 0 end +
Case when P155 > 0 then 1 else 0 end +
Case when P156 > 0 then 1 else 0 end +
Case when P157 > 0 then 1 else 0 end +
Case when P158 > 0 then 1 else 0 end +
Case when P159 > 0 then 1 else 0 end +
Case when P160 > 0 then 1 else 0 end +
Case when P161 > 0 then 1 else 0 end +
Case when P162 > 0 then 1 else 0 end +
Case when P163 > 0 then 1 else 0 end +
Case when P164 > 0 then 1 else 0 end +
Case when P165 > 0 then 1 else 0 end +
Case when P166 > 0 then 1 else 0 end +
Case when P167 > 0 then 1 else 0 end +
Case when P168 > 0 then 1 else 0 end +
Case when P169 > 0 then 1 else 0 end +
Case when P170 > 0 then 1 else 0 end +
Case when P171 > 0 then 1 else 0 end +
Case when P172 > 0 then 1 else 0 end +
Case when P173 > 0 then 1 else 0 end +
Case when P174 > 0 then 1 else 0 end +
Case when P175 > 0 then 1 else 0 end +
Case when P176 > 0 then 1 else 0 end +
Case when P177 > 0 then 1 else 0 end +
Case when P178 > 0 then 1 else 0 end +
Case when P179 > 0 then 1 else 0 end +
Case when P180 > 0 then 1 else 0 end +
Case when P181 > 0 then 1 else 0 end +
Case when P182 > 0 then 1 else 0 end +
Case when P183 > 0 then 1 else 0 end +
Case when P184 > 0 then 1 else 0 end +
Case when P185 > 0 then 1 else 0 end +
Case when P186 > 0 then 1 else 0 end +
Case when P187 > 0 then 1 else 0 end +
Case when P188 > 0 then 1 else 0 end +
Case when P189 > 0 then 1 else 0 end +
Case when P190 > 0 then 1 else 0 end +
Case when P191 > 0 then 1 else 0 end +
Case when P192 > 0 then 1 else 0 end +
Case when P193 > 0 then 1 else 0 end +
Case when P194 > 0 then 1 else 0 end +
Case when P195 > 0 then 1 else 0 end +
Case when P196 > 0 then 1 else 0 end +
Case when P197 > 0 then 1 else 0 end +
Case when P198 > 0 then 1 else 0 end +
Case when P199 > 0 then 1 else 0 end +
Case when P200 > 0 then 1 else 0 end ) as Nb_Touch
from dbo.TSubProtocol_Transect) as Touch_Trans 
on transTax.Fk_Trans = Touch_Trans.Fk_Trans and transTax.Id_Taxon = Touch_Trans.Id_Taxon
GO
/****** Object:  View [dbo].[V_Qry_Plant_Phytosociology]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Modification de la vue V_Qry_Plant_Phytosociology
CREATE VIEW [dbo].[V_Qry_Plant_Phytosociology]
AS
SELECT 
sta.Name AS Station, sta.Date,Year(sta.Date) AS Annee, 
f.family, prphyto.Name_Taxon,prphyto.Name_Global_Abondance_Dom AS [A-D], 
prphyto.Name_Global_Sociability AS Soc, prhab.Vegetation_cover, 
sta.FieldWorker1 FW1, sta.FieldWorker2 AS FW2,sta.FieldWorker3 AS FW3,sta.FieldWorker4 AS FW4,sta.FieldWorker5 AS FW5, sta.FieldActivity_Name,
sta.[NbFieldWorker],
sta.[FieldActivity_ID],
sta.[Name],sta.[Area],sta.[Locality],sta.[LAT],sta.[LON],sta.[Precision],sta.[ELE],
sta.[Creator],sta.[Creation_date],
sta.[TSta_FK_TGeo_ID],sta.[Site_name],sta.[Site_idType],sta.[Site_type]
FROM dbo.TProtocol_Phytosociology_releve prphyto
INNER JOIN dbo.V_Qry_StationsForMap  sta
ON sta.TSta_PK_ID = prphyto.FK_TSta_ID 
INNER JOIN dbo.TProtocol_Phytosociology_habitat  prhab
ON prphyto.FK_TSta_ID = prhab.FK_TSta_ID 
INNER JOIN dbo.V_Qry_Plant_family f
ON prphyto.Id_Taxon = f.id
WHERE sta.FieldActivity_Name Like '%phytosocio%';
GO
/****** Object:  View [dbo].[V_Qry_Plant_Inventory_computed]    Script Date: 07/02/2014 14:07:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Qry_Plant_Inventory_computed] AS 
SELECT Export_Bota.Family, Export_Bota.Taxon, Export_Bota.ID_Station, 
CASE WHEN ((Export_Bota.Fieldworker1)= 'Chambouleyron Mathieu' OR (Export_Bota.Fieldworker2)= 'Chambouleyron Mathieu' ) 
	THEN 'x' ELSE NULL END [Chambouleyron_Mathieu],
CASE WHEN ((Export_Bota.Fieldworker1)= 'Bidat Matthieu' OR (Export_Bota.Fieldworker2)= 'Bidat Matthieu' ) 
	THEN 'x' ELSE NULL END [Bidat_Matthieu],
CASE WHEN ((Export_Bota.Fieldworker1)= 'X Mr' OR (Export_Bota.Fieldworker2)= 'X Mr' ) THEN 'x' ELSE NULL END [X_Mr],
CASE WHEN (Export_Bota.ELE) Between 0 And 1000 THEN '0-1000' ELSE NULL END [0-1000_m],
CASE WHEN (Export_Bota.ELE) Between 1001 And 1400 THEN '1001-1400' ELSE NULL END [1001-1400_m],
CASE WHEN (Export_Bota.ELE) Between 1401 And 2500 THEN '1401-2500' ELSE NULL END [1401-2500_m],
CASE WHEN (Export_Bota.ELE)>2500 THEN '>2500' ELSE NULL END [2500_m],
CASE WHEN (Export_Bota.ELE)<=0 THEN 'unknown' ELSE NULL END [Unknown],
CASE WHEN (Export_Bota.Sampled)=-1 THEN 'herb' ELSE NULL END [Herbarium sample],
Export_Bota.Protocol,
sta.*
FROM dbo.V_Qry_Plant_Inventory AS Export_Bota
JOIN dbo.V_Qry_StationsForMap sta
ON ID_Station = TSta_PK_ID
GO
/****** Object:  Default [DF_TArgosReports_TArgRep_TotalStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosReports] ADD  CONSTRAINT [DF_TArgosReports_TArgRep_TotalStations]  DEFAULT ((0)) FOR [TArgRep_TotalStations]
GO
/****** Object:  Default [DF_TArgosReports_TArgRep_ArgosStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosReports] ADD  CONSTRAINT [DF_TArgosReports_TArgRep_ArgosStations]  DEFAULT ((0)) FOR [TArgRep_ArgosStations]
GO
/****** Object:  Default [DF_TArgosReports_TArgRep_GPSStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosReports] ADD  CONSTRAINT [DF_TArgosReports_TArgRep_GPSStations]  DEFAULT ((0)) FOR [TArgRep_GPSStations]
GO
/****** Object:  Default [DF_TArgosReports_TArgRep_EngStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosReports] ADD  CONSTRAINT [DF_TArgosReports_TArgRep_EngStations]  DEFAULT ((0)) FOR [TArgRep_EngData]
GO
/****** Object:  Default [DF_TArgosReports_TArgRep_EngLinked]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosReports] ADD  CONSTRAINT [DF_TArgosReports_TArgRep_EngLinked]  DEFAULT ((0)) FOR [TArgRep_EngLinked]
GO
/****** Object:  Default [DF__TLogError__Error__69527C00]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TLogErrors] ADD  CONSTRAINT [DF__TLogError__Error__69527C00]  DEFAULT (getdate()) FOR [Error_date]
GO
/****** Object:  Default [DF__TLogError__Fk_us__6A46A039]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TLogErrors] ADD  CONSTRAINT [DF__TLogError__Fk_us__6A46A039]  DEFAULT ((0)) FOR [Fk_user]
GO
/****** Object:  Default [DF__TLogError__Error__6B3AC472]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TLogErrors] ADD  CONSTRAINT [DF__TLogError__Error__6B3AC472]  DEFAULT ((0)) FOR [Error_number]
GO
/****** Object:  Default [DF__TMapExten__NumEn__276EDEB3]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExten__NumEn__276EDEB3]  DEFAULT ((0)) FOR [NumEntiteS]
GO
/****** Object:  Default [DF__TMapExten__TypeE__286302EC]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExten__TypeE__286302EC]  DEFAULT ((0)) FOR [TypeEntite]
GO
/****** Object:  Default [DF__TMapExtentTr__X1__29572725]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExtentTr__X1__29572725]  DEFAULT ((0)) FOR [X1]
GO
/****** Object:  Default [DF__TMapExtentTr__Y1__2A4B4B5E]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExtentTr__Y1__2A4B4B5E]  DEFAULT ((0)) FOR [Y1]
GO
/****** Object:  Default [DF__TMapExtentTr__X2__2B3F6F97]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExtentTr__X2__2B3F6F97]  DEFAULT ((0)) FOR [X2]
GO
/****** Object:  Default [DF__TMapExtentTr__Y2__2C3393D0]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExtentTr__Y2__2C3393D0]  DEFAULT ((0)) FOR [Y2]
GO
/****** Object:  Default [DF__TMapExtent__Bold__2D27B809]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapExtentTreeView] ADD  CONSTRAINT [DF__TMapExtent__Bold__2D27B809]  DEFAULT ((0)) FOR [Bold]
GO
/****** Object:  Default [DF__TMapSelec__TSMan__5D60DB10]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapSelectionManager] ADD  DEFAULT ((0)) FOR [TSMan_AdminQry]
GO
/****** Object:  Default [DF__TMonitore__actif__6B24EA82]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMonitoredStations] ADD  CONSTRAINT [DF__TMonitore__actif__6B24EA82]  DEFAULT ((0)) FOR [Active]
GO
/****** Object:  Default [DF_TMonitoredStations_Positions_TGeoPos_ELE]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMonitoredStations_Positions] ADD  CONSTRAINT [DF_TMonitoredStations_Positions_TGeoPos_ELE]  DEFAULT ((-999)) FOR [TGeoPos_ELE]
GO
/****** Object:  Default [DF__TObj_Cara__Const__603D47BB]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Carac_type] ADD  DEFAULT ((0)) FOR [Constant]
GO
/****** Object:  Default [DF__TObj_Cara__begin__61316BF4]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Carac_value] ADD  DEFAULT (getdate()) FOR [begin_date]
GO
/****** Object:  Default [DF__TObj_Cara__creat__6225902D]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Carac_value] ADD  DEFAULT (getdate()) FOR [creation_date]
GO
/****** Object:  Default [DF__TObj_Obj___Const__6319B466]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Obj_CaracList] ADD  DEFAULT ((0)) FOR [Constant]
GO
/****** Object:  Default [DF__TObj_Obj___avail__640DD89F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Obj_CaracList] ADD  DEFAULT ((1)) FOR [available]
GO
/****** Object:  Default [DF__TObj_Obje__Creat__6501FCD8]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Objects] ADD  DEFAULT (getdate()) FOR [Creation_date]
GO
/****** Object:  Default [DF__TProtocol__Sampl__65F62111]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Bird_Biometry] ADD  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Bird___66EA454A]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Bird_Biometry] ADD  DEFAULT ((0)) FOR [Bird_collected]
GO
/****** Object:  Default [DF_TProtocol_Chiro_capt_IsDead]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  CONSTRAINT [DF_TProtocol_Chiro_capt_IsDead]  DEFAULT ((0)) FOR [Dead]
GO
/****** Object:  Default [DF__TProtocol__Numbe__158603F9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  CONSTRAINT [DF__TProtocol__Numbe__158603F9]  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF__TProtocol__Pictu__1A4AB916]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  CONSTRAINT [DF__TProtocol__Pictu__1A4AB916]  DEFAULT ((0)) FOR [Picture]
GO
/****** Object:  Default [DF__TProtocol__Recat__1B3EDD4F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  CONSTRAINT [DF__TProtocol__Recat__1B3EDD4F]  DEFAULT ((0)) FOR [Recatch]
GO
/****** Object:  Default [DF__TProtocol__Recor__1C330188]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  CONSTRAINT [DF__TProtocol__Recor__1C330188]  DEFAULT ((0)) FOR [Recorded]
GO
/****** Object:  Default [DF__TProtocol__Sampl__6CA31EA0]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] ADD  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Recor__6D9742D9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_detection] ADD  DEFAULT ((0)) FOR [Recorded]
GO
/****** Object:  Default [DF__TProtocol__Sampl__72B0FDB1]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Clutch_Description] ADD  CONSTRAINT [DF__TProtocol__Sampl__72B0FDB1]  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Colle__73A521EA]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Clutch_Description] ADD  CONSTRAINT [DF__TProtocol__Colle__73A521EA]  DEFAULT ((0)) FOR [Collected]
GO
/****** Object:  Default [DF__TProtocol__FK_TS__113584D1]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__FK_TS__113584D1]  DEFAULT ((0)) FOR [FK_TSta_ID]
GO
/****** Object:  Default [DF__TProtocol___arbo__1229A90A]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol___arbo__1229A90A]  DEFAULT ((0)) FOR [arbo]
GO
/****** Object:  Default [DF__TProtocol__subar__131DCD43]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__subar__131DCD43]  DEFAULT ((0)) FOR [subarbo]
GO
/****** Object:  Default [DF__TProtocol__arbu___1411F17C]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___1411F17C]  DEFAULT ((0)) FOR [arbu_very_high]
GO
/****** Object:  Default [DF__TProtocol__arbu___150615B5]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___150615B5]  DEFAULT ((0)) FOR [arbu_high]
GO
/****** Object:  Default [DF__TProtocol__arbu___15FA39EE]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___15FA39EE]  DEFAULT ((0)) FOR [arbu_medium_2]
GO
/****** Object:  Default [DF__TProtocol__arbu___16EE5E27]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___16EE5E27]  DEFAULT ((0)) FOR [arbu_medium_1]
GO
/****** Object:  Default [DF__TProtocol__arbu___17E28260]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___17E28260]  DEFAULT ((0)) FOR [arbu_low_2]
GO
/****** Object:  Default [DF__TProtocol__arbu___18D6A699]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__arbu___18D6A699]  DEFAULT ((0)) FOR [arbu_low_1]
GO
/****** Object:  Default [DF__TProtocol__herb___19CACAD2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___19CACAD2]  DEFAULT ((0)) FOR [herb_very_high]
GO
/****** Object:  Default [DF__TProtocol__herb___1ABEEF0B]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1ABEEF0B]  DEFAULT ((0)) FOR [herb_high]
GO
/****** Object:  Default [DF__TProtocol__herb___1BB31344]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1BB31344]  DEFAULT ((0)) FOR [herb_medium_2]
GO
/****** Object:  Default [DF__TProtocol__herb___1CA7377D]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1CA7377D]  DEFAULT ((0)) FOR [herb_medium_1]
GO
/****** Object:  Default [DF__TProtocol__herb___1D9B5BB6]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1D9B5BB6]  DEFAULT ((0)) FOR [herb_low_2]
GO
/****** Object:  Default [DF__TProtocol__herb___1E8F7FEF]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1E8F7FEF]  DEFAULT ((0)) FOR [herb_low_1]
GO
/****** Object:  Default [DF__TProtocol__herb___1F83A428]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__herb___1F83A428]  DEFAULT ((0)) FOR [herb_very_low]
GO
/****** Object:  Default [DF__TProtocol___bryo__2077C861]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol___bryo__2077C861]  DEFAULT ((0)) FOR [bryo]
GO
/****** Object:  Default [DF__TProtocol__Stall__24485945]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol__Stall__24485945]  DEFAULT ((0)) FOR [Stalling]
GO
/****** Object:  Default [DF__TProtocol___Area__253C7D7E]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] ADD  CONSTRAINT [DF__TProtocol___Area__253C7D7E]  DEFAULT ((0)) FOR [Area]
GO
/****** Object:  Default [DF__TProtocol__Pictu__31A25463]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Nest_Description] ADD  CONSTRAINT [DF__TProtocol__Pictu__31A25463]  DEFAULT ((0)) FOR [Picture]
GO
/****** Object:  Default [DF_TProtocol_Nest_DummyEgg]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Nest_Description] ADD  CONSTRAINT [DF_TProtocol_Nest_DummyEgg]  DEFAULT ((0)) FOR [Dummy_egg]
GO
/****** Object:  Default [DF_TProtocol_Phytosociology_habitat_Vegetation_cover]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  CONSTRAINT [DF_TProtocol_Phytosociology_habitat_Vegetation_cover]  DEFAULT (NULL) FOR [Vegetation_cover]
GO
/****** Object:  Default [DF__TProtocol__Id_PH__056ECC6A]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Id_PH_class]
GO
/****** Object:  Default [DF__TProtocol__Name___0662F0A3]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Name_PH_class]
GO
/****** Object:  Default [DF__TProtocol__Id_so__075714DC]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Id_soil_texture]
GO
/****** Object:  Default [DF__TProtocol__Name___084B3915]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Name_soil_texture]
GO
/****** Object:  Default [DF__TProtocol__Id_ve__093F5D4E]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Id_vegetation_series]
GO
/****** Object:  Default [DF__TProtocol__Name___0A338187]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [Name_vegetation_series]
GO
/****** Object:  Default [DF__TProtocol__strat__0B27A5C0]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_MossLichen_cover]
GO
/****** Object:  Default [DF__TProtocol__strat__0C1BC9F9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Herbaceous_cover]
GO
/****** Object:  Default [DF__TProtocol__strat__0D0FEE32]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Shrubby_cover]
GO
/****** Object:  Default [DF__TProtocol__strat__0E04126B]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Arboreal_cover]
GO
/****** Object:  Default [DF__TProtocol__strat__0EF836A4]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Arboreal_height_avg]
GO
/****** Object:  Default [DF__TProtocol__strat__0FEC5ADD]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Shrubby_height_avg]
GO
/****** Object:  Default [DF__TProtocol__strat__10E07F16]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_Herbaceous_height_avg]
GO
/****** Object:  Default [DF__TProtocol__strat__11D4A34F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] ADD  DEFAULT (NULL) FOR [stratum_MossLichen_height_avg]
GO
/****** Object:  Default [DF__TProtocol__Ident__379037E3]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve] ADD  CONSTRAINT [DF__TProtocol__Ident__379037E3]  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__TProtocol__Herba__38845C1C]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve] ADD  CONSTRAINT [DF__TProtocol__Herba__38845C1C]  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Photo__39788055]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve] ADD  CONSTRAINT [DF__TProtocol__Photo__39788055]  DEFAULT ((0)) FOR [Picture]
GO
/****** Object:  Default [DF_TProtocol_Phytosociology_census_Cultivated]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve] ADD  CONSTRAINT [DF_TProtocol_Phytosociology_census_Cultivated]  DEFAULT ((0)) FOR [Cultivated]
GO
/****** Object:  Default [DF__TProtocol__Visib__1699586C]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sighting_conditions] ADD  DEFAULT ((0)) FOR [Visibility]
GO
/****** Object:  Default [DF__TProtocol__Obser__178D7CA5]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sighting_conditions] ADD  DEFAULT ((0)) FOR [Observation_Incomplete]
GO
/****** Object:  Default [DF_TProtocol_Simplified_Habitat_Cultivated_1]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Simplified_Habitat] ADD  CONSTRAINT [DF_TProtocol_Simplified_Habitat_Cultivated_1]  DEFAULT ((0)) FOR [Cultivated_1]
GO
/****** Object:  Default [DF_TProtocol_Simplified_Habitat_Cultivated_2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Simplified_Habitat] ADD  CONSTRAINT [DF_TProtocol_Simplified_Habitat_Cultivated_2]  DEFAULT ((0)) FOR [Cultivated_2]
GO
/****** Object:  Default [DF_TProtocol_Simplified_Habitat_Cultivated_3]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Simplified_Habitat] ADD  CONSTRAINT [DF_TProtocol_Simplified_Habitat_Cultivated_3]  DEFAULT ((0)) FOR [Cultivated_3]
GO
/****** Object:  Default [DF__TProtocol__Pheno__1B5E0D89]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Vegetative_herbs]
GO
/****** Object:  Default [DF__TProtocol__Pheno__1C5231C2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Flowering_herbs]
GO
/****** Object:  Default [DF__TProtocol__Pheno__1D4655FB]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Seeding_herbs]
GO
/****** Object:  Default [DF__TProtocol__Pheno__1E3A7A34]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Vegetative_bushes]
GO
/****** Object:  Default [DF__TProtocol__Pheno__1F2E9E6D]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Flowering_bushes]
GO
/****** Object:  Default [DF__TProtocol__Pheno__2022C2A6]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Seeding_bushes]
GO
/****** Object:  Default [DF__TProtocol__Pheno__2116E6DF]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Vegetative_trees]
GO
/****** Object:  Default [DF__TProtocol__Pheno__220B0B18]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Flowering_trees]
GO
/****** Object:  Default [DF__TProtocol__Pheno__22FF2F51]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Phenology_Seeding_trees]
GO
/****** Object:  Default [DF__TProtocol__Houba__23F3538A]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description] ADD  DEFAULT ((0)) FOR [Houbara_Suitable]
GO
/****** Object:  Default [DF__TProtocol__Ident__40257DE4]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Track_clue] ADD  CONSTRAINT [DF__TProtocol__Ident__40257DE4]  DEFAULT ((1)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__TProtocol__Sampl__25DB9BFC]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Track_clue] ADD  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Num_B__21F5FC7F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Transects] ADD  CONSTRAINT [DF__TProtocol__Num_B__21F5FC7F]  DEFAULT ((0)) FOR [Num_Bound]
GO
/****** Object:  Default [DF__TProtocol__Num_T__22EA20B8]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Transects] ADD  CONSTRAINT [DF__TProtocol__Num_T__22EA20B8]  DEFAULT ((0)) FOR [Num_Transect]
GO
/****** Object:  Default [DF__TProtocol__Ident__29971E47]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Ident__29971E47]  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__TProtocol__Ident__2A8B4280]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Ident__2A8B4280]  DEFAULT ((0)) FOR [Ident_Occasional]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ad__2B7F66B9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ad__2B7F66B9]  DEFAULT ((0)) FOR [Nb_Adult_Male]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ad__2C738AF2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ad__2C738AF2]  DEFAULT ((0)) FOR [Nb_Adult_Female]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ad__2D67AF2B]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ad__2D67AF2B]  DEFAULT ((0)) FOR [Nb_Adult_Indeterminate]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ju__2E5BD364]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ju__2E5BD364]  DEFAULT ((0)) FOR [Nb_Juvenile_Male]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ju__2F4FF79D]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ju__2F4FF79D]  DEFAULT ((0)) FOR [Nb_Juvenile_Female]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ju__30441BD6]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ju__30441BD6]  DEFAULT ((0)) FOR [Nb_Juvenile_Indeterminate]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ne__3138400F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ne__3138400F]  DEFAULT ((0)) FOR [Nb_NewBorn_Male]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ne__322C6448]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ne__322C6448]  DEFAULT ((0)) FOR [Nb_NewBorn_Female]
GO
/****** Object:  Default [DF__TProtocol__Nb_Ne__33208881]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_Ne__33208881]  DEFAULT ((0)) FOR [Nb_NewBorn_Indeterminate]
GO
/****** Object:  Default [DF__TProtocol__Nb_In__3414ACBA]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Nb_In__3414ACBA]  DEFAULT ((0)) FOR [Nb_Indeterminate]
GO
/****** Object:  Default [DF__TProtocol__Distu__542C7691]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  CONSTRAINT [DF__TProtocol__Distu__542C7691]  DEFAULT ((0)) FOR [Disturbed]
GO
/****** Object:  Default [DF__TProtocol__obser__351DDF8C]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] ADD  DEFAULT (NULL) FOR [observation_time]
GO
/****** Object:  Default [DF__TProtocol__Sampl__44F51FF9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual] ADD  CONSTRAINT [DF__TProtocol__Sampl__44F51FF9]  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF_TProtocol_Bustard_Death_Sure_reason]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual_Death] ADD  CONSTRAINT [DF_TProtocol_Bustard_Death_Sure_reason]  DEFAULT ((0)) FOR [Sure_reason]
GO
/****** Object:  Default [DF__TProtocol__Sampl__37FA4C37]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual_Death] ADD  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF__TProtocol__Ident__38EE7070]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_interview] ADD  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__TStations__Precision]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TStations] ADD  CONSTRAINT [DF__TStations__Precision]  DEFAULT ((10)) FOR [Precision]
GO
/****** Object:  Default [DF__TStations__regio__3AD6B8E2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TStations] ADD  DEFAULT ((0)) FOR [regionUpdate]
GO
/****** Object:  Default [DF__TSubProto__Ident__3BCADD1B]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Entomo_Pop_Census] ADD  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__TSubProto__Colle__3CBF0154]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Entomo_Pop_Census] ADD  DEFAULT ((0)) FOR [Collected]
GO
/****** Object:  Default [DF__TSubProto__Fk_Tr__36670980]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProto__Fk_Tr__36670980]  DEFAULT ((0)) FOR [Fk_Trans]
GO
/****** Object:  Default [DF__TSubProto__Taxon__375B2DB9]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProto__Taxon__375B2DB9]  DEFAULT ((0)) FOR [Id_Taxon]
GO
/****** Object:  Default [DF__TSubProtocol__P1__384F51F2]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P1__384F51F2]  DEFAULT ((0)) FOR [P1]
GO
/****** Object:  Default [DF__TSubProtocol__P2__3943762B]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P2__3943762B]  DEFAULT ((0)) FOR [P2]
GO
/****** Object:  Default [DF__TSubProtocol__P3__3A379A64]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P3__3A379A64]  DEFAULT ((0)) FOR [P3]
GO
/****** Object:  Default [DF__TSubProtocol__P4__3B2BBE9D]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P4__3B2BBE9D]  DEFAULT ((0)) FOR [P4]
GO
/****** Object:  Default [DF__TSubProtocol__P5__3C1FE2D6]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P5__3C1FE2D6]  DEFAULT ((0)) FOR [P5]
GO
/****** Object:  Default [DF__TSubProtocol__P6__3D14070F]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P6__3D14070F]  DEFAULT ((0)) FOR [P6]
GO
/****** Object:  Default [DF__TSubProtocol__P7__3E082B48]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P7__3E082B48]  DEFAULT ((0)) FOR [P7]
GO
/****** Object:  Default [DF__TSubProtocol__P8__3EFC4F81]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P8__3EFC4F81]  DEFAULT ((0)) FOR [P8]
GO
/****** Object:  Default [DF__TSubProtocol__P9__3FF073BA]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtocol__P9__3FF073BA]  DEFAULT ((0)) FOR [P9]
GO
/****** Object:  Default [DF__TSubProtoco__P10__40E497F3]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P10__40E497F3]  DEFAULT ((0)) FOR [P10]
GO
/****** Object:  Default [DF__TSubProtoco__P11__41D8BC2C]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P11__41D8BC2C]  DEFAULT ((0)) FOR [P11]
GO
/****** Object:  Default [DF__TSubProtoco__P12__42CCE065]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P12__42CCE065]  DEFAULT ((0)) FOR [P12]
GO
/****** Object:  Default [DF__TSubProtoco__P13__43C1049E]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P13__43C1049E]  DEFAULT ((0)) FOR [P13]
GO
/****** Object:  Default [DF__TSubProtoco__P14__44B528D7]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P14__44B528D7]  DEFAULT ((0)) FOR [P14]
GO
/****** Object:  Default [DF__TSubProtoco__P15__45A94D10]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P15__45A94D10]  DEFAULT ((0)) FOR [P15]
GO
/****** Object:  Default [DF__TSubProtoco__P16__469D7149]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P16__469D7149]  DEFAULT ((0)) FOR [P16]
GO
/****** Object:  Default [DF__TSubProtoco__P17__47919582]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P17__47919582]  DEFAULT ((0)) FOR [P17]
GO
/****** Object:  Default [DF__TSubProtoco__P18__4885B9BB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P18__4885B9BB]  DEFAULT ((0)) FOR [P18]
GO
/****** Object:  Default [DF__TSubProtoco__P19__4979DDF4]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P19__4979DDF4]  DEFAULT ((0)) FOR [P19]
GO
/****** Object:  Default [DF__TSubProtoco__P20__4A6E022D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P20__4A6E022D]  DEFAULT ((0)) FOR [P20]
GO
/****** Object:  Default [DF__TSubProtoco__P21__4B622666]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P21__4B622666]  DEFAULT ((0)) FOR [P21]
GO
/****** Object:  Default [DF__TSubProtoco__P22__4C564A9F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P22__4C564A9F]  DEFAULT ((0)) FOR [P22]
GO
/****** Object:  Default [DF__TSubProtoco__P23__4D4A6ED8]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P23__4D4A6ED8]  DEFAULT ((0)) FOR [P23]
GO
/****** Object:  Default [DF__TSubProtoco__P24__4E3E9311]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P24__4E3E9311]  DEFAULT ((0)) FOR [P24]
GO
/****** Object:  Default [DF__TSubProtoco__P25__4F32B74A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P25__4F32B74A]  DEFAULT ((0)) FOR [P25]
GO
/****** Object:  Default [DF__TSubProtoco__P26__5026DB83]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P26__5026DB83]  DEFAULT ((0)) FOR [P26]
GO
/****** Object:  Default [DF__TSubProtoco__P27__511AFFBC]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P27__511AFFBC]  DEFAULT ((0)) FOR [P27]
GO
/****** Object:  Default [DF__TSubProtoco__P28__520F23F5]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P28__520F23F5]  DEFAULT ((0)) FOR [P28]
GO
/****** Object:  Default [DF__TSubProtoco__P29__5303482E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P29__5303482E]  DEFAULT ((0)) FOR [P29]
GO
/****** Object:  Default [DF__TSubProtoco__P30__53F76C67]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P30__53F76C67]  DEFAULT ((0)) FOR [P30]
GO
/****** Object:  Default [DF__TSubProtoco__P31__54EB90A0]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P31__54EB90A0]  DEFAULT ((0)) FOR [P31]
GO
/****** Object:  Default [DF__TSubProtoco__P32__55DFB4D9]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P32__55DFB4D9]  DEFAULT ((0)) FOR [P32]
GO
/****** Object:  Default [DF__TSubProtoco__P33__56D3D912]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P33__56D3D912]  DEFAULT ((0)) FOR [P33]
GO
/****** Object:  Default [DF__TSubProtoco__P34__57C7FD4B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P34__57C7FD4B]  DEFAULT ((0)) FOR [P34]
GO
/****** Object:  Default [DF__TSubProtoco__P35__58BC2184]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P35__58BC2184]  DEFAULT ((0)) FOR [P35]
GO
/****** Object:  Default [DF__TSubProtoco__P36__59B045BD]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P36__59B045BD]  DEFAULT ((0)) FOR [P36]
GO
/****** Object:  Default [DF__TSubProtoco__P37__5AA469F6]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P37__5AA469F6]  DEFAULT ((0)) FOR [P37]
GO
/****** Object:  Default [DF__TSubProtoco__P38__5B988E2F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P38__5B988E2F]  DEFAULT ((0)) FOR [P38]
GO
/****** Object:  Default [DF__TSubProtoco__P39__5C8CB268]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P39__5C8CB268]  DEFAULT ((0)) FOR [P39]
GO
/****** Object:  Default [DF__TSubProtoco__P40__5D80D6A1]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P40__5D80D6A1]  DEFAULT ((0)) FOR [P40]
GO
/****** Object:  Default [DF__TSubProtoco__P41__5E74FADA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P41__5E74FADA]  DEFAULT ((0)) FOR [P41]
GO
/****** Object:  Default [DF__TSubProtoco__P42__5F691F13]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P42__5F691F13]  DEFAULT ((0)) FOR [P42]
GO
/****** Object:  Default [DF__TSubProtoco__P43__605D434C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P43__605D434C]  DEFAULT ((0)) FOR [P43]
GO
/****** Object:  Default [DF__TSubProtoco__P44__61516785]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P44__61516785]  DEFAULT ((0)) FOR [P44]
GO
/****** Object:  Default [DF__TSubProtoco__P45__62458BBE]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P45__62458BBE]  DEFAULT ((0)) FOR [P45]
GO
/****** Object:  Default [DF__TSubProtoco__P46__6339AFF7]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P46__6339AFF7]  DEFAULT ((0)) FOR [P46]
GO
/****** Object:  Default [DF__TSubProtoco__P47__642DD430]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P47__642DD430]  DEFAULT ((0)) FOR [P47]
GO
/****** Object:  Default [DF__TSubProtoco__P48__6521F869]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P48__6521F869]  DEFAULT ((0)) FOR [P48]
GO
/****** Object:  Default [DF__TSubProtoco__P49__66161CA2]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P49__66161CA2]  DEFAULT ((0)) FOR [P49]
GO
/****** Object:  Default [DF__TSubProtoco__P50__670A40DB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P50__670A40DB]  DEFAULT ((0)) FOR [P50]
GO
/****** Object:  Default [DF__TSubProtoco__P51__67FE6514]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P51__67FE6514]  DEFAULT ((0)) FOR [P51]
GO
/****** Object:  Default [DF__TSubProtoco__P52__68F2894D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P52__68F2894D]  DEFAULT ((0)) FOR [P52]
GO
/****** Object:  Default [DF__TSubProtoco__P53__69E6AD86]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P53__69E6AD86]  DEFAULT ((0)) FOR [P53]
GO
/****** Object:  Default [DF__TSubProtoco__P54__6ADAD1BF]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P54__6ADAD1BF]  DEFAULT ((0)) FOR [P54]
GO
/****** Object:  Default [DF__TSubProtoco__P55__6BCEF5F8]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P55__6BCEF5F8]  DEFAULT ((0)) FOR [P55]
GO
/****** Object:  Default [DF__TSubProtoco__P56__6CC31A31]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P56__6CC31A31]  DEFAULT ((0)) FOR [P56]
GO
/****** Object:  Default [DF__TSubProtoco__P57__6DB73E6A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P57__6DB73E6A]  DEFAULT ((0)) FOR [P57]
GO
/****** Object:  Default [DF__TSubProtoco__P58__6EAB62A3]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P58__6EAB62A3]  DEFAULT ((0)) FOR [P58]
GO
/****** Object:  Default [DF__TSubProtoco__P59__6F9F86DC]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P59__6F9F86DC]  DEFAULT ((0)) FOR [P59]
GO
/****** Object:  Default [DF__TSubProtoco__P60__7093AB15]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P60__7093AB15]  DEFAULT ((0)) FOR [P60]
GO
/****** Object:  Default [DF__TSubProtoco__P61__7187CF4E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P61__7187CF4E]  DEFAULT ((0)) FOR [P61]
GO
/****** Object:  Default [DF__TSubProtoco__P62__727BF387]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P62__727BF387]  DEFAULT ((0)) FOR [P62]
GO
/****** Object:  Default [DF__TSubProtoco__P63__737017C0]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P63__737017C0]  DEFAULT ((0)) FOR [P63]
GO
/****** Object:  Default [DF__TSubProtoco__P64__74643BF9]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P64__74643BF9]  DEFAULT ((0)) FOR [P64]
GO
/****** Object:  Default [DF__TSubProtoco__P65__75586032]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P65__75586032]  DEFAULT ((0)) FOR [P65]
GO
/****** Object:  Default [DF__TSubProtoco__P66__764C846B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P66__764C846B]  DEFAULT ((0)) FOR [P66]
GO
/****** Object:  Default [DF__TSubProtoco__P67__7740A8A4]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P67__7740A8A4]  DEFAULT ((0)) FOR [P67]
GO
/****** Object:  Default [DF__TSubProtoco__P68__7834CCDD]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P68__7834CCDD]  DEFAULT ((0)) FOR [P68]
GO
/****** Object:  Default [DF__TSubProtoco__P69__7928F116]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P69__7928F116]  DEFAULT ((0)) FOR [P69]
GO
/****** Object:  Default [DF__TSubProtoco__P70__7A1D154F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P70__7A1D154F]  DEFAULT ((0)) FOR [P70]
GO
/****** Object:  Default [DF__TSubProtoco__P71__7B113988]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P71__7B113988]  DEFAULT ((0)) FOR [P71]
GO
/****** Object:  Default [DF__TSubProtoco__P72__7C055DC1]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P72__7C055DC1]  DEFAULT ((0)) FOR [P72]
GO
/****** Object:  Default [DF__TSubProtoco__P73__7CF981FA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P73__7CF981FA]  DEFAULT ((0)) FOR [P73]
GO
/****** Object:  Default [DF__TSubProtoco__P74__7DEDA633]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P74__7DEDA633]  DEFAULT ((0)) FOR [P74]
GO
/****** Object:  Default [DF__TSubProtoco__P75__7EE1CA6C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P75__7EE1CA6C]  DEFAULT ((0)) FOR [P75]
GO
/****** Object:  Default [DF__TSubProtoco__P76__7FD5EEA5]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P76__7FD5EEA5]  DEFAULT ((0)) FOR [P76]
GO
/****** Object:  Default [DF__TSubProtoco__P77__00CA12DE]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P77__00CA12DE]  DEFAULT ((0)) FOR [P77]
GO
/****** Object:  Default [DF__TSubProtoco__P78__01BE3717]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P78__01BE3717]  DEFAULT ((0)) FOR [P78]
GO
/****** Object:  Default [DF__TSubProtoco__P79__02B25B50]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P79__02B25B50]  DEFAULT ((0)) FOR [P79]
GO
/****** Object:  Default [DF__TSubProtoco__P80__03A67F89]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P80__03A67F89]  DEFAULT ((0)) FOR [P80]
GO
/****** Object:  Default [DF__TSubProtoco__P81__049AA3C2]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P81__049AA3C2]  DEFAULT ((0)) FOR [P81]
GO
/****** Object:  Default [DF__TSubProtoco__P82__058EC7FB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P82__058EC7FB]  DEFAULT ((0)) FOR [P82]
GO
/****** Object:  Default [DF__TSubProtoco__P83__0682EC34]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P83__0682EC34]  DEFAULT ((0)) FOR [P83]
GO
/****** Object:  Default [DF__TSubProtoco__P84__0777106D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P84__0777106D]  DEFAULT ((0)) FOR [P84]
GO
/****** Object:  Default [DF__TSubProtoco__P85__086B34A6]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P85__086B34A6]  DEFAULT ((0)) FOR [P85]
GO
/****** Object:  Default [DF__TSubProtoco__P86__095F58DF]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P86__095F58DF]  DEFAULT ((0)) FOR [P86]
GO
/****** Object:  Default [DF__TSubProtoco__P87__0A537D18]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P87__0A537D18]  DEFAULT ((0)) FOR [P87]
GO
/****** Object:  Default [DF__TSubProtoco__P88__0B47A151]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P88__0B47A151]  DEFAULT ((0)) FOR [P88]
GO
/****** Object:  Default [DF__TSubProtoco__P89__0C3BC58A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P89__0C3BC58A]  DEFAULT ((0)) FOR [P89]
GO
/****** Object:  Default [DF__TSubProtoco__P90__0D2FE9C3]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P90__0D2FE9C3]  DEFAULT ((0)) FOR [P90]
GO
/****** Object:  Default [DF__TSubProtoco__P91__0E240DFC]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P91__0E240DFC]  DEFAULT ((0)) FOR [P91]
GO
/****** Object:  Default [DF__TSubProtoco__P92__0F183235]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P92__0F183235]  DEFAULT ((0)) FOR [P92]
GO
/****** Object:  Default [DF__TSubProtoco__P93__100C566E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P93__100C566E]  DEFAULT ((0)) FOR [P93]
GO
/****** Object:  Default [DF__TSubProtoco__P94__11007AA7]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P94__11007AA7]  DEFAULT ((0)) FOR [P94]
GO
/****** Object:  Default [DF__TSubProtoco__P95__11F49EE0]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P95__11F49EE0]  DEFAULT ((0)) FOR [P95]
GO
/****** Object:  Default [DF__TSubProtoco__P96__12E8C319]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P96__12E8C319]  DEFAULT ((0)) FOR [P96]
GO
/****** Object:  Default [DF__TSubProtoco__P97__13DCE752]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P97__13DCE752]  DEFAULT ((0)) FOR [P97]
GO
/****** Object:  Default [DF__TSubProtoco__P98__14D10B8B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P98__14D10B8B]  DEFAULT ((0)) FOR [P98]
GO
/****** Object:  Default [DF__TSubProtoco__P99__15C52FC4]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoco__P99__15C52FC4]  DEFAULT ((0)) FOR [P99]
GO
/****** Object:  Default [DF__TSubProtoc__P100__16B953FD]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P100__16B953FD]  DEFAULT ((0)) FOR [P100]
GO
/****** Object:  Default [DF__TSubProtoc__P101__17AD7836]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P101__17AD7836]  DEFAULT ((0)) FOR [P101]
GO
/****** Object:  Default [DF__TSubProtoc__P102__18A19C6F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P102__18A19C6F]  DEFAULT ((0)) FOR [P102]
GO
/****** Object:  Default [DF__TSubProtoc__P103__1995C0A8]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P103__1995C0A8]  DEFAULT ((0)) FOR [P103]
GO
/****** Object:  Default [DF__TSubProtoc__P104__1A89E4E1]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P104__1A89E4E1]  DEFAULT ((0)) FOR [P104]
GO
/****** Object:  Default [DF__TSubProtoc__P105__1B7E091A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P105__1B7E091A]  DEFAULT ((0)) FOR [P105]
GO
/****** Object:  Default [DF__TSubProtoc__P106__1C722D53]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P106__1C722D53]  DEFAULT ((0)) FOR [P106]
GO
/****** Object:  Default [DF__TSubProtoc__P107__1D66518C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P107__1D66518C]  DEFAULT ((0)) FOR [P107]
GO
/****** Object:  Default [DF__TSubProtoc__P108__1E5A75C5]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P108__1E5A75C5]  DEFAULT ((0)) FOR [P108]
GO
/****** Object:  Default [DF__TSubProtoc__P109__1F4E99FE]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P109__1F4E99FE]  DEFAULT ((0)) FOR [P109]
GO
/****** Object:  Default [DF__TSubProtoc__P110__2042BE37]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P110__2042BE37]  DEFAULT ((0)) FOR [P110]
GO
/****** Object:  Default [DF__TSubProtoc__P111__2136E270]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P111__2136E270]  DEFAULT ((0)) FOR [P111]
GO
/****** Object:  Default [DF__TSubProtoc__P112__222B06A9]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P112__222B06A9]  DEFAULT ((0)) FOR [P112]
GO
/****** Object:  Default [DF__TSubProtoc__P113__231F2AE2]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P113__231F2AE2]  DEFAULT ((0)) FOR [P113]
GO
/****** Object:  Default [DF__TSubProtoc__P114__24134F1B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P114__24134F1B]  DEFAULT ((0)) FOR [P114]
GO
/****** Object:  Default [DF__TSubProtoc__P115__25077354]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P115__25077354]  DEFAULT ((0)) FOR [P115]
GO
/****** Object:  Default [DF__TSubProtoc__P116__25FB978D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P116__25FB978D]  DEFAULT ((0)) FOR [P116]
GO
/****** Object:  Default [DF__TSubProtoc__P117__26EFBBC6]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P117__26EFBBC6]  DEFAULT ((0)) FOR [P117]
GO
/****** Object:  Default [DF__TSubProtoc__P118__27E3DFFF]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P118__27E3DFFF]  DEFAULT ((0)) FOR [P118]
GO
/****** Object:  Default [DF__TSubProtoc__P119__28D80438]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P119__28D80438]  DEFAULT ((0)) FOR [P119]
GO
/****** Object:  Default [DF__TSubProtoc__P120__29CC2871]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P120__29CC2871]  DEFAULT ((0)) FOR [P120]
GO
/****** Object:  Default [DF__TSubProtoc__P121__2AC04CAA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P121__2AC04CAA]  DEFAULT ((0)) FOR [P121]
GO
/****** Object:  Default [DF__TSubProtoc__P122__2BB470E3]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P122__2BB470E3]  DEFAULT ((0)) FOR [P122]
GO
/****** Object:  Default [DF__TSubProtoc__P123__2CA8951C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P123__2CA8951C]  DEFAULT ((0)) FOR [P123]
GO
/****** Object:  Default [DF__TSubProtoc__P124__2D9CB955]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P124__2D9CB955]  DEFAULT ((0)) FOR [P124]
GO
/****** Object:  Default [DF__TSubProtoc__P125__2E90DD8E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P125__2E90DD8E]  DEFAULT ((0)) FOR [P125]
GO
/****** Object:  Default [DF__TSubProtoc__P126__2F8501C7]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P126__2F8501C7]  DEFAULT ((0)) FOR [P126]
GO
/****** Object:  Default [DF__TSubProtoc__P127__30792600]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P127__30792600]  DEFAULT ((0)) FOR [P127]
GO
/****** Object:  Default [DF__TSubProtoc__P128__316D4A39]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P128__316D4A39]  DEFAULT ((0)) FOR [P128]
GO
/****** Object:  Default [DF__TSubProtoc__P129__32616E72]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P129__32616E72]  DEFAULT ((0)) FOR [P129]
GO
/****** Object:  Default [DF__TSubProtoc__P130__335592AB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P130__335592AB]  DEFAULT ((0)) FOR [P130]
GO
/****** Object:  Default [DF__TSubProtoc__P131__3449B6E4]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P131__3449B6E4]  DEFAULT ((0)) FOR [P131]
GO
/****** Object:  Default [DF__TSubProtoc__P132__353DDB1D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P132__353DDB1D]  DEFAULT ((0)) FOR [P132]
GO
/****** Object:  Default [DF__TSubProtoc__P133__3631FF56]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P133__3631FF56]  DEFAULT ((0)) FOR [P133]
GO
/****** Object:  Default [DF__TSubProtoc__P134__3726238F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P134__3726238F]  DEFAULT ((0)) FOR [P134]
GO
/****** Object:  Default [DF__TSubProtoc__P135__381A47C8]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P135__381A47C8]  DEFAULT ((0)) FOR [P135]
GO
/****** Object:  Default [DF__TSubProtoc__P136__390E6C01]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P136__390E6C01]  DEFAULT ((0)) FOR [P136]
GO
/****** Object:  Default [DF__TSubProtoc__P137__3A02903A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P137__3A02903A]  DEFAULT ((0)) FOR [P137]
GO
/****** Object:  Default [DF__TSubProtoc__P138__3AF6B473]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P138__3AF6B473]  DEFAULT ((0)) FOR [P138]
GO
/****** Object:  Default [DF__TSubProtoc__P139__3BEAD8AC]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P139__3BEAD8AC]  DEFAULT ((0)) FOR [P139]
GO
/****** Object:  Default [DF__TSubProtoc__P140__3CDEFCE5]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P140__3CDEFCE5]  DEFAULT ((0)) FOR [P140]
GO
/****** Object:  Default [DF__TSubProtoc__P141__3DD3211E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P141__3DD3211E]  DEFAULT ((0)) FOR [P141]
GO
/****** Object:  Default [DF__TSubProtoc__P142__3EC74557]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P142__3EC74557]  DEFAULT ((0)) FOR [P142]
GO
/****** Object:  Default [DF__TSubProtoc__P143__3FBB6990]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P143__3FBB6990]  DEFAULT ((0)) FOR [P143]
GO
/****** Object:  Default [DF__TSubProtoc__P144__40AF8DC9]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P144__40AF8DC9]  DEFAULT ((0)) FOR [P144]
GO
/****** Object:  Default [DF__TSubProtoc__P145__41A3B202]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P145__41A3B202]  DEFAULT ((0)) FOR [P145]
GO
/****** Object:  Default [DF__TSubProtoc__P146__4297D63B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P146__4297D63B]  DEFAULT ((0)) FOR [P146]
GO
/****** Object:  Default [DF__TSubProtoc__P147__438BFA74]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P147__438BFA74]  DEFAULT ((0)) FOR [P147]
GO
/****** Object:  Default [DF__TSubProtoc__P148__44801EAD]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P148__44801EAD]  DEFAULT ((0)) FOR [P148]
GO
/****** Object:  Default [DF__TSubProtoc__P149__457442E6]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P149__457442E6]  DEFAULT ((0)) FOR [P149]
GO
/****** Object:  Default [DF__TSubProtoc__P150__4668671F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P150__4668671F]  DEFAULT ((0)) FOR [P150]
GO
/****** Object:  Default [DF__TSubProtoc__P151__475C8B58]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P151__475C8B58]  DEFAULT ((0)) FOR [P151]
GO
/****** Object:  Default [DF__TSubProtoc__P152__4850AF91]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P152__4850AF91]  DEFAULT ((0)) FOR [P152]
GO
/****** Object:  Default [DF__TSubProtoc__P153__4944D3CA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P153__4944D3CA]  DEFAULT ((0)) FOR [P153]
GO
/****** Object:  Default [DF__TSubProtoc__P154__4A38F803]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P154__4A38F803]  DEFAULT ((0)) FOR [P154]
GO
/****** Object:  Default [DF__TSubProtoc__P155__4B2D1C3C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P155__4B2D1C3C]  DEFAULT ((0)) FOR [P155]
GO
/****** Object:  Default [DF__TSubProtoc__P156__4C214075]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P156__4C214075]  DEFAULT ((0)) FOR [P156]
GO
/****** Object:  Default [DF__TSubProtoc__P157__4D1564AE]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P157__4D1564AE]  DEFAULT ((0)) FOR [P157]
GO
/****** Object:  Default [DF__TSubProtoc__P158__4E0988E7]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P158__4E0988E7]  DEFAULT ((0)) FOR [P158]
GO
/****** Object:  Default [DF__TSubProtoc__P159__4EFDAD20]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P159__4EFDAD20]  DEFAULT ((0)) FOR [P159]
GO
/****** Object:  Default [DF__TSubProtoc__P160__4FF1D159]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P160__4FF1D159]  DEFAULT ((0)) FOR [P160]
GO
/****** Object:  Default [DF__TSubProtoc__P161__50E5F592]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P161__50E5F592]  DEFAULT ((0)) FOR [P161]
GO
/****** Object:  Default [DF__TSubProtoc__P162__51DA19CB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P162__51DA19CB]  DEFAULT ((0)) FOR [P162]
GO
/****** Object:  Default [DF__TSubProtoc__P163__52CE3E04]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P163__52CE3E04]  DEFAULT ((0)) FOR [P163]
GO
/****** Object:  Default [DF__TSubProtoc__P164__53C2623D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P164__53C2623D]  DEFAULT ((0)) FOR [P164]
GO
/****** Object:  Default [DF__TSubProtoc__P165__54B68676]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P165__54B68676]  DEFAULT ((0)) FOR [P165]
GO
/****** Object:  Default [DF__TSubProtoc__P166__55AAAAAF]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P166__55AAAAAF]  DEFAULT ((0)) FOR [P166]
GO
/****** Object:  Default [DF__TSubProtoc__P167__569ECEE8]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P167__569ECEE8]  DEFAULT ((0)) FOR [P167]
GO
/****** Object:  Default [DF__TSubProtoc__P168__5792F321]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P168__5792F321]  DEFAULT ((0)) FOR [P168]
GO
/****** Object:  Default [DF__TSubProtoc__P169__5887175A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P169__5887175A]  DEFAULT ((0)) FOR [P169]
GO
/****** Object:  Default [DF__TSubProtoc__P170__597B3B93]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P170__597B3B93]  DEFAULT ((0)) FOR [P170]
GO
/****** Object:  Default [DF__TSubProtoc__P171__5A6F5FCC]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P171__5A6F5FCC]  DEFAULT ((0)) FOR [P171]
GO
/****** Object:  Default [DF__TSubProtoc__P172__5B638405]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P172__5B638405]  DEFAULT ((0)) FOR [P172]
GO
/****** Object:  Default [DF__TSubProtoc__P173__5C57A83E]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P173__5C57A83E]  DEFAULT ((0)) FOR [P173]
GO
/****** Object:  Default [DF__TSubProtoc__P174__5D4BCC77]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P174__5D4BCC77]  DEFAULT ((0)) FOR [P174]
GO
/****** Object:  Default [DF__TSubProtoc__P175__5E3FF0B0]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P175__5E3FF0B0]  DEFAULT ((0)) FOR [P175]
GO
/****** Object:  Default [DF__TSubProtoc__P176__5F3414E9]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P176__5F3414E9]  DEFAULT ((0)) FOR [P176]
GO
/****** Object:  Default [DF__TSubProtoc__P177__60283922]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P177__60283922]  DEFAULT ((0)) FOR [P177]
GO
/****** Object:  Default [DF__TSubProtoc__P178__611C5D5B]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P178__611C5D5B]  DEFAULT ((0)) FOR [P178]
GO
/****** Object:  Default [DF__TSubProtoc__P179__62108194]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P179__62108194]  DEFAULT ((0)) FOR [P179]
GO
/****** Object:  Default [DF__TSubProtoc__P180__6304A5CD]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P180__6304A5CD]  DEFAULT ((0)) FOR [P180]
GO
/****** Object:  Default [DF__TSubProtoc__P181__63F8CA06]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P181__63F8CA06]  DEFAULT ((0)) FOR [P181]
GO
/****** Object:  Default [DF__TSubProtoc__P182__64ECEE3F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P182__64ECEE3F]  DEFAULT ((0)) FOR [P182]
GO
/****** Object:  Default [DF__TSubProtoc__P183__65E11278]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P183__65E11278]  DEFAULT ((0)) FOR [P183]
GO
/****** Object:  Default [DF__TSubProtoc__P184__66D536B1]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P184__66D536B1]  DEFAULT ((0)) FOR [P184]
GO
/****** Object:  Default [DF__TSubProtoc__P185__67C95AEA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P185__67C95AEA]  DEFAULT ((0)) FOR [P185]
GO
/****** Object:  Default [DF__TSubProtoc__P186__68BD7F23]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P186__68BD7F23]  DEFAULT ((0)) FOR [P186]
GO
/****** Object:  Default [DF__TSubProtoc__P187__69B1A35C]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P187__69B1A35C]  DEFAULT ((0)) FOR [P187]
GO
/****** Object:  Default [DF__TSubProtoc__P188__6AA5C795]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P188__6AA5C795]  DEFAULT ((0)) FOR [P188]
GO
/****** Object:  Default [DF__TSubProtoc__P189__6B99EBCE]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P189__6B99EBCE]  DEFAULT ((0)) FOR [P189]
GO
/****** Object:  Default [DF__TSubProtoc__P190__6C8E1007]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P190__6C8E1007]  DEFAULT ((0)) FOR [P190]
GO
/****** Object:  Default [DF__TSubProtoc__P191__6D823440]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P191__6D823440]  DEFAULT ((0)) FOR [P191]
GO
/****** Object:  Default [DF__TSubProtoc__P192__6E765879]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P192__6E765879]  DEFAULT ((0)) FOR [P192]
GO
/****** Object:  Default [DF__TSubProtoc__P193__6F6A7CB2]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P193__6F6A7CB2]  DEFAULT ((0)) FOR [P193]
GO
/****** Object:  Default [DF__TSubProtoc__P194__705EA0EB]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P194__705EA0EB]  DEFAULT ((0)) FOR [P194]
GO
/****** Object:  Default [DF__TSubProtoc__P195__7152C524]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P195__7152C524]  DEFAULT ((0)) FOR [P195]
GO
/****** Object:  Default [DF__TSubProtoc__P196__7246E95D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P196__7246E95D]  DEFAULT ((0)) FOR [P196]
GO
/****** Object:  Default [DF__TSubProtoc__P197__733B0D96]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P197__733B0D96]  DEFAULT ((0)) FOR [P197]
GO
/****** Object:  Default [DF__TSubProtoc__P198__742F31CF]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P198__742F31CF]  DEFAULT ((0)) FOR [P198]
GO
/****** Object:  Default [DF__TSubProtoc__P199__75235608]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P199__75235608]  DEFAULT ((0)) FOR [P199]
GO
/****** Object:  Default [DF__TSubProtoc__P200__76177A41]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__P200__76177A41]  DEFAULT ((0)) FOR [P200]
GO
/****** Object:  Default [DF__TSubProtoc__Sure__770B9E7A]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF__TSubProtoc__Sure__770B9E7A]  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF_NULL_TSubProtocol_Transect_Herbarium_Sample]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF_NULL_TSubProtocol_Transect_Herbarium_Sample]  DEFAULT ((0)) FOR [Sampled]
GO
/****** Object:  Default [DF_NULL_TSubProtocol_Transect_Picture]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF_NULL_TSubProtocol_Transect_Picture]  DEFAULT ((0)) FOR [Picture]
GO
/****** Object:  Default [DF_NULL_TSubProtocol_Transect_Cultivated]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect] ADD  CONSTRAINT [DF_NULL_TSubProtocol_Transect_Cultivated]  DEFAULT ((0)) FOR [Cultivated]
GO
/****** Object:  Default [DF__TThemeEtu__Actif__5090EFD7]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TThemeEtude] ADD  CONSTRAINT [DF__TThemeEtu__Actif__5090EFD7]  DEFAULT ((0)) FOR [Actif]
GO
/****** Object:  Default [DF__TThemeEtu__NeedG__51851410]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[TThemeEtude] ADD  CONSTRAINT [DF__TThemeEtu__NeedG__51851410]  DEFAULT ((0)) FOR [NeedGeom]
GO
/****** Object:  Default [DF__Tthesauru__avail__4119A21D]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[Tthesaurus] ADD  CONSTRAINT [DF__Tthesauru__avail__4119A21D]  DEFAULT ((0)) FOR [available_EAU]
GO
/****** Object:  Default [DF__Tthesauru__avail__4D7F7902]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[Tthesaurus] ADD  CONSTRAINT [DF__Tthesauru__avail__4D7F7902]  DEFAULT ((1)) FOR [available_Morocco]
GO
/****** Object:  Default [DF__zzUserExp__Ident__05F8DC4F]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[zzUserExportTSelectionTemp_507] ADD  DEFAULT ((0)) FOR [Identity_sure]
GO
/****** Object:  Default [DF__zzUserExp__Ident__06ED0088]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[zzUserExportTSelectionTemp_507] ADD  DEFAULT ((0)) FOR [Ident_Occasional]
GO
/****** Object:  Default [DF__zzUserExp__Signa__07E124C1]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[zzUserExportTSelectionTemp_507] ADD  DEFAULT ((0)) FOR [Signal]
GO
/****** Object:  Default [DF__zzUserExp__Distu__08D548FA]    Script Date: 07/02/2014 14:07:31 ******/
ALTER TABLE [dbo].[zzUserExportTSelectionTemp_507] ADD  DEFAULT ((0)) FOR [Disturbed]
GO
/****** Object:  Check [CK_AdiposityNote]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Bird_Biometry]  WITH CHECK ADD  CONSTRAINT [CK_AdiposityNote] CHECK  (([Adiposity_note]>(0) AND [Adiposity_note]<=(3)))
GO
ALTER TABLE [dbo].[TProtocol_Bird_Biometry] CHECK CONSTRAINT [CK_AdiposityNote]
GO
/****** Object:  Check [CK_MuscleNote]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Bird_Biometry]  WITH CHECK ADD  CONSTRAINT [CK_MuscleNote] CHECK  (([Muscle_note]>(0) AND [Muscle_note]<=(3)))
GO
ALTER TABLE [dbo].[TProtocol_Bird_Biometry] CHECK CONSTRAINT [CK_MuscleNote]
GO
/****** Object:  Check [CK_ObsDuration]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sighting_conditions]  WITH CHECK ADD  CONSTRAINT [CK_ObsDuration] CHECK  ((coalesce(datediff(day,[start_time],[start_time]+CONVERT([time],[Observation_Duration],(0))),(0))<(1) AND coalesce(CONVERT([time],[start_time]+[Observation_Duration],(0)),CONVERT([time],'00:00',(0)))<=coalesce(CONVERT([time],[End_time],(0)),CONVERT([time],'23:59:59',(0)))))
GO
ALTER TABLE [dbo].[TProtocol_Sighting_conditions] CHECK CONSTRAINT [CK_ObsDuration]
GO
/****** Object:  Check [CK_StartEndTime]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sighting_conditions]  WITH CHECK ADD  CONSTRAINT [CK_StartEndTime] CHECK  (([End_time]>[Start_time]))
GO
ALTER TABLE [dbo].[TProtocol_Sighting_conditions] CHECK CONSTRAINT [CK_StartEndTime]
GO
/****** Object:  Check [chkUniqueIndPerStation]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual]  WITH NOCHECK ADD  CONSTRAINT [chkUniqueIndPerStation] CHECK  (([dbo].[fnc_check_TPrVertebrateIndividual_unique_IndID_StaID]([Fk_TInd_ID],[FK_TSta_ID],[PK])=(0)))
GO
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual] CHECK CONSTRAINT [chkUniqueIndPerStation]
GO
/****** Object:  ForeignKey [FK_TArgosEngineeringData_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TArgosEngineeringData]  WITH CHECK ADD  CONSTRAINT [FK_TArgosEngineeringData_ON_TStations] FOREIGN KEY([TarE_Nearest_FK_TSTA_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TArgosEngineeringData] CHECK CONSTRAINT [FK_TArgosEngineeringData_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TMapSelectionManager_ON_TThemeEtude]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMapSelectionManager]  WITH NOCHECK ADD  CONSTRAINT [FK_TMapSelectionManager_ON_TThemeEtude] FOREIGN KEY([TSMan_FK_Theme])
REFERENCES [dbo].[TThemeEtude] ([TProt_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TMapSelectionManager] CHECK CONSTRAINT [FK_TMapSelectionManager_ON_TThemeEtude]
GO
/****** Object:  ForeignKey [FK_TMonitoredStations_Positions_ON_TMonitoredStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TMonitoredStations_Positions]  WITH CHECK ADD  CONSTRAINT [FK_TMonitoredStations_Positions_ON_TMonitoredStations] FOREIGN KEY([TGeoPos_FK_TGeo_ID])
REFERENCES [dbo].[TMonitoredStations] ([TGeo_pk_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TMonitoredStations_Positions] CHECK CONSTRAINT [FK_TMonitoredStations_Positions_ON_TMonitoredStations]
GO
/****** Object:  ForeignKey [FK_TObj_Carac_type_ON_TObj_Carac_theme]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Carac_type]  WITH NOCHECK ADD  CONSTRAINT [FK_TObj_Carac_type_ON_TObj_Carac_theme] FOREIGN KEY([Fk_Theme])
REFERENCES [dbo].[TObj_Carac_theme] ([Carac_theme_Pk])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TObj_Carac_type] CHECK CONSTRAINT [FK_TObj_Carac_type_ON_TObj_Carac_theme]
GO
/****** Object:  ForeignKey [FK_TObj_Individual_carac_value_ON_TObj_Objects]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TObj_Carac_value]  WITH CHECK ADD  CONSTRAINT [FK_TObj_Individual_carac_value_ON_TObj_Objects] FOREIGN KEY([fk_object])
REFERENCES [dbo].[TObj_Objects] ([Object_Pk])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TObj_Carac_value] CHECK CONSTRAINT [FK_TObj_Individual_carac_value_ON_TObj_Objects]
GO
/****** Object:  ForeignKey [FK_TProt_TTheEt_TThemeEtude]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProt_TTheEt]  WITH NOCHECK ADD  CONSTRAINT [FK_TProt_TTheEt_TThemeEtude] FOREIGN KEY([TProt_PK_ID])
REFERENCES [dbo].[TThemeEtude] ([TProt_PK_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[TProt_TTheEt] CHECK CONSTRAINT [FK_TProt_TTheEt_TThemeEtude]
GO
/****** Object:  ForeignKey [FK_TProtocol_ArgosDataArgos_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_ArgosDataArgos]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_ArgosDataArgos_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_ArgosDataArgos] CHECK CONSTRAINT [FK_TProtocol_ArgosDataArgos_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_ArgosDataGPS_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_ArgosDataGPS]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_ArgosDataGPS_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_ArgosDataGPS] CHECK CONSTRAINT [FK_TProtocol_ArgosDataGPS_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Bustard_Biometry_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Bird_Biometry]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Bustard_Biometry_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Bird_Biometry] CHECK CONSTRAINT [FK_TProtocol_Bustard_Biometry_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Bulding_and_Activities_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Building_and_Activities]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Bulding_and_Activities_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Building_and_Activities] CHECK CONSTRAINT [FK_TProtocol_Bulding_and_Activities_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoCaptGroup_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Capture_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoCaptGroup_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Capture_Group] CHECK CONSTRAINT [FK_TProtoCaptGroup_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoCaptIndiv_ON_TProtoCaptGroup]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Capture_Individual]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoCaptIndiv_ON_TProtoCaptGroup] FOREIGN KEY([FK_Group])
REFERENCES [dbo].[TProtocol_Capture_Group] ([PK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Capture_Individual] CHECK CONSTRAINT [FK_TProtoCaptIndiv_ON_TProtoCaptGroup]
GO
/****** Object:  ForeignKey [FK_TProtoCaptIndiv_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Capture_Individual]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoCaptIndiv_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
GO
ALTER TABLE [dbo].[TProtocol_Capture_Individual] CHECK CONSTRAINT [FK_TProtoCaptIndiv_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Chiro_capt_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Chiro_capt_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Chiroptera_capture] CHECK CONSTRAINT [FK_TProtocol_Chiro_capt_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Chiro_det_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Chiroptera_detection]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Chiro_det_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Chiroptera_detection] CHECK CONSTRAINT [FK_TProtocol_Chiro_det_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoClutchDesc_ON_TProtoNest]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Clutch_Description]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoClutchDesc_ON_TProtoNest] FOREIGN KEY([FK_Nest])
REFERENCES [dbo].[TProtocol_Nest_Description] ([PK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Clutch_Description] CHECK CONSTRAINT [FK_TProtoClutchDesc_ON_TProtoNest]
GO
/****** Object:  ForeignKey [FK_TProtoClutchDesc_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Clutch_Description]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoClutchDesc_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
GO
ALTER TABLE [dbo].[TProtocol_Clutch_Description] CHECK CONSTRAINT [FK_TProtoClutchDesc_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Entomo_population_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Entomo_population]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Entomo_population_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Entomo_population] CHECK CONSTRAINT [FK_TProtocol_Entomo_population_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Habitat_stratified_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Habitat_stratified]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Habitat_stratified_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Habitat_stratified] CHECK CONSTRAINT [FK_TProtocol_Habitat_stratified_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TEquipment_TInd]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Individual_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_TEquipment_TInd] FOREIGN KEY([FK_IND_ID])
REFERENCES [dbo].[TViewIndividual] ([Individual_Obj_PK])
GO
ALTER TABLE [dbo].[TProtocol_Individual_Equipment] CHECK CONSTRAINT [FK_TEquipment_TInd]
GO
/****** Object:  ForeignKey [FK_TEquipment_TSat]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Individual_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_TEquipment_TSat] FOREIGN KEY([FK_SAT_ID])
REFERENCES [dbo].[TViewTrx_Sat] ([Trx_Sat_Obj_PK])
GO
ALTER TABLE [dbo].[TProtocol_Individual_Equipment] CHECK CONSTRAINT [FK_TEquipment_TSat]
GO
/****** Object:  ForeignKey [FK_TProtoNestDesc_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Nest_Description]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoNestDesc_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Nest_Description] CHECK CONSTRAINT [FK_TProtoNestDesc_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Phytosociology_habitat_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Phytosociology_habitat_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Phytosociology_habitat] CHECK CONSTRAINT [FK_TProtocol_Phytosociology_habitat_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Phytosociology_census_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Phytosociology_census_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Phytosociology_releve] CHECK CONSTRAINT [FK_TProtocol_Phytosociology_census_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoReleaseGroup_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Release_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoReleaseGroup_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Release_Group] CHECK CONSTRAINT [FK_TProtoReleaseGroup_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoReleaseIndiv_ON_TProtoGroup]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Release_Individual]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoReleaseIndiv_ON_TProtoGroup] FOREIGN KEY([FK_Group])
REFERENCES [dbo].[TProtocol_Release_Group] ([PK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Release_Individual] CHECK CONSTRAINT [FK_TProtoReleaseIndiv_ON_TProtoGroup]
GO
/****** Object:  ForeignKey [FK_TProtoReleaseIndiv_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Release_Individual]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoReleaseIndiv_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
GO
ALTER TABLE [dbo].[TProtocol_Release_Individual] CHECK CONSTRAINT [FK_TProtoReleaseIndiv_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Sampling_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sampling]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Sampling_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Sampling] CHECK CONSTRAINT [FK_TProtocol_Sampling_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Sighting_conditions_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Sighting_conditions]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Sighting_conditions_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Sighting_conditions] CHECK CONSTRAINT [FK_TProtocol_Sighting_conditions_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoSimplHabitat_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Simplified_Habitat]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoSimplHabitat_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Simplified_Habitat] CHECK CONSTRAINT [FK_TProtoSimplHabitat_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Station_Description_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_Description]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Station_Description_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Station_Description] CHECK CONSTRAINT [FK_TProtocol_Station_Description_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoStationEquipment_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Station_equipment]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoStationEquipment_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
GO
ALTER TABLE [dbo].[TProtocol_Station_equipment] CHECK CONSTRAINT [FK_TProtoStationEquipment_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Tracks_Clues_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Track_clue]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Tracks_Clues_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Track_clue] CHECK CONSTRAINT [FK_TProtocol_Tracks_Clues_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Transects_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Transects]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Transects_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Transects] CHECK CONSTRAINT [FK_TProtocol_Transects_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_VertebrateGroup_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtocol_VertebrateGroup_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Vertebrate_Group] CHECK CONSTRAINT [FK_TProtocol_VertebrateGroup_TStations]
GO
/****** Object:  ForeignKey [FK_TProtoIndividuals_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual]  WITH NOCHECK ADD  CONSTRAINT [FK_TProtoIndividuals_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual] CHECK CONSTRAINT [FK_TProtoIndividuals_ON_TStations]
GO
/****** Object:  ForeignKey [FK_TProtocol_Bustard_Death_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual_Death]  WITH CHECK ADD  CONSTRAINT [FK_TProtocol_Bustard_Death_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Vertebrate_Individual_Death] CHECK CONSTRAINT [FK_TProtocol_Bustard_Death_ON_TStations]
GO
/****** Object:  ForeignKey [FK_VertebrateInterviewing_ON_TMonitoredStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TProtocol_Vertebrate_interview]  WITH CHECK ADD  CONSTRAINT [FK_VertebrateInterviewing_ON_TMonitoredStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TProtocol_Vertebrate_interview] CHECK CONSTRAINT [FK_VertebrateInterviewing_ON_TMonitoredStations]
GO
/****** Object:  ForeignKey [FK_Tstations_ON_TMonitoredStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TStations]  WITH CHECK ADD  CONSTRAINT [FK_Tstations_ON_TMonitoredStations] FOREIGN KEY([TSta_FK_TGeo_ID])
REFERENCES [dbo].[TMonitoredStations] ([TGeo_pk_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TStations] CHECK CONSTRAINT [FK_Tstations_ON_TMonitoredStations]
GO
/****** Object:  ForeignKey [FK_TStations_additonal_values_ON_TStations]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TStations_additional_values]  WITH CHECK ADD  CONSTRAINT [FK_TStations_additonal_values_ON_TStations] FOREIGN KEY([FK_TSta_ID])
REFERENCES [dbo].[TStations] ([TSta_PK_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TStations_additional_values] CHECK CONSTRAINT [FK_TStations_additonal_values_ON_TStations]
GO
/****** Object:  ForeignKey [FK_SubPr_Entomo_Pop_Census_ON_TProtocol_Entomo_population]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Entomo_Pop_Census]  WITH CHECK ADD  CONSTRAINT [FK_SubPr_Entomo_Pop_Census_ON_TProtocol_Entomo_population] FOREIGN KEY([FK_Pr])
REFERENCES [dbo].[TProtocol_Entomo_population] ([PK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSubProtocol_Entomo_Pop_Census] CHECK CONSTRAINT [FK_SubPr_Entomo_Pop_Census_ON_TProtocol_Entomo_population]
GO
/****** Object:  ForeignKey [FK_SubPr_Transect_ON_TProtocol_Transects]    Script Date: 07/02/2014 14:07:30 ******/
ALTER TABLE [dbo].[TSubProtocol_Transect]  WITH CHECK ADD  CONSTRAINT [FK_SubPr_Transect_ON_TProtocol_Transects] FOREIGN KEY([Fk_Trans])
REFERENCES [dbo].[TProtocol_Transects] ([PK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSubProtocol_Transect] CHECK CONSTRAINT [FK_SubPr_Transect_ON_TProtocol_Transects]
GO
