  
/********************************************************************************/  
/* Procedure    :GRTGRRsearTrMLGRrevmRef                                        */  
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
/********************************************************************************/  
/* Modified by  :Priya                                                               */  
/* Date         : 2024-03-08                                                               */  
/* Description  :JPE-2595                                                              */  
/********************************************************************************/   
  
Create   or alter procedure grtgrrseartrmlgrrevmref                                          
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
 If @_desc='~#~' or @_desc=''  
  Select @_desc=null  
 If @_gr_adhoc_ite='~#~'   or @_gr_adhoc_ite =''  
  Select @_gr_adhoc_ite=null  
 If @_gr_folder='~#~' or @_gr_folder=''  
  Select @_gr_folder=null  
 If @_gr_folder='~#~' or @_gr_folder='ALL'  
  Select @_gr_folder='%'  
 If @_gr_name='~#~' or @_gr_name =''  
  Select @_gr_name=null  
 If @_gr_rev_date_fr='1900-01-01' or @_gr_rev_date_fr =''  
  Select @_gr_rev_date_fr=null  
 If @_gr_rev_date_to='1900-01-01' or @_gr_rev_date_to=''  
  Select @_gr_rev_date_to=null  
 If @_gr_rev_datefr='1900-01-01' or @_gr_rev_datefr =''  
  Select @_gr_rev_datefr=null  
 If @_gr_rev_dateto='1900-01-01' or @_gr_rev_dateto=''  
  Select @_gr_rev_dateto=null  
 If @_gr_rev_fold='~#~' or @_gr_rev_fold = ''  
  Select @_gr_rev_fold=null  
 If @_gr_rev_fold='~#~' or @_gr_rev_fold = 'ALL'  
  Select @_gr_rev_fold='%'  
 If @_gr_rev_itmcode='~#~' or @_gr_rev_itmcode =''  
  Select @_gr_rev_itmcode=null  
 If @_gr_rev_receiptfrom='~#~' or @_gr_rev_receiptfrom =''  
  Select @_gr_rev_receiptfrom=null  
 If @_gr_rev_receiptto='~#~' or @_gr_rev_receiptto =''  
  Select @_gr_rev_receiptto=null  
 If @_gr_rev_reffr='~#~' or @_gr_rev_reffr =''  
  Select @_gr_rev_reffr=null  
 If @_gr_rev_refto='~#~' or @_gr_rev_refto=''  
  Select @_gr_rev_refto=null  
 If @_gr_rev_status='~#~' or @_gr_rev_status=''  
  Select @_gr_rev_status=null  
 If @_gr_rev_status is null or @_gr_rev_status=''  
  Select @_gr_rev_status='%'  
 If @_gr_rev_type='~#~' or @_gr_rev_type =''  
  Select @_gr_rev_type=null  
 If @_gr_rev_type='~#~' or @_gr_rev_type ='ALL'  
  Select @_gr_rev_type='%'  
 If @_gr_rev_variant='~#~' or @_gr_rev_variant=''  
  Select @_gr_rev_variant=null  
 If @_gr_supplier_code='~#~' or @_gr_supplier_code=''  
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
  
  
   
 Declare @lo_id     udd_buid,  
   @bu_id     udd_buid,  
   @status     udd_desc255  
SELECT  
    @lo_id = lo,  
    @bu_id = bu  
FROM  
    scm_emodel_vw (NOLOCK)  
WHERE  
    ou = @ctxt_ouinstance;  
  
 Select @status = paramcode  
 from component_metadata_table c (NOLOCK)  
 where c.componentname = 'GR'  
    AND c.paramcategory = 'META'  
    AND c.paramtype = 'DOC_STATUS'  
    AND c.paramdesc = @_gr_rev_status  
    AND c.langid = @ctxt_language  
  
  
SELECT DISTINCT  
    @_guid AS '_guid',  
    @_hidden1 AS '_hidden1',  
    @_hiddenou AS '_hiddenou',  
    @_hiddentrantype AS '_hiddentrantype',  
    CONVERT(nvarchar(10), gr_hdr_grdate, 120) AS '_gr_date',  
    NULL AS '_gr_desc',  
    RTRIM(gr_hdr_grfolder) AS '_gr_folderml',  
    RTRIM(supplier_name) AS '_gr_nameml',  
    NULL AS '_gr_reason_code',  
    RTRIM(gr_hdr_grno) AS '_gr_receipt_no',  
    RTRIM(a.paramdesc) AS '_gr_ref_doc',  
    NULL AS '_gr_remarks',  
    NULL AS '_gr_rev_date',  
    RTRIM(c.paramdesc) AS '_gr_status',  
    RTRIM(gr_hdr_suppcode) AS '_gr_supp_code_ml',  
    RTRIM(b.paramdesc) AS '_type'  
FROM  
    gr_hdr_grmain (NOLOCK)  
LEFT OUTER JOIN  
    po_pomas_pur_order_hdr po (NOLOCK) ON (po.pomas_pono = gr_hdr_orderno  
                                        AND po.pomas_poamendmentno = gr_hdr_orderamendno  
                                        AND po.pomas_poou = gr_hdr_orderou)  
INNER JOIN  
    gr_lin_details (NOLOCK) ON gr_lin_ouinstid = gr_hdr_ouinstid  
             AND gr_lin_grno = gr_hdr_grno  
INNER JOIN  
    supp_supdtls_vw (NOLOCK) ON supplier_code = gr_hdr_suppcode  
INNER JOIN  
    component_metadata_table a (NOLOCK) ON a.componentname = 'GR'  
                                       AND a.paramcategory = 'CSENUM'  
                                       AND a.paramtype = 'REF_DOC'  
                                       AND a.paramcode = gr_hdr_orderdoc  
                                       AND a.langid = @ctxt_language  
INNER JOIN  
    component_metadata_table b (NOLOCK) ON b.componentname = 'GR'  
                                       AND b.paramcategory = 'META'  
                                       AND b.paramtype = 'DOC_TYPE'  
                                       AND b.paramcode = gr_hdr_grtype  
                                       AND b.langid = @ctxt_language  
INNER JOIN  
    component_metadata_table c (NOLOCK) ON c.componentname = 'GR'  
                                       AND c.paramcategory = 'META'  
                                       AND c.paramtype = 'DOC_STATUS'  
                                       AND c.paramcode = gr_hdr_grstatus  
                                       AND c.langid = @ctxt_language  
WHERE  
    gr_hdr_ouinstid = @ctxt_ouinstance  
    AND gr_hdr_grno BETWEEN ISNULL(@_gr_rev_receiptfrom, gr_hdr_grno) AND ISNULL(@_gr_rev_receiptto, gr_hdr_grno)  
    AND gr_hdr_grtype NOT IN ('AC')  
    AND gr_hdr_grdate BETWEEN ISNULL(@_gr_rev_datefr, gr_hdr_grdate) AND ISNULL(@_gr_rev_dateto, gr_hdr_grdate)  
    AND gr_hdr_grstatus IN ('FM')  
    AND (ISNULL(gr_hdr_grfolder, '%')) LIKE ISNULL(@_gr_folder, '%')  
    AND gr_hdr_orderno BETWEEN ISNULL(@_gr_rev_reffr, gr_hdr_orderno) AND ISNULL(@_gr_rev_refto, gr_hdr_orderno)  
    AND gr_hdr_orderdate BETWEEN ISNULL(@_gr_rev_date_fr, gr_hdr_orderdate) AND ISNULL(@_gr_rev_date_to, gr_hdr_orderdate)  
    AND (ISNULL(gr_hdr_orderfolder, '%')) LIKE ISNULL(@_Gr_rev_fold, '%')  
    AND gr_hdr_suppcode LIKE ISNULL(@_GR_supplier_code, '%')  
    AND loid = @lo_id  
    AND supplier_code = gr_hdr_suppcode  
    AND supplier_name LIKE ISNULL(@_GR_Name, '%')  
    AND gr_hdr_ouinstid = gr_lin_ouinstid  
    AND gr_hdr_grno = gr_lin_grno  
    AND gr_hdr_grstatus LIKE @status  
    AND gr_hdr_grtype LIKE @_GR_rev_type  
    AND ISNULL(gr_lin_itemcode, '%') LIKE ISNULL(@_Gr_rev_itmcode, '%')  
    AND ISNULL(gr_lin_itemvariant, '%') LIKE ISNULL(@_Gr_rev_variant, '%')  
    AND ISNULL(gr_lin_itemdesc, '%') LIKE ISNULL(@_Desc, '%')  
    AND ISNULL(gr_lin_adhocitemcls, '%') LIKE ISNULL(@_gr_adhoc_ite, '%');  
  
  
 --Select    
 -- @_guid                         '_guid',  
 -- @_hidden1                      '_hidden1',  
 -- @_hiddenou                     '_hiddenou',  
 -- @_hiddentrantype               '_hiddentrantype',  
 -- @_gr_date                      '_gr_date',  
 -- @_gr_desc                      '_gr_desc',  
 -- @_gr_folderml                  '_gr_folderml',  
 -- @_gr_nameml                    '_gr_nameml',  
 -- @_gr_reason_code               '_gr_reason_code',  
 -- @_gr_receipt_no                '_gr_receipt_no',  
 -- @_gr_ref_doc                   '_gr_ref_doc',  
 -- @_gr_remarks                   '_gr_remarks',  
 -- @_gr_rev_date                  '_gr_rev_date',  
 -- @_gr_status                    '_gr_status',  
 -- @_gr_supp_code_ml              '_gr_supp_code_ml',  
 -- @_type                         '_type'  
  
  
 --output parameters  
 /*  
 Select    
  _guid                         '_guid',  
  _hidden1                      '_hidden1',  
  _hiddenou                     '_hiddenou',  
  _hiddentrantype               '_hiddentrantype',  
  _gr_date                      '_gr_date',  
  _gr_desc '_gr_desc',  
  _gr_folderml  '_gr_folderml',  
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
  