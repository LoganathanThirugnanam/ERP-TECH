    
/********************************************************************************/    
/* Procedure    :GRTGRRCSSTrMLGRrevmSav                                         */    
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
    
CREATE   OR ALTER procedure grtgrrcsstrmlgrrevmsav                                            
 @ctxt_user                     Ctxt_User,    
 @ctxt_service                  Ctxt_Service,    
 @ctxt_role                     Ctxt_Role,    
 @ctxt_ouinstance               Ctxt_OUInstance,    
 @ctxt_language                 Ctxt_Language,    
 @_desc                         Item_Desc,    
 @_gr_adhoc_ite                 _itemtype,    
 @_gr_date                      _date,    
 @_gr_desc                      _desc150,    
 @_gr_folder                    _folder,    
 @_gr_folderml                  _folder,    
 @_gr_name                      _NAme,    
 @_gr_nameml                    _NAme,    
 @_gr_reason_code               _Reasoncode1,    
 @_gr_receipt_no                _document_no,    
 @_gr_ref_doc                   _documentno,    
 @_gr_remarks                   _Remarks,    
 @_gr_rev_date                  _date,    
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
 @_gr_status                    _status,    
 @_gr_supp_code_ml              _document_no,    
 @_gr_supplier_code             _Customer_Id,    
 @_guid                         _GUID,    
 @_hidden1                      _Char500,    
 @_hiddenou                     _Int4,    
 @_hiddentrantype               _varchar1,    
 @_type                         type,    
 @modeflag                      ModeFlag,    
 @fprowno                       rowno,    
 @grrevm_fprowno                rowno,    
 @m_errorid                     int output    
    
as    
Begin    
    
 Set nocount on    
    
 Select @ctxt_user                     =ltrim(rtrim(@ctxt_user))    
 Select @ctxt_service                  =ltrim(rtrim(@ctxt_service))    
 Select @ctxt_role                     =ltrim(rtrim(@ctxt_role))    
 Select @_desc                         =ltrim(rtrim(@_desc))    
 Select @_gr_adhoc_ite                 =ltrim(rtrim(@_gr_adhoc_ite))    
 Select @_gr_desc                      =ltrim(rtrim(@_gr_desc))    
 Select @_gr_folder                    =ltrim(rtrim(@_gr_folder))    
 Select @_gr_folderml                  =ltrim(rtrim(@_gr_folderml))    
 Select @_gr_name                      =ltrim(rtrim(@_gr_name))    
 Select @_gr_nameml                    =ltrim(rtrim(@_gr_nameml))    
 Select @_gr_reason_code               =ltrim(rtrim(@_gr_reason_code))    
 Select @_gr_receipt_no                =ltrim(rtrim(@_gr_receipt_no))    
 Select @_gr_ref_doc                   =ltrim(rtrim(@_gr_ref_doc))    
 Select @_gr_remarks                   =ltrim(rtrim(@_gr_remarks))    
 Select @_gr_rev_fold                  =ltrim(rtrim(@_gr_rev_fold))    
 Select @_gr_rev_itmcode               =ltrim(rtrim(@_gr_rev_itmcode))    
 Select @_gr_rev_receiptfrom           =ltrim(rtrim(@_gr_rev_receiptfrom))    
 Select @_gr_rev_receiptto             =ltrim(rtrim(@_gr_rev_receiptto))    
 Select @_gr_rev_reffr                 =ltrim(rtrim(@_gr_rev_reffr))    
 Select @_gr_rev_refto                 =ltrim(rtrim(@_gr_rev_refto))    
 Select @_gr_rev_status                =ltrim(rtrim(@_gr_rev_status))    
 Select @_gr_rev_type                  =ltrim(rtrim(@_gr_rev_type))    
 Select @_gr_rev_variant               =ltrim(rtrim(@_gr_rev_variant))    
 Select @_gr_status                    =ltrim(rtrim(@_gr_status))    
 Select @_gr_supp_code_ml              =ltrim(rtrim(@_gr_supp_code_ml))    
 Select @_gr_supplier_code             =ltrim(rtrim(@_gr_supplier_code))    
 Select @_guid                         =ltrim(rtrim(@_guid))    
 Select @_hidden1                      =ltrim(rtrim(@_hidden1))    
 Select @_hiddentrantype               =ltrim(rtrim(@_hiddentrantype))    
 Select @_type                         =ltrim(rtrim(@_type))    
 Select @modeflag                      =ltrim(rtrim(@modeflag))    
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
 If @_gr_date='1900-01-01'    
  Select @_gr_date=null    
 If @_gr_desc='~#~'    
  Select @_gr_desc=null    
 If @_gr_folder='~#~'    
  Select @_gr_folder=null    
 If @_gr_folderml='~#~'    
  Select @_gr_folderml=null    
 If @_gr_name='~#~'    
  Select @_gr_name=null    
 If @_gr_nameml='~#~'    
  Select @_gr_nameml=null    
 If @_gr_reason_code='~#~'    
  Select @_gr_reason_code=null    
 If @_gr_receipt_no='~#~'    
  Select @_gr_receipt_no=null    
 If @_gr_ref_doc='~#~'    
  Select @_gr_ref_doc=null    
 If @_gr_remarks='~#~'    
  Select @_gr_remarks=null    
 If @_gr_rev_date='1900-01-01'    
  Select @_gr_rev_date=null    
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
 If @_gr_status='~#~'    
  Select @_gr_status=null    
 If @_gr_supp_code_ml='~#~'    
  Select @_gr_supp_code_ml=null    
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
 If @_type='~#~'    
  Select @_type=null    
 If @modeflag='~#~'    
  Select @modeflag=null    
 If @fprowno=-915    
  Select @fprowno=null    
 If @grrevm_fprowno=-915    
  Select @grrevm_fprowno=null    
    
 --errors mapped    
    
    
DECLARE     
    @ou INT,    
    @purreqno VARCHAR(100),    
    @grdate DATE,    
    @grmothdate DATE,    
    @invno VARCHAR(200),    
    @loid VARCHAR(100),    
    @bu_id VARCHAR(100),    
    @warehuse VARCHAR(200),    
 --@currstk float,    
    @currstk NUMERIC(28,8),    
    @count INT,    
    @i INT    
    
Select @_hidden1 = @_gr_receipt_no    
    
    
SELECT @loid = lo_id,    
       @bu_id = bu_id    
FROM emod_lo_bu_ou_vw WITH (NOLOCK)    
WHERE ou_id = @ctxt_ouinstance    
    
SELECT @ou = PubOUInstId    
FROM depdb..fw_admin_cmp_Intxn_bAse WITH (NOLOCK)    
WHERE SubCompName = 'GR'     
  AND pubcompname = 'ITEMADMN'    
  AND SubOUInstId = @ctxt_ouinstance    
    
SELECT @purreqno = tranno      
FROM rgtd_transaction_vw WITH (NOLOCK)    
WHERE fbp_ref_doc_no = @_gr_receipt_no    
  AND ou = @ctxt_ouinstance    
    
SELECT @grdate = gr_hdr_grdate,    
       @grmothdate = EOMONTH(gr_hdr_grdate)    
FROM gr_hdr_grmain WITH (NOLOCK)    
WHERE gr_hdr_grno = @_gr_receipt_no    
  AND gr_hdr_ouinstid = @ctxt_ouinstance    
    
    
    
if @modeflag in('X','Y','Z','D')    
Begin    
  Select @grrevm_fprowno = @grrevm_fprowno + 1    
end     
     
    
if @modeflag in('Z','Y','X')    
Begin    
    
    
If @_gr_rev_date is null    
Begin    
 RAISERROR('Please select the GR Reversal Date at Row no. %d', 16, 1,@fprowno);    
    RETURN;     
end     
    
If @_gr_rev_date < cast(getdate() as date)    
Begin    
 RAISERROR('Back date reversal is not allowed at Row no. %d', 16, 1,@fprowno);    
    RETURN;     
end     
    
IF NOT EXISTS (    
    SELECT 'X'    
    FROM as_finperiod_dtl WITH (NOLOCK)    
    WHERE finprd_status = 'A'    
      AND ISNULL(@grdate, '') BETWEEN finprd_startdt AND finprd_enddt    
)    
BEGIN    
    RAISERROR('For the GR no. %s financial book is in closed status. Hence GR Reversal cannot be done in Row no. %d.', 16, 1, @_gr_receipt_no, @fprowno);    
    RETURN;    
END    
    
IF NOT EXISTS (    
    SELECT 'X'    
    FROM fcc_prd_close_status WITH (NOLOCK)    
    WHERE status = 'O'    
      AND ISNULL(@grmothdate, '') BETWEEN fcc_finprd_startdt AND fcc_finprd_enddt    
)    
BEGIN    
    RAISERROR('For the GR no.%s abc Financial Monthly Calendar book is in closed status. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @fprowno);    
    RETURN;    
END    
    
IF NOT EXISTS (    
    SELECT 'X'     
    FROM gr_hdr_grmain WITH (NOLOCK)    
    WHERE gr_hdr_grno = @_gr_receipt_no    
      AND gr_hdr_grstatus = 'FM'     
)    
BEGIN    
    RAISERROR('The given GR status is not Freeze Movement.%s',16,1,@_gr_receipt_no);    
    RETURN;    
END    
    
    
SELECT @invno = A.tran_no     
FROM sin_invoice_hdr A WITH (NOLOCK)    
INNER JOIN sin_item_dtl B WITH (NOLOCK)    
    ON A.tran_ou = B.tran_ou    
    AND A.tran_no = B.tran_no    
    AND A.tran_status IN ('FSH','AUT')    
WHERE B.ref_doc_no = @_gr_receipt_no     
    
IF EXISTS (    
    SELECT 'X'    
    FROM sin_invoice_hdr A WITH (NOLOCK)    
    INNER JOIN sin_item_dtl B WITH (NOLOCK)    
        ON A.tran_ou = B.tran_ou    
        AND A.tran_no = B.tran_no    
        AND A.tran_status IN ('FSH')    
    WHERE B.ref_doc_no = @_gr_receipt_no    
)    
BEGIN    
    RAISERROR('For the GR no.%s Invoice %s already raised (Fresh Status). Hence GR Reversal cannot be done in Row no.%d',16,1,@_gr_receipt_no,@invno,@fprowno)    
    RETURN    
END    
    
IF EXISTS (    
    SELECT 'X'    
    FROM sin_invoice_hdr A WITH (NOLOCK)    
    INNER JOIN sin_item_dtl B WITH (NOLOCK)    
        ON A.tran_ou = B.tran_ou    
        AND A.tran_no = B.tran_no    
        AND A.tran_status IN ('AUT')    
    WHERE B.ref_doc_no = @_gr_receipt_no    
)    
BEGIN    
    RAISERROR('For the GR no.%s Invoice %s already raised (Authorized Status). Hence GR Reversal cannot be done in Row no.%d',16,1,@_gr_receipt_no,@invno,@fprowno)    
    RETURN    
END     
    
IF EXISTS (    
    SELECT 'X'    
    FROM rct_purchase_det WITH (NOLOCK)    
    JOIN rct_purchase_hdr WITH (NOLOCK)    
      ON rcgh_receipt_no = rcgd_receipt_no    
        AND rcgh_ouinstid = rcgd_ouinstid    
        AND rcgh_status = 'AU'    
    WHERE rcgd_receipt_no = @purreqno     
    AND rcgd_stock_status <> 'ACC'    
)    
BEGIN    
    RAISERROR('The stock status of the purchase request is not active.%s',16,1,@purreqno)    
    RETURN    
END      
    
IF EXISTS (    
    SELECT 'X'    
    FROM GR_INS_INSPECTION WITH (NOLOCK)    
    JOIN mpqx_ir_inspec_req WITH (NOLOCK)    
        ON gr_ins_grno = ir_ref_doc_no    
        AND gr_ins_grlineno = ir_ref_line_no    
    JOIN mpqx_iph_iplan_hdr WITH (NOLOCK)    
        ON iph_ouinstance = ir_ouinstance    
        AND iph_ip_id = ir_ip_id    
        AND iph_status = '1'    
    WHERE gr_ins_grno = @_gr_receipt_no    
)    
BEGIN    
    RAISERROR('GR inspection status is Active. Please change it to Inactive.%s',16,1,@_gr_receipt_no)    
    RETURN    
END     
    
    
if exists ( Select 'X' from tstl_tran_hdr with(nolock)     
where tran_no = @_gr_receipt_no    
and tran_type ='PUR_GR'    
and tran_ou = @ctxt_ouinstance    
and tax_type ='GST')    
begin    
raiserror('Please check the tax settlements.%s',16,1,@_gr_receipt_no)    
return    
end     
    
    
If exists (Select 'X' from gr_hdr_grmain with(nolock)     
where gr_hdr_grno = @_gr_receipt_no    
and gr_hdr_ouinstid = @ctxt_ouinstance    
and gr_hdr_orderdoc ='SC')    
begin    
raiserror('The given GR Reference is Subcontract order.%s',16,1,@_gr_receipt_no)    
return    
end    
    
 Select @i =1    
    
 Drop table if exists #gritem    
 Create table #gritem    
 (    
 line_no  INT IDENTITY(1, 1),    
 grno   varchar(100),    
 itemcode  varchar(100),    
 variantcode varchar(100)    
 )    
    
 insert into  #gritem (grno,itemcode,variantcode)    
 select gr_lin_grno,gr_lin_itemcode,gr_lin_itemvariant    
 from gr_lin_details(nolock)    
 where gr_lin_grno = @_gr_receipt_no    
    
 Select @count = Count(*) from #gritem    
    
WHILE @i <= @count    
Begin    
    
Select @_gr_rev_itmcode = itemcode,    
    @_gr_rev_variant = variantcode    
FROM   #gritem    
WHERE  line_no = @i     
    
    
Select @currstk = stock_uom_qty,    
@warehuse = warehouse    
from  rgtd_transaction_vw with(nolock)    
INNER JOIN skm_ou_wh_zb_stock_vw with(nolock)    
ON  stk_item_code  = itemcode    
AND stk_variant_code = variantcode    
AND stk_warehouse  = warehouse     
AND stock_uom_qty >= stk_quantity    
where fbp_ref_doc_no = @_gr_receipt_no    
    
  
IF EXISTS (    
    SELECT 'X'     
    FROM rgtd_transaction_vw WITH (NOLOCK)    
    INNER JOIN skm_ou_wh_zb_stock_vw WITH (NOLOCK) ON stk_item_code = itemcode    
                                                    AND stk_variant_code = variantcode    
                                                    AND stk_warehouse = warehouse    
                                                    AND stock_uom_qty >= stk_quantity    
    WHERE fbp_ref_doc_no = @_gr_receipt_no   
 and stk_stock_status='ACC'--priya  
)    
BEGIN     
    DECLARE @currstk_str VARCHAR(50) = CAST(@currstk AS VARCHAR(50));    
    RAISERROR('For the GR no.%s the Item Code %s required Stock not available in the GR warehouse %s, Current stock is %s. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @warehuse, @currstk_str, @fprowno);    
    RETURN;    
END    
    
If exists (Select 'X' from  rgtd_transaction_vw with(nolock)    
INNER JOIN skm_ou_wh_zb_stock_vw with(nolock)    
ON  stk_item_code  = itemcode    
AND stk_variant_code = variantcode    
AND stk_warehouse  = warehouse    
AND stk_stock_status ='ACC'     
AND stock_uom_qty >= stk_quantity    
where fbp_ref_doc_no = @_gr_receipt_no)    
Begin     
raiserror('For the GR no.%s the Item Code %s required Stock is not in Accepted status in the GR warehouse %s. Hence GR Reversal cannot be done in Row no.%d',16,1,@_gr_receipt_no,@_gr_rev_itmcode ,@warehuse, @fprowno)    
return    
end     
     
if not exists (Select 'x' from itm_iou_itemvarhdr with(nolock)    
where iou_itemcode = @_gr_rev_itmcode    
and iou_variantcode = isnull(@_gr_rev_variant,'##')    
and iou_ou =@ou     
and iou_bu = @bu_id    
and iou_lo = @loid)    
Begin    
 raiserror('For the GR no.%s Item Code %s is non-stock able item. Hence GR Reversal cannot be done in Row no. %d', 16, 1, @_gr_receipt_no,@_gr_rev_itmcode , @fprowno);    
    RETURN;    
    
end    
    
    
    
DROP TABLE IF EXISTS #grrevese;    
SELECT tranno,    
       trandate,    
       warehouse,    
       fbp_ref_doc_no,    
       itemcode,    
       variantcode,    
       ibu_costingmtd,    
       stock_uom_qty,    
       value,    
       rate,    
       @_gr_receipt_no AS 'grno'    
INTO #grrevese    
FROM rgtd_transaction_vw WITH (NOLOCK)    
LEFT JOIN itm_ibu_itemvarhdr WITH (NOLOCK) ON ibu_itemcode = itemcode AND ibu_variantcode = variantcode    
WHERE fbp_ref_doc_no = @_gr_receipt_no;    
    
IF NOT EXISTS (SELECT 'X' FROM #grrevese WITH (NOLOCK)    
               WHERE grno = @_gr_receipt_no    
                 AND ibu_costingmtd IN ('WA','SC'))    
BEGIN    
    RAISERROR('For the GR no.%s Item Code %s is not Standard Cost/Weighted Average Item. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @fprowno);    
    RETURN;    
END    
    
IF NOT EXISTS (SELECT 'X' FROM gr_lin_details WITH (NOLOCK)    
               WHERE gr_lin_grno = @_gr_receipt_no    
                 AND gr_lin_ouinstid = @ctxt_ouinstance    
                 AND gr_lin_instype = 'NN'    
                 AND gr_lin_matchtype = '3G')    
BEGIN    
    RAISERROR('For the GR no.%s Item Code %s Matching Type is not 3-way GR and inspection type is not none. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @fprowno);    
    RETURN;    
END    
    
IF EXISTS (SELECT 'X' FROM grn_hdr_grnmain WITH (NOLOCK)    
           JOIN grn_lin_details WITH (NOLOCK) ON grn_lin_grnno = grn_hdr_grnno AND grn_lin_ouinstid = grn_hdr_ouinstid    
           WHERE grn_lin_grno = @_gr_receipt_no)    
BEGIN    
    RAISERROR('For the GR no.%s for the Item Code %s already GR Return transaction available. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @fprowno);    
    RETURN;    
END    
    
IF EXISTS (SELECT 'X' FROM itm_ibu_itemvarhdr WITH (NOLOCK)    
           WHERE ibu_itemcode = @_gr_rev_itmcode    
             AND ibu_variantcode = ISNULL(@_gr_rev_variant,'##')    
             AND ibu_bu = @bu_id    
             AND ibu_lo = @loid    
             AND (ibu_lotnoctrl = 1 OR ibu_srnoctrl = 1))    
BEGIN    
    RAISERROR('For the GR no. %s Item code %s is not a Non-Controlled Item. Hence Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @fprowno);    
    RETURN;    
END    
    
IF EXISTS (SELECT 'X' FROM issue_gr_map_hdr WITH (NOLOCK)    
           JOIN issue_gr_map_dtl WITH (NOLOCK) ON imgh_issue_no = imgd_issue_no AND imgh_ouid = imgd_ouid AND imgh_iss_lineno = imgd_iss_lineno AND imgh_tran_type = imgd_tran_type    
           WHERE imgd_gr_no = @_gr_receipt_no)    
BEGIN    
    RAISERROR('For the GR no.%s for the Item Code %s issue has been done. Hence GR Reversal cannot be done in Row no.%d', 16, 1, @_gr_receipt_no, @_gr_rev_itmcode, @fprowno);    
    RETURN;    
END    
    
SELECT @i = @i + 1;    
    
    
end    
    
 ALTER TABLE fbp_posted_trn_dtl NOCHECK CONSTRAINT fbp_Check_amount;    
    
IF EXISTS (SELECT 'X' FROM gr_hdr_grmain WITH (NOLOCK)    
           WHERE gr_hdr_grno = @_gr_receipt_no    
             AND gr_hdr_grstatus = 'FM')    
BEGIN    
create table #GR_delete (response varchar(255))    
 insert into #GR_delete    
    EXEC GR_delete    
        @ctxt_ouinstance,    
        @_gr_receipt_no,    
        'FR';    
END    
    
ALTER TABLE fbp_posted_trn_dtl CHECK CONSTRAINT fbp_Check_amount;    
  /*  
IF EXISTS (SELECT 'X' FROM #grrevese WITH (NOLOCK)    
           WHERE grno = @_gr_receipt_no    
             AND ibu_costingmtd = 'WA')    
BEGIN    
    UPDATE A    
    SET svw_cur_quantity = A.svw_cur_quantity - B.stock_uom_qty,    
        svw_cur_value = A.svw_cur_value - B.value    
    FROM skm_stockval_wtdavg A    
    INNER JOIN #grrevese B ON A.svw_item_code = B.itemcode    
                            AND A.svw_variant_code = B.variantcode    
                            AND A.svw_wh_code = B.warehouse;    
    
    UPDATE A    
    SET svw_rate = ROUND(A.svw_cur_value / A.svw_cur_quantity, 4)    
    FROM skm_stockval_wtdavg A    
    INNER JOIN #grrevese B ON A.svw_item_code = B.itemcode    
  AND A.svw_variant_code = B.variantcode    
                          AND A.svw_wh_code = B.warehouse    
    WHERE A.svw_cur_quantity <> 0;    
END    
 */   
INSERT INTO Zrit_gr_rever_his    
(    
    ou,    
    grno,    
    grdate,    
    refdoctype,    
    itemcode,    
    variantcode,    
    uom,    
    grrate,    
    grqty,    
    grvalue,    
    warehouse,    
    costmeth,    
 grfolder  ,    
 grtype   ,    
 grstatus  ,    
 suppcode  ,    
 suppname  ,    
 reascode  ,    
 descrp   ,    
 revsdate  ,    
 remarks   ,    
    created_by,    
    created_date,    
    modified_by,    
    modified_date    
)    
SELECT    
    gr_hdr_ouinstid,    
    gr_hdr_grno,    
    gr_hdr_grdate,    
    gr_hdr_orderdoc,    
    gr_lin_itemcode,    
    gr_lin_itemvariant,    
    gr_lin_uom,    
    gr_lin_po_cost, --grrate    
    gr_lin_receivedqty, --grqty    
    gr_hdr_totalvalue, --grvalue    
    gr_wm_whcode, --warehouse    
    ibu_costingmtd, --costmeth    
 gr_hdr_grfolder  ,    
 gr_hdr_grtype   ,    
 gr_hdr_grstatus  ,    
 gr_hdr_suppcode  ,    
 supplier_name,    
 @_gr_reason_code  ,    
 @_gr_desc   ,    
 @_gr_rev_date  ,    
 @_gr_remarks   ,    
    @ctxt_user,    
    GETDATE(),    
    NULL,    
    NULL    
FROM    
    gr_hdr_grmain WITH (NOLOCK)    
    INNER JOIN gr_lin_details grline WITH (NOLOCK)     
 ON gr_hdr_grno = gr_lin_grno AND gr_hdr_ouinstid = gr_lin_ouinstid    
    LEFT JOIN gr_wm_whmove wm WITH (NOLOCK)     
 ON wm.gr_wm_ouinstid = grline.gr_lin_ouinstid    
    AND wm.gr_wm_grno = grline.gr_lin_grno    
    AND wm.gr_wm_grlineno = grline.gr_lin_grlineno    
    LEFT JOIN itm_ibu_itemvarhdr WITH (NOLOCK)     
 ON ibu_itemcode = gr_lin_itemcode    
    AND ibu_variantcode = gr_lin_itemvariant    
    AND ibu_bu = @bu_id    
    AND ibu_lo = @loid    
 inner join supp_supdtls_vw WITH(NOLOCK)    
 ON supplier_code = gr_hdr_suppcode    
WHERE    
    gr_lin_ouinstid = @ctxt_ouinstance    
    AND gr_lin_grno = @_gr_receipt_no;    
    
End    
    
    
 Select      
  @_guid                         '_guid',    
  @_hidden1                      '_hidden1',    
  @_hiddenou                     '_hiddenou',    
  @_hiddentrantype               '_hiddentrantype',    
  @fprowno +1                     'fprowno',    
  @grrevm_fprowno             'grrevm_fprowno'    
    
 --output parameters    
 /*    
 Select      
  _guid                         '_guid',    
  _hidden1                      '_hidden1',    
  _hiddenou                     '_hiddenou',    
  _hiddentrantype               '_hiddentrantype',    
  fprowno                       'fprowno',    
  grrevm_fprowno                'grrevm_fprowno'    
    
 */    
 Set nocount off    
End    