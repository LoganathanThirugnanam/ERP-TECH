  
/********************************************************************************/  
/* Procedure    :GRTGRRGRrevmReaCodUIMLGRrevmRef                                */  
/* Description  :                                                               */  
/********************************************************************************/  
/* Customer     :MODEL                                                          */  
/* Project      :MODEL                                                          */  
/********************************************************************************/  
/* Referenced   :                                                               */  
/* Tables       :                                                               */  
/********************************************************************************/  
/* Development History                                                          */  
/********************************************************************************/  
/* Author       :Harivignesh A                                                  */  
/* Rtrack id :RMC_FIN_16              */  
/* Date         :20/2/2024 6:07:10 PM                                           */  
/********************************************************************************/  
/* Modification History                                                         */  
/* Modified by  :Priya                                                               */  
/* Date         : 2024-03-08                                                               */  
/* Description  :JPE-2595                                                              */  
/********************************************************************************/ 
  
Create   OR ALTER procedure grtgrrgrrevmreacoduimlgrrevmref                                          
 @ctxt_user                     Ctxt_User,  
 @ctxt_service                  Ctxt_Service,  
 @ctxt_role                     Ctxt_Role,  
 @ctxt_ouinstance               Ctxt_OUInstance,  
 @ctxt_language                 Ctxt_Language,  
 @_desc                         Item_Desc,  
 @_gr_adhoc_ite                 _itemtype,  
 @_gr_folder                    _folder,  
 @_gr_name                      _NAme,  
 @_gr_rev_date_fr               _date,  
 @_gr_rev_date_to               _date,  
 @_gr_rev_datefr                _date,  
 @_gr_rev_dateto                _date,  
 @_gr_rev_fold                  _folder,  
 @_gr_rev_itmcode               _ItemCode,  
 @_gr_rev_receiptfrom           _document_no,  
 @_gr_rev_receiptto             _document_no,  
 @_gr_rev_reffr                 _document_no,  
 @_gr_rev_refto                 _document_no,  
 @_gr_rev_status                _status,  
 @_gr_rev_type                  _DocumentType,  
 @_gr_rev_variant               _Variant,  
 @_gr_supplier_code             _Customer_Id,  
 @_guid                         _GUID,  
 @_hidden1                      _Char500,  
 @_hiddenou                     _Int4,  
 @_hiddentrantype               _varchar1,  
 @m_errorid                     int output  
  
as  
Begin  
  
 Set nocount on  
  
 Select @ctxt_user                     =ltrim(rtrim(@ctxt_user))  
 Select @ctxt_service                  =ltrim(rtrim(@ctxt_service))  
 Select @ctxt_role                     =ltrim(rtrim(@ctxt_role))  
 Select @_desc                         =ltrim(rtrim(@_desc))  
 Select @_gr_adhoc_ite                 =ltrim(rtrim(@_gr_adhoc_ite))  
 Select @_gr_folder                    =ltrim(rtrim(@_gr_folder))  
 Select @_gr_name                      =ltrim(rtrim(@_gr_name))  
 Select @_gr_rev_fold                  =ltrim(rtrim(@_gr_rev_fold))  
 Select @_gr_rev_itmcode               =ltrim(rtrim(@_gr_rev_itmcode))  
 Select @_gr_rev_receiptfrom           =ltrim(rtrim(@_gr_rev_receiptfrom))  
 Select @_gr_rev_receiptto             =ltrim(rtrim(@_gr_rev_receiptto))  
 Select @_gr_rev_reffr                 =ltrim(rtrim(@_gr_rev_reffr))  
 Select @_gr_rev_refto                 =ltrim(rtrim(@_gr_rev_refto))  
 Select @_gr_rev_status                =ltrim(rtrim(@_gr_rev_status))  
 Select @_gr_rev_type                  =ltrim(rtrim(@_gr_rev_type))  
 Select @_gr_rev_variant               =ltrim(rtrim(@_gr_rev_variant))  
 Select @_gr_supplier_code             =ltrim(rtrim(@_gr_supplier_code))  
 Select @_guid                         =ltrim(rtrim(@_guid))  
 Select @_hidden1                      =ltrim(rtrim(@_hidden1))  
 Select @_hiddentrantype               =ltrim(rtrim(@_hiddentrantype))  
 -- @m_errorid should be 0 to Indicate Success  
 Set @m_errorid = 0  
  
  
 --null checking  
 If @ctxt_user='~#~'  
  Select @ctxt_user=null  
 If @ctxt_service='~#~'  
  Select @ctxt_service=null  
 If @ctxt_role='~#~'  
  Select @ctxt_role=null  
 If @ctxt_ouinstance=-915  
  Select @ctxt_ouinstance=null  
 If @ctxt_language=-915  
  Select @ctxt_language=null  
 If @_desc='~#~'  
  Select @_desc=null  
 If @_gr_adhoc_ite='~#~'  
  Select @_gr_adhoc_ite=null  
 If @_gr_folder='~#~'  
  Select @_gr_folder=null  
 If @_gr_name='~#~'  
  Select @_gr_name=null  
 If @_gr_rev_date_fr='1900-01-01'  
  Select @_gr_rev_date_fr=null  
 If @_gr_rev_date_to='1900-01-01'  
  Select @_gr_rev_date_to=null  
 If @_gr_rev_datefr='1900-01-01'  
  Select @_gr_rev_datefr=null  
 If @_gr_rev_dateto='1900-01-01'  
  Select @_gr_rev_dateto=null  
 If @_gr_rev_fold='~#~'  
  Select @_gr_rev_fold=null  
 If @_gr_rev_itmcode='~#~'  
  Select @_gr_rev_itmcode=null  
 If @_gr_rev_receiptfrom='~#~'  
  Select @_gr_rev_receiptfrom=null  
 If @_gr_rev_receiptto='~#~'  
  Select @_gr_rev_receiptto=null  
 If @_gr_rev_reffr='~#~'  
  Select @_gr_rev_reffr=null  
 If @_gr_rev_refto='~#~'  
  Select @_gr_rev_refto=null  
 If @_gr_rev_status='~#~'  
  Select @_gr_rev_status=null  
 If @_gr_rev_type='~#~'  
  Select @_gr_rev_type=null  
 If @_gr_rev_variant='~#~'  
  Select @_gr_rev_variant=null  
 If @_gr_supplier_code='~#~'  
  Select @_gr_supplier_code=null  
 If @_guid='~#~'  
  Select @_guid=null  
 If @_hidden1='~#~'  
  Select @_hidden1=null  
 If @_hiddenou=-915  
  Select @_hiddenou=null  
 If @_hiddentrantype='~#~'  
  Select @_hiddentrantype=null  
  
 --errors mapped  
  
 --output parameters  
 /*  
 Select    
  _guid                         '_guid',  
  _hidden1                      '_hidden1',  
  _hiddenou                     '_hiddenou',  
  _hiddentrantype               '_hiddentrantype',  
  _gr_date                      '_gr_date',  
  _gr_desc                      '_gr_desc',  
  _gr_folderml                  '_gr_folderml',  
  _gr_nameml                    '_gr_nameml',  
  _gr_reason_code               '_gr_reason_code',  
  _gr_receipt_no                '_gr_receipt_no',  
  _gr_ref_doc                   '_gr_ref_doc',  
  _gr_remarks                   '_gr_remarks',  
  _gr_rev_date                  '_gr_rev_date',  
  _gr_status                    '_gr_status',  
  _gr_supp_code_ml              '_gr_supp_code_ml',  
  _type                         '_type'  
  
 */  
 Set nocount off  
End  
  