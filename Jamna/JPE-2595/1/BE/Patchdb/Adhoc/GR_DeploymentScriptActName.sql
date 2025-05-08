begin tran
/********* Component ***************/
/********* Component Local Info ***************/
/********* Activity ***************/
Use depdb
go
If NOT EXISTS (Select '*' From fw_req_activity Where ActivityName = 'batdetscr' )
Begin
	Insert into fw_req_activity ( ActivityId, ActivityName, ActivityDesc, ComponentName, ActivityType, ActivityPosition, ActivitySequence, IsWFEnabled, EDKActivity, UpdUser, UpdTime ) 
	Select 91110035   , 'batdetscr' , 'Batch details Screen' , 'GR' ,   2   ,   1   ,   1   ,   0   ,   2   , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity
	Set    ActivityName 			='batdetscr' ,ActivityDesc 	= 'Batch details Screen' ,ComponentName 	= 'GR' ,ActivityType 	= '2' ,ActivityPosition = '1' ,ActivitySequence = '1' ,IsWFEnabled 		= '0' ,EDKActivity 		= '2' ,UpdUser 			= 'Test' ,UpdTime 			=   getdate()
	Where  ActivityName 			= 'batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity Where ActivityName = 'GRReversal' )
Begin
	Insert into fw_req_activity ( ActivityId, ActivityName, ActivityDesc, ComponentName, ActivityType, ActivityPosition, ActivitySequence, IsWFEnabled, EDKActivity, UpdUser, UpdTime ) 
	Select 91110022   , 'GRReversal' , 'GR Reversal' , 'GR' ,   1   ,   1   ,   1   ,   0   ,   2   , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity
	Set    ActivityName 			='GRReversal' ,ActivityDesc 	= 'GR Reversal' ,ComponentName 	= 'GR' ,ActivityType 	= '1' ,ActivityPosition = '1' ,ActivitySequence = '1' ,IsWFEnabled 		= '0' ,EDKActivity 		= '2' ,UpdUser 			= 'Test' ,UpdTime 			=   getdate()
	Where  ActivityName 			= 'GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity Where ActivityName = 'MaterialRejectionD' )
Begin
	Insert into fw_req_activity ( ActivityId, ActivityName, ActivityDesc, ComponentName, ActivityType, ActivityPosition, ActivitySequence, IsWFEnabled, EDKActivity, UpdUser, UpdTime ) 
	Select 91110036   , 'MaterialRejectionD' , 'Raw Material Rejection Details' , 'GR' ,   1   ,   1   ,   1   ,   0   ,   2   , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity
	Set    ActivityName 			='MaterialRejectionD' ,ActivityDesc 	= 'Raw Material Rejection Details' ,ComponentName 	= 'GR' ,ActivityType 	= '1' ,ActivityPosition = '1' ,ActivitySequence = '1' ,IsWFEnabled 		= '0' ,EDKActivity 		= '2' ,UpdUser 			= 'Test' ,UpdTime 			=   getdate()
	Where  ActivityName 			= 'MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity Where ActivityName = 'Viewbatchscr' )
Begin
	Insert into fw_req_activity ( ActivityId, ActivityName, ActivityDesc, ComponentName, ActivityType, ActivityPosition, ActivitySequence, IsWFEnabled, EDKActivity, UpdUser, UpdTime ) 
	Select 91110037   , 'Viewbatchscr' , 'View Batch Detail Screen' , 'GR' ,   1   ,   1   ,   1   ,   0   ,   2   , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity
	Set    ActivityName 			='Viewbatchscr' ,ActivityDesc 	= 'View Batch Detail Screen' ,ComponentName 	= 'GR' ,ActivityType 	= '1' ,ActivityPosition = '1' ,ActivitySequence = '1' ,IsWFEnabled 		= '0' ,EDKActivity 		= '2' ,UpdUser 			= 'Test' ,UpdTime 			=   getdate()
	Where  ActivityName 			= 'Viewbatchscr'
End


/********* Activity Local Info ***************/
If NOT EXISTS (Select '*' From fw_req_activity_local_info Where ActivityName = 'batdetscr' And Langid = 1)
Begin
	Insert into fw_req_activity_local_info ( ActivityId,ActivityName,ActivityDesc,LangId,HelpIndex,ToolTipText,UpdUser,UpdTime ) 
	Select 91110035   , 'batdetscr' , 'Batch details Screen' ,   1   , '' , '' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity_local_info
	Set    		ActivityDesc = 'Batch details Screen' ,	ActivityName = 'batdetscr' ,UpdUser 		 = 'Test' ,UpdTime 		 =   getdate()
	Where  		ActivityName = 'batdetscr'
	And    Langid 				 = 1 
End


If NOT EXISTS (Select '*' From fw_req_activity_local_info Where ActivityName = 'GRReversal' And Langid = 1)
Begin
	Insert into fw_req_activity_local_info ( ActivityId,ActivityName,ActivityDesc,LangId,HelpIndex,ToolTipText,UpdUser,UpdTime ) 
	Select 91110022   , 'GRReversal' , 'GR Reversal' ,   1   , '' , '' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity_local_info
	Set    		ActivityDesc = 'GR Reversal' ,	ActivityName = 'GRReversal' ,UpdUser 		 = 'Test' ,UpdTime 		 =   getdate()
	Where  		ActivityName = 'GRReversal'
	And    Langid 				 = 1 
End


If NOT EXISTS (Select '*' From fw_req_activity_local_info Where ActivityName = 'MaterialRejectionD' And Langid = 1)
Begin
	Insert into fw_req_activity_local_info ( ActivityId,ActivityName,ActivityDesc,LangId,HelpIndex,ToolTipText,UpdUser,UpdTime ) 
	Select 91110036   , 'MaterialRejectionD' , 'Raw Material Rejection Details' ,   1   , '' , '' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity_local_info
	Set    		ActivityDesc = 'Raw Material Rejection Details' ,	ActivityName = 'MaterialRejectionD' ,UpdUser 		 = 'Test' ,UpdTime 		 =   getdate()
	Where  		ActivityName = 'MaterialRejectionD'
	And    Langid 				 = 1 
End


If NOT EXISTS (Select '*' From fw_req_activity_local_info Where ActivityName = 'Viewbatchscr' And Langid = 1)
Begin
	Insert into fw_req_activity_local_info ( ActivityId,ActivityName,ActivityDesc,LangId,HelpIndex,ToolTipText,UpdUser,UpdTime ) 
	Select 91110037   , 'Viewbatchscr' , 'View Batch Detail Screen' ,   1   , '' , '' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_activity_local_info
	Set    		ActivityDesc = 'View Batch Detail Screen' ,	ActivityName = 'Viewbatchscr' ,UpdUser 		 = 'Test' ,UpdTime 		 =   getdate()
	Where  		ActivityName = 'Viewbatchscr'
	And    Langid 				 = 1 
End


/********* Temp variable ***************/
DECLARE @fw_req_activity Table(ActivityId int,ActivityName varchar(1000),ComponentName varchar(500)) 
INSERT INTO @fw_req_activity (ActivityId, ActivityName,ComponentName)    
		Select  a.ActivityId,a.ActivityName,a.ComponentName     
		From  	fw_req_activity a    
		Where  	a.ComponentName='GR'
/********* ILBO ***************/
If Not Exists (Select '*' From fw_req_ilbo Where ilbocode = 'Grbatchscreen' )
Begin
	Insert into fw_req_ilbo ( ilbocode, description, ASPOFilePath, progid, ILBOType, StatusFlag, UpdUser, UpdTime ) 
	Select 'Grbatchscreen' , 'GR Batch details' , '0' , '0' , '2' , '2' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_ilbo
	Set    	description 	='GR Batch details' ,ASPOFilePath = '0' ,progid 		= '0' ,ILBOType 	= '2' ,StatusFlag 	= '2' ,UpdUser 		= 'Test' ,UpdTime 		=   getdate()
	Where  ilbocode 			= 'Grbatchscreen'
End


If Not Exists (Select '*' From fw_req_ilbo Where ilbocode = 'GRReversal' )
Begin
	Insert into fw_req_ilbo ( ilbocode, description, ASPOFilePath, progid, ILBOType, StatusFlag, UpdUser, UpdTime ) 
	Select 'GRReversal' , 'GR Status Change' , '0' , '0' , '2' , '2' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_ilbo
	Set    	description 	='GR Status Change' ,ASPOFilePath = '0' ,progid 		= '0' ,ILBOType 	= '2' ,StatusFlag 	= '2' ,UpdUser 		= 'Test' ,UpdTime 		=   getdate()
	Where  ilbocode 			= 'GRReversal'
End


If Not Exists (Select '*' From fw_req_ilbo Where ilbocode = 'HelponTranformaterailrejection' )
Begin
	Insert into fw_req_ilbo ( ilbocode, description, ASPOFilePath, progid, ILBOType, StatusFlag, UpdUser, UpdTime ) 
	Select 'HelponTranformaterailrejection' , 'Help on Tran for material rejection' , '0' , '0' , '6' , '2' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_ilbo
	Set    	description 	='Help on Tran for material rejection' ,ASPOFilePath = '0' ,progid 		= '0' ,ILBOType 	= '6' ,StatusFlag 	= '2' ,UpdUser 		= 'Test' ,UpdTime 		=   getdate()
	Where  ilbocode 			= 'HelponTranformaterailrejection'
End


If Not Exists (Select '*' From fw_req_ilbo Where ilbocode = 'MaterialRejectionDetails' )
Begin
	Insert into fw_req_ilbo ( ilbocode, description, ASPOFilePath, progid, ILBOType, StatusFlag, UpdUser, UpdTime ) 
	Select 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , '0' , '0' , '2' , '2' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_ilbo
	Set    	description 	='Raw Material Rejection Details' ,ASPOFilePath = '0' ,progid 		= '0' ,ILBOType 	= '2' ,StatusFlag 	= '2' ,UpdUser 		= 'Test' ,UpdTime 		=   getdate()
	Where  ilbocode 			= 'MaterialRejectionDetails'
End


If Not Exists (Select '*' From fw_req_ilbo Where ilbocode = 'viewbatchscr' )
Begin
	Insert into fw_req_ilbo ( ilbocode, description, ASPOFilePath, progid, ILBOType, StatusFlag, UpdUser, UpdTime ) 
	Select 'viewbatchscr' , 'View Batch Screen Details' , '0' , '0' , '2' , '2' , 'Test' ,   getdate()
End
Else
Begin
	Update fw_req_ilbo
	Set    	description 	='View Batch Screen Details' ,ASPOFilePath = '0' ,progid 		= '0' ,ILBOType 	= '2' ,StatusFlag 	= '2' ,UpdUser 		= 'Test' ,UpdTime 		=   getdate()
	Where  ilbocode 			= 'viewbatchscr'
End


/********* Activity_ILBO ***************/
If NOT EXISTS (Select '*' From fw_req_activity_ilbo fai,@fw_req_activity ao Where ao.ActivityName = 'batdetscr' And  fai.ActivityId  = ao.ActivityId And ILBOCode  = 'Grbatchscreen' )
Begin
	Insert into fw_req_activity_ilbo ( ActivityId,ActivityName,ilbocode, UpdUser, UpdTime ) 
	Select ao.ActivityId,ao.ActivityName   , 'Grbatchscreen' , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And ILBOCode  = 'GRReversal' )
Begin
	Insert into fw_req_activity_ilbo ( ActivityId,ActivityName,ilbocode, UpdUser, UpdTime ) 
	Select ao.ActivityId,ao.ActivityName   , 'GRReversal' , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And ILBOCode  = 'HelponTranformaterailrejection' )
Begin
	Insert into fw_req_activity_ilbo ( ActivityId,ActivityName,ilbocode, UpdUser, UpdTime ) 
	Select ao.ActivityId,ao.ActivityName   , 'HelponTranformaterailrejection' , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And ILBOCode  = 'MaterialRejectionDetails' )
Begin
	Insert into fw_req_activity_ilbo ( ActivityId,ActivityName,ilbocode, UpdUser, UpdTime ) 
	Select ao.ActivityId,ao.ActivityName   , 'MaterialRejectionDetails' , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo fai,@fw_req_activity ao Where ao.ActivityName = 'Viewbatchscr' And  fai.ActivityId  = ao.ActivityId And ILBOCode  = 'viewbatchscr' )
Begin
	Insert into fw_req_activity_ilbo ( ActivityId,ActivityName,ilbocode, UpdUser, UpdTime ) 
	Select ao.ActivityId,ao.ActivityName   , 'viewbatchscr' , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


/********* ILBO State ***************/
/********* ILBO State Summary ***************/
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'Grbatchscreen'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRESCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRESCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRGRCRevEnt'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRGRCRevEnt'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCMov'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCMov'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRNCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRNCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRNEdtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRNEdtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRReversal'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtTCD'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtTCD'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtTCDOth'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRSCCrtTCDOth'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRVwESCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'GRVwESCCrtMain'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'HelponTranformaterailrejection'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'MaterialRejectionDetails'
Delete From fw_req_ilbo_state_summary Where ILBOCode = 'viewbatchscr'
/********* Service ***************/
If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgDefFetchSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgDefFetchSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgInitSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgInitSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMROTMainPgDefFetchSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMROTMainPgDefFetchSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMROTMainPgSearchTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMROTMainPgSearchTrSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgAuthorTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgAuthorTrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgCreateTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgCreateTrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgItecodUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgItecodUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgPurOrdUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgPurOrdUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgTraNoUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgTraNoUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTMateriMainPgVarCodUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTMateriMainPgVarCodUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRBATDMainPgDefFetchSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRBATDMainPgDefFetchSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRBATDMainPgInitSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRBATDMainPgInitSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRBATDMainPgSAVETrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRBATDMainPgSAVETrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTVWBATCMainPgDefFetchSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTVWBATCMainPgDefFetchSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTVWBATCMainPgInitSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTVWBATCMainPgInitSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTVWBATCMainPgSEARCTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTVWBATCMainPgSEARCTrSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTVWBATCMainPgLINENOUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTVWBATCMainPgLINENOUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTViReD1mainpgVWBATLiSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTViReD1mainpgVWBATLiSr' , 'GR' , '0' , '0' , '1' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRBATDMainPgLINENOUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRBATDMainPgLINENOUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTCrReDomainpgGETMATrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTCrReDomainpgGETMATrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTEdReDomainpgGETMANTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTEdReDomainpgGETMANTrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgInitSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgInitSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgDefFetchSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgDefFetchSr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgCSSTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgCSSTrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgsearTrSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgsearTrSr' , 'GR' , '1' , '0' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgGRrevmReaCodHeSr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgGRrevmReaCodHeSr' , 'GR' , '0' , '0' , '1' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_des_service Where  ServiceName = 'GRTGRRMainPgGRrevmReaCodUISr' )
Begin
	Insert into fw_des_service ( ServiceName, ComponentName, ServiceType, IsIntegSer,StatusFlag,UpdUser,UpdTime ) 
	Select 'GRTGRRMainPgGRrevmReaCodUISr' , 'GR' , '0' , '0' , '2' , 'Test' ,   getdate()
End


/********* Task ***************/
If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTSpMoDemainpgBATDETLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTSpMoDemainpgBATDETLi' , 'Link' , 'Batch Details' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTSpMoDemainpgBATDETLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTSpMoDemainpgBATDETLi' , 'Link' , 'Batch Details' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTViReD1mainpgVWBATLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTViReD1mainpgVWBATLi' , 'Link' , 'View Batch details' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTViReD1mainpgVWBATLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTViReD1mainpgVWBATLi' , 'Link' , 'View Batch details' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMROTMainPgDefFetch' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMROTMainPgDefFetch' , 'Fetch' , 'Default Fetch Task For the ILBO HelponTranformaterailrejection' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMROTMainPgSearchTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMROTMainPgSearchTr' , 'Trans' , 'Search' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgCreateTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgCreateTr' , 'Trans' , 'Maintain' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgDefFetch' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgDefFetch' , 'Fetch' , 'Default Fetch Task For the ILBO MaterialRejectionDetails' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgInit' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgInit' , 'initialize' , 'Initalize Task For the ILBO MaterialRejectionDetails' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgItecodUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgItecodUI' , 'UI' , 'UI Task For the Control _ItemCode' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgPurOrdHe' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgPurOrdHe' , 'Help' , 'Help Task For the Control _PurchaseOrder' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgPurOrdUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgPurOrdUI' , 'UI' , 'UI Task For the Control _PurchaseOrder' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgTraNoHe' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgTraNoHe' , 'Help' , 'Help Task For the Control _TranNo' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgTraNoUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgTraNoUI' , 'UI' , 'UI Task For the Control _TranNo' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgVarCodUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgVarCodUI' , 'UI' , 'UI Task For the Control _VariantCode' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRBATDMainPgDefFetch' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRBATDMainPgDefFetch' , 'Fetch' , 'Default Fetch Task For the ILBO Grbatchscreen' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRBATDMainPgInit' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRBATDMainPgInit' , 'initialize' , 'Initalize Task For the ILBO Grbatchscreen' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRBATDMainPgLINENOUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRBATDMainPgLINENOUI' , 'UI' , 'UI Task For the Control _LineNo' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRBATDMainPgSAVETr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRBATDMainPgSAVETr' , 'Trans' , 'Save' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTVWBATCMainPgDefFetch' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTVWBATCMainPgDefFetch' , 'Fetch' , 'Default Fetch Task For the ILBO viewbatchscr' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTVWBATCMainPgInit' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTVWBATCMainPgInit' , 'initialize' , 'Initalize Task For the ILBO viewbatchscr' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTVWBATCMainPgLINENOUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTVWBATCMainPgLINENOUI' , 'UI' , 'UI Task For the Control _LineNo' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTVWBATCMainPgSEARCTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTVWBATCMainPgSEARCTr' , 'Trans' , 'Search' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgCSSTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgCSSTr' , 'Trans' , 'Confirm Status Change' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgDefFetch' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgDefFetch' , 'Fetch' , 'Default Fetch Task For the ILBO GRReversal' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgGRrevmReaCodHe' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgGRrevmReaCodHe' , 'Help' , 'Help Task For the Grid Control _grdGR_revmldetails - Column Name - _Gr_reason_code' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgGRrevmReaCodUI' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgGRrevmReaCodUI' , 'UI' , 'UI Task For the Grid Control _grdGR_revmldetails - Column Name - _Gr_reason_code' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgGRrevmRecNoLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgGRrevmRecNoLi' , 'Link' , 'Databased Hyper Link - For the GridControl _grdGR_revmldetails - Column Name - _Gr_receipt_no' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgInit' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgInit' , 'initialize' , 'Initalize Task For the ILBO GRReversal' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgmldRecNoLi' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgmldRecNoLi' , 'Link' , 'Databased Hyper Link - For the GridControl _grdmldetails - Column Name - _ReceiptNo' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTGRRMainPgsearTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTGRRMainPgsearTr' , 'Trans' , 'Search' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTEdReDomainpgGETMANTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTEdReDomainpgGETMANTr' , 'Trans' , 'Get Man-Hrs' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTEdReDomainpgGETMANTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTEdReDomainpgGETMANTr' , 'Trans' , 'Get Man-Hrs' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTCrReDomainpgGETMATr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTCrReDomainpgGETMATr' , 'Trans' , 'Get Man-Hrs' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTCrReDomainpgGETMATr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTCrReDomainpgGETMATr' , 'Trans' , 'Get Man-Hrs' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_task Where TaskName = 'GRTMateriMainPgAuthorTr' )
Begin
	Insert into fw_req_task ( TaskName, TaskType, TaskDesc, UpdUser, UpdTime ) 
	Select 'GRTMateriMainPgAuthorTr' , 'Trans' , 'Authorize' , 'Test' ,   getdate()
End


/********* Activity ILBO Task ***************/
If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRSCCrt' and ILBOCode='GRSCCrtMain' and TaskName = 'GRTCrReDomainpgGETMATr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCCrtMain' , 'GRTCrReDomainpgGETMATr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRSCCrt' and ILBOCode='GRSCCrtMain' and TaskName = 'GRTCrReDomainpgGETMATr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCCrtMain' , 'GRTCrReDomainpgGETMATr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRMov' and ILBOCode='GRSCMov' and TaskName = 'GRTSpMoDemainpgBATDETLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCMov' , 'GRTSpMoDemainpgBATDETLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRMov'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRMov' and ILBOCode='GRSCMov' and TaskName = 'GRTSpMoDemainpgBATDETLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCMov' , 'GRTSpMoDemainpgBATDETLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRMov'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRESCCrt' and ILBOCode='GRESCCrtMain' and TaskName = 'GRTEdReDomainpgGETMANTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRESCCrtMain' , 'GRTEdReDomainpgGETMANTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRESCCrt' and ILBOCode='GRESCCrtMain' and TaskName = 'GRTEdReDomainpgGETMANTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRESCCrtMain' , 'GRTEdReDomainpgGETMANTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRVwESCCrt' and ILBOCode='GRVwESCCrtMain' and TaskName = 'GRTViReD1mainpgVWBATLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRVwESCCrtMain' , 'GRTViReD1mainpgVWBATLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRVwESCCrt' and ILBOCode='GRVwESCCrtMain' and TaskName = 'GRTViReD1mainpgVWBATLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRVwESCCrtMain' , 'GRTViReD1mainpgVWBATLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='HelponTranformaterailrejection' and TaskName = 'GRTMROTMainPgDefFetch' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'HelponTranformaterailrejection' , 'GRTMROTMainPgDefFetch' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='HelponTranformaterailrejection' and TaskName = 'GRTMROTMainPgSearchTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'HelponTranformaterailrejection' , 'GRTMROTMainPgSearchTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgAuthorTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgAuthorTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgCreateTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgCreateTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgDefFetch' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgDefFetch' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgInit' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgInit' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgItecodUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgItecodUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgPurOrdHe' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgPurOrdHe' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgPurOrdUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgPurOrdUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgTraNoHe' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgTraNoHe' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgTraNoUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgTraNoUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgVarCodUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'GRTMateriMainPgVarCodUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgDefFetch' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GRTGRBATDMainPgDefFetch' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgInit' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GRTGRBATDMainPgInit' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgLINENOUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GRTGRBATDMainPgLINENOUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgSAVETr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GRTGRBATDMainPgSAVETr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgDefFetch' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'GRTVWBATCMainPgDefFetch' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgInit' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'GRTVWBATCMainPgInit' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgLINENOUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'GRTVWBATCMainPgLINENOUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgSEARCTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'GRTVWBATCMainPgSEARCTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgCSSTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgCSSTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgDefFetch' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgDefFetch' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmReaCodHe' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgGRrevmReaCodHe' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmReaCodUI' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgGRrevmReaCodUI' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmRecNoLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgGRrevmRecNoLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgInit' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgInit' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgmldRecNoLi' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgmldRecNoLi' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgsearTr' )
Begin
	Insert into fw_req_activity_ilbo_task ( ActivityId,ActivityName, ILBOCode, TaskName, DataSavingTask, LinkType, Taskconfirmation , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GRTGRRMainPgsearTr' ,   0   ,   1   ,   0   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


/********* Activity ILBO Task Local Info***************/
If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRSCCrt' and ILBOCode='GRSCCrtMain' and TaskName = 'GRTCrReDomainpgGETMATr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCCrtMain' , 'Create Receipt Document' , 'GRTCrReDomainpgGETMATr' , 'Get Man-Hrs'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRSCCrt' and ILBOCode='GRSCCrtMain' and TaskName = 'GRTCrReDomainpgGETMATr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCCrtMain' , 'Create Receipt Document' , 'GRTCrReDomainpgGETMATr' , 'Get Man-Hrs'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRMov' and ILBOCode='GRSCMov' and TaskName = 'GRTSpMoDemainpgBATDETLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCMov' , 'Specify Movement Details' , 'GRTSpMoDemainpgBATDETLi' , 'Batch Details'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRMov'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRMov' and ILBOCode='GRSCMov' and TaskName = 'GRTSpMoDemainpgBATDETLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRSCMov' , 'Specify Movement Details' , 'GRTSpMoDemainpgBATDETLi' , 'Batch Details'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRMov'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRESCCrt' and ILBOCode='GRESCCrtMain' and TaskName = 'GRTEdReDomainpgGETMANTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRESCCrtMain' , 'Edit Receipt Document' , 'GRTEdReDomainpgGETMANTr' , 'Get Man-Hrs'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRESCCrt' and ILBOCode='GRESCCrtMain' and TaskName = 'GRTEdReDomainpgGETMANTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRESCCrtMain' , 'Edit Receipt Document' , 'GRTEdReDomainpgGETMANTr' , 'Get Man-Hrs'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRVwESCCrt' and ILBOCode='GRVwESCCrtMain' and TaskName = 'GRTViReD1mainpgVWBATLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRVwESCCrtMain' , 'View Receipt Document' , 'GRTViReD1mainpgVWBATLi' , 'View Batch details'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRVwESCCrt' and ILBOCode='GRVwESCCrtMain' and TaskName = 'GRTViReD1mainpgVWBATLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRVwESCCrtMain' , 'View Receipt Document' , 'GRTViReD1mainpgVWBATLi' , 'View Batch details'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='HelponTranformaterailrejection' and TaskName = 'GRTMROTMainPgDefFetch' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'HelponTranformaterailrejection' , 'Help on Tran for material rejection' , 'GRTMROTMainPgDefFetch' , 'Default Fetch Task For the ILBO HelponTranformaterailrejection'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='HelponTranformaterailrejection' and TaskName = 'GRTMROTMainPgSearchTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'HelponTranformaterailrejection' , 'Help on Tran for material rejection' , 'GRTMROTMainPgSearchTr' , 'Search'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgAuthorTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgAuthorTr' , 'Authorize'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgCreateTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgCreateTr' , 'Maintain'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgDefFetch' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgDefFetch' , 'Default Fetch Task For the ILBO MaterialRejectionDetails'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgInit' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgInit' , 'Initalize Task For the ILBO MaterialRejectionDetails'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgItecodUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgItecodUI' , 'UI Task For the Control _ItemCode'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgPurOrdHe' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgPurOrdHe' , 'Help Task For the Control _PurchaseOrder'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgPurOrdUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgPurOrdUI' , 'UI Task For the Control _PurchaseOrder'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgTraNoHe' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgTraNoHe' , 'Help Task For the Control _TranNo'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgTraNoUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgTraNoUI' , 'UI Task For the Control _TranNo'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='MaterialRejectionD' and ILBOCode='MaterialRejectionDetails' and TaskName = 'GRTMateriMainPgVarCodUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'MaterialRejectionDetails' , 'Raw Material Rejection Details' , 'GRTMateriMainPgVarCodUI' , 'UI Task For the Control _VariantCode'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgDefFetch' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GR Batch details' , 'GRTGRBATDMainPgDefFetch' , 'Default Fetch Task For the ILBO Grbatchscreen'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgInit' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GR Batch details' , 'GRTGRBATDMainPgInit' , 'Initalize Task For the ILBO Grbatchscreen'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgLINENOUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GR Batch details' , 'GRTGRBATDMainPgLINENOUI' , 'UI Task For the Control _LineNo'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='batdetscr' and ILBOCode='Grbatchscreen' and TaskName = 'GRTGRBATDMainPgSAVETr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'Grbatchscreen' , 'GR Batch details' , 'GRTGRBATDMainPgSAVETr' , 'Save'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgDefFetch' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'View Batch Screen Details' , 'GRTVWBATCMainPgDefFetch' , 'Default Fetch Task For the ILBO viewbatchscr'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgInit' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'View Batch Screen Details' , 'GRTVWBATCMainPgInit' , 'Initalize Task For the ILBO viewbatchscr'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgLINENOUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'View Batch Screen Details' , 'GRTVWBATCMainPgLINENOUI' , 'UI Task For the Control _LineNo'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='Viewbatchscr' and ILBOCode='viewbatchscr' and TaskName = 'GRTVWBATCMainPgSEARCTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'viewbatchscr' , 'View Batch Screen Details' , 'GRTVWBATCMainPgSEARCTr' , 'Search'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgCSSTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgCSSTr' , 'Confirm Status Change'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgDefFetch' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgDefFetch' , 'Default Fetch Task For the ILBO GRReversal'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmReaCodHe' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgGRrevmReaCodHe' , 'Help Task For the Grid Control _grdGR_revmldetails - Column Name - _Gr_reason_code'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmReaCodUI' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgGRrevmReaCodUI' , 'UI Task For the Grid Control _grdGR_revmldetails - Column Name - _Gr_reason_code'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgGRrevmRecNoLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgGRrevmRecNoLi' , 'Databased Hyper Link - For the GridControl _grdGR_revmldetails - Column Name - _Gr_receipt_no'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgInit' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgInit' , 'Initalize Task For the ILBO GRReversal'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgmldRecNoLi' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgmldRecNoLi' , 'Databased Hyper Link - For the GridControl _grdmldetails - Column Name - _ReceiptNo'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


If NOT EXISTS (Select '*' From fw_req_activity_ilbo_task_local_info Where ActivityName='GRReversal' and ILBOCode='GRReversal' and TaskName = 'GRTGRRMainPgsearTr' and LangID= 1)
Begin
	Insert into fw_req_activity_ilbo_task_local_info ( ActivityId,ActivityName, ILBOCode,ILBODescription, TaskName,TaskDesc,LangId , UpdUser, UpdTime ) 
	Select ao.ActivityId,  ao.ActivityName   , 'GRReversal' , 'GR Status Change' , 'GRTGRRMainPgsearTr' , 'Search'   ,   1   , 'Test' ,   getdate()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


/********* precision ***************/
If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PBSR_no' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PBSR_no' , '7' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Glance_PT' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Glance_PT' , '15' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'numeric10' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'numeric10' , '10' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'refpercent' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'refpercent' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Two' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Two' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'P_Fuel_Amt' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'P_Fuel_Amt' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'P_Fuel_Qty' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'P_Fuel_Qty' , '29' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'P_FuelRate' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'P_FuelRate' , '28' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Eight' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Eight' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ITK_prec' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ITK_prec' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ERate' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ERate' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PEXRATE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PEXRATE' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'SPY_Num20' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'SPY_Num20' , '20' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Num_PIR' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Num_PIR' , '10' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Value_PR' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Value_PR' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'YIELD' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'YIELD' , '10' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '          ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '          ' , '0' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '0         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '0         ' , '40' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '10dot4' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '10dot4' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '4         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '4         ' , '15' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '5' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '5' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '6         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '6         ' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'abcde' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'abcde' , '20' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'CF' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'CF' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'chkFlag' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'chkFlag' , '2' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'CoversionF' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'CoversionF' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'decimal' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'decimal' , '8' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Denominati' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Denominati' , '12' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'DR' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'DR' , '8' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ElapsedTim' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ElapsedTim' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Eligibilit' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Eligibilit' , '7' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'FACTOR' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'FACTOR' , '6' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'factor1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'factor1' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'FileSize' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'FileSize' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Flex' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Flex' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'float10' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'float10' , '10' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float15' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float15' , '15' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'float6' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'float6' , '6' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'FourDotTwo' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'FourDotTwo' , '7' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'HW' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'HW' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Integer' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Integer' , '8' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'lc_amount' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'lc_amount' , '14' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Life' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Life' , '6' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'not_used' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'not_used' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'NumericPar' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'NumericPar' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'P2' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'P2' , '20' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'P3' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'P3' , '20' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PDURN' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PDURN' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Percentage' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Percentage' , '10' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PGTRate' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PGTRate' , '28' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PLow' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PLow' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PMED' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PMED' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PREC_0         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PREC_0         ' , '40' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PREC_2         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PREC_2         ' , '19' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PREC_3         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PREC_3         ' , '20' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PREC_5         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PREC_5         ' , '28' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PREC_8         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PREC_8         ' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PurCost' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PurCost' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Qty' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Qty' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Quantity' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Quantity' , '29' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Rate' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Rate' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Ratio' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Ratio' , '10' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Reliabilit' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Reliabilit' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Salary' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Salary' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'SALARY1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'SALARY1' , '14' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'SALARY2' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'SALARY2' , '13' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'sixdottwo' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'sixdottwo' , '9' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'StandardHo' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'StandardHo' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Statistica' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Statistica' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'StatLimits' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'StatLimits' , '20' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Tendotfour' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Tendotfour' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ThreeDot1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ThreeDot1' , '5' , '1' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'threedottw' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'threedottw' , '6' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Tolearnace' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Tolearnace' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ToleranceP' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ToleranceP' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'TwelveDotT' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'TwelveDotT' , '12' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'TwoDot1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'TwoDot1' , '4' , '1' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'TwoDotTwo' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'TwoDotTwo' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Volume_med' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Volume_med' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'weightkg' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'weightkg' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'num20' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'num20' , '20' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pp_value' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pp_value' , '28' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'rcptqty' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'rcptqty' , '20' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'tms_num28' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'tms_num28' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'yr_sales_1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'yr_sales_1' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ConvFactor' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ConvFactor' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Num060' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Num060' , '6' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Num200' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Num200' , '20' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Num203' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Num203' , '20' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'VALUE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'VALUE' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ctxt_float' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ctxt_float' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'param_from' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'param_from' , '38' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'param_to' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'param_to' , '38' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pt_invent' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pt_invent' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Dusge_pre' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Dusge_pre' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PAMT_SPRT' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PAMT_SPRT' , '15' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'perc' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'perc' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pm_num' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pm_num' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pm_pre' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pm_pre' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ppr_Qty' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ppr_Qty' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'value1' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'value1' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'FinAmt' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'FinAmt' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Price' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Price' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ER' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ER' , '15' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'FiveDotTwo' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'FiveDotTwo' , '8' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float20' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float20' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float28' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float28' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float3' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float3' , '3' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float5' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float5' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'none' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'none' , '0' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PEXCHRATE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PEXCHRATE' , '15' , '5' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PHIGH' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PHIGH' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'WEIGHTAGE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'WEIGHTAGE' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '10        ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '10        ' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '2' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '2' , '14' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '3         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '3         ' , '19' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '8' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '8' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Amount' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Amount' , '19' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ATTVALUE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ATTVALUE' , '15' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'DURATION' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'DURATION' , '20' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'geo_len' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'geo_len' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Numeric' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Numeric' , '7' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'ocl_pay' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'ocl_pay' , '7' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PAMT' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PAMT' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PAMT_MED' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PAMT_MED' , '15' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'percent' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'percent' , '5' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PQTY' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PQTY' , '28' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PQTY_MED' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PQTY_MED' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'PRATE' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'PRATE' , '28' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Prate_med' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Prate_med' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwaddemp' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwaddemp' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwamount' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwamount' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwbatchno' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwbatchno' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwbreadth' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwbreadth' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwcapacity' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwcapacity' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwchange' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwchange' , '28' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwcharge' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwcharge' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwconhrs' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwconhrs' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwcost' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwcost' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwcount' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwcount' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwcutoff' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwcutoff' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwdayoff' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwdayoff' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwdepth' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwdepth' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwdisc' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwdisc' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwdistance' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwdistance' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwdocktime' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwdocktime' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pweqpwt' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pweqpwt' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwfee' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwfee' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwfreetime' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwfreetime' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwgenht' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwgenht' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwgenwt' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwgenwt' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwgross' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwgross' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwgrossco' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwgrossco' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwheight' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwheight' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwhgtlift' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwhgtlift' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwhrsday' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwhrsday' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwhrswk' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwhrswk' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwkg' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwkg' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwlength' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwlength' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwload' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwload' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwloads' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwloads' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwmargin' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwmargin' , '28' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwmaxallow' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwmaxallow' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwmileage' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwmileage' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwnnothu' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwnnothu' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwnoofitm' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwnoofitm' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwnoofline' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwnoofline' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwnoofpark' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwnoofpark' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwoverh' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwoverh' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwper' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwper' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwpercent' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwpercent' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwperiod' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwperiod' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwprice' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwprice' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwqty' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwqty' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwrange' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwrange' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwrate' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwrate' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwrevenue' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwrevenue' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwsample' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwsample' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwspace' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwspace' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwtare' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwtare' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwtemp' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwtemp' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwtime' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwtime' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwtoleranc' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwtoleranc' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwtotest' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwtotest' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwttime' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwttime' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwvalue' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwvalue' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwvolume' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwvolume' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwweight' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwweight' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwwidth' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwwidth' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'pwworkday' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'pwworkday' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Shelf_life' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Shelf_life' , '28' , '8' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'TCDVarVal' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'TCDVarVal' , '28' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'VOLUME' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'VOLUME' , '28' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Weight' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Weight' , '28' , '6' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'yr_sales' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'yr_sales' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'zero' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'zero' , '2' , '0' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '13        ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '13        ' , '22' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '22        ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '22        ' , '12' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = '9         ' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select '9         ' , '18' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'capacity' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'capacity' , '10' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'Float2' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'Float2' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'gen_not_u' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'gen_not_u' , '15' , '4' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'last_yr_s' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'last_yr_s' , '28' , '2' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'num' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'num' , '10' , '3' , 'Test' ,   getdate()
End


If NOT EXISTS (Select '*' From fw_req_precision Where PrecisionType = 'num28' ) 
Begin
	Insert into fw_req_precision ( PrecisionType, TotalLength, DecimalLength, UpdUser, UpdTime ) 
	Select 'num28' , '28' , '2' , 'Test' ,   getdate()
End


/********* Activity Service ***************/
IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_fet' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_fet' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_init' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_init' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTCrReDomainpgGETMATrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTCrReDomainpgGETMATrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRT_cmn_Ser_crtfz' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRT_cmn_Ser_crtfz' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_fet' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_fet' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_init' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_init' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_cmn_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_cmn_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTCrReDomainpgGETMATrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTCrReDomainpgGETMATrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRSCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRT_cmn_Ser_crtfz' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRT_cmn_Ser_crtfz' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRSCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_tcd_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_tcd_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_tcd_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_tcd_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_otcd_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_otcd_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_otcd_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_otcd_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_tcd_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_tcd_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_tcd_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_tcd_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_otcd_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_otcd_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRValues' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_otcd_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_otcd_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRValues'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTmainse_ser_fet' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTmainse_ser_fet' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRGRCRevEntHlp_Ser' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRGRCRevEntHlp_Ser' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTmainse_ser_init' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTmainse_ser_init' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTmainse_ser_fet' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTmainse_ser_fet' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRGRCRevEntHlp_Ser' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRGRCRevEntHlp_Ser' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRGRCRev' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTmainse_ser_init' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTmainse_ser_init' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRGRCRev'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_rmn_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_rmn_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_rmn_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_rmn_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_rmn_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_rmn_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_rmn_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_rmn_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNEdt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_red_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_red_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNEdt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNEdt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_red_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_red_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNEdt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNEdt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_red_ser_sbt' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_red_ser_sbt' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNEdt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRNEdt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'gr_red_ser_fr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'gr_red_ser_fr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRNEdt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRESCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTEdReDomainpgGETMANTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTEdReDomainpgGETMANTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRESCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTEdReDomainpgGETMANTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTEdReDomainpgGETMANTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRESCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRVwESCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTViReD1mainpgVWBATLiSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTViReD1mainpgVWBATLiSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRVwESCCrt' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTViReD1mainpgVWBATLiSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTViReD1mainpgVWBATLiSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRVwESCCrt'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMROTMainPgDefFetchSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMROTMainPgDefFetchSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMROTMainPgSearchTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMROTMainPgSearchTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'batdetscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRBATDMainPgDefFetchSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRBATDMainPgDefFetchSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'batdetscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRBATDMainPgInitSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRBATDMainPgInitSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'batdetscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRBATDMainPgLINENOUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRBATDMainPgLINENOUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'batdetscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRBATDMainPgSAVETrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRBATDMainPgSAVETrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='batdetscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgCSSTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgCSSTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgDefFetchSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgDefFetchSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgGRrevmReaCodHeSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgGRrevmReaCodHeSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgGRrevmReaCodUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgGRrevmReaCodUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgInitSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgInitSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'GRReversal' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTGRRMainPgsearTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTGRRMainPgsearTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='GRReversal'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgAuthorTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgAuthorTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgCreateTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgCreateTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgDefFetchSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgDefFetchSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgInitSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgInitSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgItecodUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgItecodUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgPurOrdUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgPurOrdUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgTraNoUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgTraNoUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'MaterialRejectionD' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTMateriMainPgVarCodUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTMateriMainPgVarCodUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='MaterialRejectionD'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'Viewbatchscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTVWBATCMainPgDefFetchSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTVWBATCMainPgDefFetchSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'Viewbatchscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTVWBATCMainPgInitSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTVWBATCMainPgInitSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'Viewbatchscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTVWBATCMainPgLINENOUISr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTVWBATCMainPgLINENOUISr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End


IF NOT EXISTS(SELECT '*' FROM fw_admin_activity_service fai,@fw_req_activity ao Where ao.ActivityName = 'Viewbatchscr' And  fai.ActivityId  = ao.ActivityId And fai.ServiceName  = 'GRTVWBATCMainPgSEARCTrSr' )
BEGIN
	INSERT INTO fw_admin_activity_service ( ActivityId,ActivityName, ServiceName, UpdUser, UpdTime ) 
	SELECT ao.ActivityId, ao.ActivityName   , 'GRTVWBATCMainPgSEARCTrSr' , 'Test' , GETDATE()
	from  @fw_req_activity ao
	where  ao.ActivityName='Viewbatchscr'
End



commit tran