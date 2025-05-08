
/*$File_version=MS4.3.0.15$*/  
/******************************************************************************************  
File Name   : sto_crmn_sp_sbt_ml.sql  
Version   : 4.0.0.0  
Procedure Name  : sto_crmn_sp_sbt_ml  
Purpose    :   
Author    : R.Palani Rajan  
Date     : 04 Dec 2002  
Component Name  : STO  
Method Name  : sto_crmn_m_sbt_ml  
  
Objects Referred  
 Object Name  Object Type  Operation  
       (Insert/Update/Delete/Select/Exec)  
Modification Details  
 Modified By  Modified On  Remarks  
 Indu Ram     29/04/2004   STODMS41SYTST_000014  
******************************************************************************************/   
/*  
Modified by :   Modified date :  Remarks :   
Balaji.V.   27 mar 2004   STODMS41SYTST_000010  
Niranjan   06 feb 2006   STOBGL_000002  
Niranjan   08 nov 2006   STODMS412AT_000104(pp-merger)  
Niranjan   13 /11 /06   STODMS412AT_000107  
kandavel s   12/04/2007   ITEMADMNDMS412AT_000441  
Anitha N   19/04/2007   STODMS412AT_000117  
Anitha N   26/06/2007   STODMS412AT_000121  
Damodharan. R  28 Feb 2008   DMS412AT_STO_00010  
Veangadakrishnan R 19/05/2008   DMS412AT_STO_00030  
Thiruvengadam.S  21/08/2009   ES_STO_00032  
Kumar.S    28/06/2013   ES_STO_00071  
Nagarajan J   28/10/2013   ES_NSO_00696:13H120_NSO_00006  
Nagarajan J   09/12/2013   ES_STO_00087  
Rani B    16/10/2017   HAL-183  
Britto. A   20/04/2018   EBS-1210   
Indumathi M   09/11/2020   EPE-26565 
mugesh s      08/08/2022   JPE-1684
Sai kumar Reddy P       13/09/2022     JPE-1962
mugesh                  03/10/2022     PEPS-2231
Vijay Shree S			27/01/2023	   PSSR-450
Mabel Rita L			01/02/2024	   RJPEE-517 

*/  
  
CREATE or alter procedure sto_crmn_sp_sbt_ml      
     @atpquantity  udd_quantity  ,  
     @attr_uom   udd_uomcode  ,  
     @availabledate  udd_date  ,  
     @ctxt_language  udd_ctxt_language  ,  
     @ctxt_ouinstance   udd_ctxt_ouinstance  ,  
     @ctxt_service  udd_ctxt_service  ,  
     @ctxt_user   udd_ctxt_user  ,  
     @docty    udd_docty  ,  
     @guid    udd_guid  ,  
     @item_code   udd_itemcode  ,  
     @item_var_desc  udd_item_desc  ,  
     @modeflag   udd_modeflag  ,  
     @notypeno   udd_notypeno  ,  
     @ord_line_no  udd_lineno  ,  
     @ord_priority  udd_priority  ,  
     @order_date  udd_date  ,  
     @ordno    udd_documentno  ,  
     @ordpml   udd_ouinstname  ,  
     @promiseddate  udd_date  ,  
     @promiseddateml udd_date  ,  
     @receivingpoint udd_ouinstname  ,  
     @recpml_hdn  udd_ouinstid  ,  
     @recwhcode   udd_warehouse  ,  
     @recwhml   udd_warehouse  ,  
     @reqddate   udd_date  ,  
     @reqddatehdr  udd_date  ,  
     @reqdqty   udd_quantity  ,  
     @requiring_ou  udd_ouinstid  ,  
     @sched_typeml  udd_schedtype  ,  
     @shppoint_hdn  udd_ouinstid  ,  
     @shpwhml   udd_warehouse  ,  
     @statusresatp  udd_flag  ,  
     @stocstatus  udd_status  ,  
     @stocstatusml_hdn  udd_code  ,  
     @str_no   udd_documentno  ,  
     @transactiontype   udd_transactiontype  ,  
     @variant   udd_variant  ,  
     @fprowno   udd_rowno  ,  
 --code has been added for ES_STO_00032 begins   
  @carriercode  udd_carriercode,  
  @salechannel  udd_code,  
 --code has been added for ES_STO_00032 ends    
  @hdndocty         udd_docty,--code added for id: EBS-1210  
  @mrsto_ou         udd_hiddencontrol,--code added for id: EBS-1210  
  @comments          udd_desc255, --code added for caseid: EPE-26567  
     @m_errorid   udd_int OUTPUT --to return execution status  
AS  
BEGIN  
 SET NOCOUNT ON  
 DECLARE @rowno        udd_rowno --DMS412AT_STO_00010  
 /*code added for DTS ID : DMS412AT_STO_00030 starts here*/  
 DECLARE --@whou         udd_ctxt_ouinstance,  
         @receivingwh  udd_warehouse  
 /*code added for DTS ID : DMS412AT_STO_00030 ends here*/  
   
 DECLARE @stktransfer_source      udd_sequence --ES_STO_00071  
   
 SELECT @m_errorid = 0  
 IF @atpquantity = -915  
     SELECT @atpquantity = NULL  
   
 SELECT @attr_uom = LTRIM(RTRIM(@attr_uom))  
 IF @attr_uom = '~#~'  
     SELECT @attr_uom = NULL  
   
 IF @availabledate = '01/01/1900'  
     SELECT @availabledate = NULL  
   
 IF @ctxt_language = -915  
     SELECT @ctxt_language = NULL  
   
 IF @ctxt_ouinstance = -915  
     SELECT @ctxt_ouinstance = NULL  
   
 SELECT @ctxt_service = LTRIM(RTRIM(@ctxt_service))  
 IF @ctxt_service = '~#~'  
     SELECT @ctxt_service = NULL  
   
 SELECT @ctxt_user = LTRIM(RTRIM(@ctxt_user))  
 IF @ctxt_user = '~#~'  
     SELECT @ctxt_user = NULL  
   
 SELECT @docty = UPPER(LTRIM(RTRIM(@docty)))  
 IF @docty = '~#~'  
     SELECT @docty = NULL  
   
 SELECT @guid = LTRIM(RTRIM(@guid))  
 IF @guid = '~#~'  
     SELECT @guid = NULL  
   
 SELECT @item_code = UPPER(LTRIM(RTRIM(@item_code)))  
 IF @item_code = '~#~'  
     SELECT @item_code = NULL  
   
 SELECT @item_var_desc = LTRIM(RTRIM(@item_var_desc))  
 IF @item_var_desc = '~#~'  
     SELECT @item_var_desc = NULL  
   
 SELECT @modeflag = LTRIM(RTRIM(@modeflag))  
 IF @modeflag = '~#~'  
     SELECT @modeflag = NULL  
   
 SELECT @notypeno = LTRIM(RTRIM(@notypeno))  
 IF @notypeno = '~#~'  
     SELECT @notypeno = NULL  
   
 IF @ord_line_no = -915  
     SELECT @ord_line_no = NULL  
   
 SELECT @ord_priority = LTRIM(RTRIM(@ord_priority))  
 IF @ord_priority = '~#~'  
     SELECT @ord_priority = NULL  
   
 IF @order_date = '01/01/1900'  
     SELECT @order_date = NULL  
   
 SELECT @ordno = UPPER(LTRIM(RTRIM(@ordno)))  
 IF @ordno = '~#~'  
     SELECT @ordno = NULL  
   
 SELECT @ordpml = UPPER(LTRIM(RTRIM(@ordpml)))  
 IF @ordpml = '~#~'  
     SELECT @ordpml = NULL  
   
 IF @promiseddate = '01/01/1900'  
     SELECT @promiseddate = NULL  
   
 IF @promiseddateml = '01/01/1900'  
     SELECT @promiseddateml = NULL  
   
 IF @recpml_hdn = -915  
     SELECT @recpml_hdn = NULL  
   
 SELECT @receivingpoint = UPPER(LTRIM(RTRIM(@receivingpoint)))  
 IF @receivingpoint = '~#~'  
     SELECT @receivingpoint = NULL  
   
 SELECT @recwhcode = UPPER(LTRIM(RTRIM(@recwhcode)))  
 IF @recwhcode = '~#~'  
     SELECT @recwhcode = NULL  
   
 SELECT @recwhml = UPPER(LTRIM(RTRIM(@recwhml)))  
 IF @recwhml = '~#~'  
     SELECT @recwhml = NULL  
   
 IF @reqddate = '01/01/1900'  
     SELECT @reqddate = NULL  
   
 IF @reqddatehdr = '01/01/1900'  
     SELECT @reqddatehdr = NULL  
   
 IF @reqdqty = -915  
     SELECT @reqdqty = NULL  
   
 IF @requiring_ou = -915  
     SELECT @requiring_ou = NULL  
   
 SELECT @sched_typeml = UPPER(LTRIM(RTRIM(@sched_typeml)))  
 IF @sched_typeml = '~#~'  
     SELECT @sched_typeml = NULL  
   
 IF @shppoint_hdn = -915  
     SELECT @shppoint_hdn = NULL  
   
 SELECT @shpwhml = UPPER(LTRIM(RTRIM(@shpwhml)))  
 IF @shpwhml = '~#~'  
     SELECT @shpwhml = NULL  
   
 SELECT @statusresatp = LTRIM(RTRIM(@statusresatp))  
 IF @statusresatp = '~#~'  
     SELECT @statusresatp = NULL  
   
 SELECT @stocstatus = LTRIM(RTRIM(@stocstatus))  
 IF @stocstatus = '~#~'  
     SELECT @stocstatus = NULL  
   
 SELECT @stocstatusml_hdn = LTRIM(RTRIM(@stocstatusml_hdn))  
 IF @stocstatusml_hdn = '~#~'  
     SELECT @stocstatusml_hdn = NULL  
   
 SELECT @str_no = UPPER(LTRIM(RTRIM(@str_no)))  
 IF @str_no = '~#~'  
     SELECT @str_no = NULL  
   
 SELECT @transactiontype = LTRIM(RTRIM(@transactiontype))  
 IF @transactiontype = '~#~'  
     SELECT @transactiontype = NULL  
   
 SELECT @variant = UPPER(LTRIM(RTRIM(@variant)))  
 IF @variant = '~#~'  
     SELECT @variant = NULL  
   
 IF @fprowno = -915  
     SELECT @fprowno = NULL  
 --code has been added for ES_STO_00032 begins   
 IF @carriercode = '~#~'  
     SELECT @carriercode = NULL  
   
 IF @salechannel = '~#~'  
     SELECT @salechannel = NULL  
 --code has been added for ES_STO_00032 ends   
 --code added for id: EBS-1210 starts   
 if @hdndocty = '~#~'   
          select @hdndocty = null  
    --code added for id: EBS-1210 ends  
   
 /* Code added for EPE-26565 Begins */  
 select @mrsto_ou = ltrim(rtrim(@mrsto_ou))  
  
 if @mrsto_ou = '~#~'  
  select @mrsto_ou = null  
 /* Code added for EPE-26565 Ends */  
  
 --code added for caseid: EPE-26567 begins here  
   
 select @comments  = ltrim(rtrim(@comments))  
 IF @comments = '~#~'   
  Select @comments = null  
  
 --code added for caseid: EPE-26567 ends here  
   
   
  
 /* code added for OTSid:ITEMADMNDMS412AT_000441 begins here */       
 DECLARE --@disp_flag      udd_sequence,  
         --@storage_alloc  udd_sequence,  
   @m_errorid_tmp  udd_int --HAL-183  
 /* code added for OTSid:ITEMADMNDMS412AT_000441 ends here */   
   
 /* Code added by Damodharan. R on 28 Feb 2008 for DTS ID DMS412AT_STO_00010 starts here */  
 SELECT @rowno = @fprowno + 1  
   
 SELECT @fprowno = @fprowno + 1 -- code added for PEPS-2231

   
 IF EXISTS (  
        SELECT 'x'  
        FROM sa_warehouse_master_vw(NOLOCK)  
        WHERE wh_ou = @ctxt_ouinstance  
        AND   wh_code = @recwhcode  
        AND   wm_bonded_yn = 'Y'  
    )  
 BEGIN  
     EXEC fin_german_raiserror_sp 'STO',  
          @ctxt_language,  
          67,  
      @rowno  
       
     RETURN  
 END  
 --code added for ITS ID:ES_STO_00071 begins  
   
 select @stktransfer_source = iou_stktransfer_source  
 from itm_iou_itemvarhdr(NOLOCK)  
 where iou_itemcode  = @item_code  
 and  iou_variantcode  = isnull(@variant,'##')  
 and  iou_ou    in ( select destinationouinstid   
          from fw_admin_view_comp_intxn_model (nolock)  
          where sourcecomponentname   =  'PACKSLIP'  
          and  sourceouinstid    =  @shppoint_hdn  
          and  destinationcomponentname =  'ITEMADMN')  
 
   --code added by ritsl, code starts  
 if @modeflag <> 'D'   --- code added by Nandhakumar on 16 Feb 2021 for Item source is not defined as "Stock Transfer"    
 begin
     --code added by ritsl, code ends  
 if @stktransfer_source=0  
 begin  
  EXEC fin_german_raiserror_sp 'STO',@ctxt_language,205,@rowno  
  return   
 end  
   end   --- code added by Nandhakumar on 16 Feb 2021 for Item source is not defined as "Stock Transfer"    
 --code added for ITS ID:ES_STO_00071 ends  
 /* Code added by Damodharan. R on 28 Feb 2008 for DTS ID DMS412AT_STO_00010 ends here */  
   
 /*code added for DTS ID: DMS412AT_STO_00030 starts here*/  
 ;  
 WITH shpou(ou) AS (  
     SELECT destinationouinstid  
     FROM fw_admin_view_comp_intxn_model  
     WHERE sourcecomponentname = 'PACKSLIP'  
     AND   sourceouinstid = @recpml_hdn  
     AND   destinationcomponentname = 'STORAGE_ADMIN'  
 )  
 SELECT @receivingwh = wh_code  
 FROM sa_warehouse_master_vw(NOLOCK)  
      JOIN shpou  
          ON  (ou = wh_ou)  
 WHERE wh_code = @recwhcode  
 AND   wh_capital_warehouse = 1  
   
 IF @receivingwh IS NOT NULL  
 BEGIN  
     EXEC fin_german_raiserror_sp 'STO',  
          @ctxt_language,  
          69,  
          @rowno  
       
     RETURN  
 END  
 /*code added for DTS ID: DMS412AT_STO_00030 ends here*/  
   
 IF @modeflag = 'D'  
 BEGIN  
     RETURN  
 END  
 /* code added for caseid: EPE-26565 begins here */  
 declare @ref_doc_ou  udd_ctxt_ouinstance,  
   @tran_no  udd_documentno  
      
 SELECT @tran_no = tran_no  
 FROM sto_order_hdr_tmp(NOLOCK)  
 WHERE guid  = @guid  
  
 select @ref_doc_ou  = stohdr_ref_doc_ou  
 from sto_order_hdr with(nolock)  
 where stohdr_order_no = @tran_no  
 and  stohdr_order_ou = @ctxt_ouinstance  
  
 if @hdndocty='PRQ' and isnull(@str_no,'')<> ''     
 begin  
  select @ref_doc_ou  = @mrsto_ou  
  
  if @ref_doc_ou is null  
  begin  
   select @ref_doc_ou = isnull((select destinationouinstid  
           from    fw_admin_view_comp_intxn_model (nolock)  
 where  destinationcomponentname= 'PUR_REQ'  
           and     sourcecomponentname     = 'STO'  
           and    sourceouinstid          = @ctxt_ouinstance),@ctxt_ouinstance)  
  
  end  
  
  if exists ( select 'X'  
     from prq_prqit_item_detail with (nolock)  
     where prqit_prou  = @ref_doc_ou   
   and  prqit_prno  = @str_no  
     and  prqit_lineno = @ord_line_no  
     and  prqit_itemcode = @item_code )  
   begin  
    select @ctxt_ouinstance = @ctxt_ouinstance  
   end  
   else  
   begin   
    --raiserror ('Item code does not exist for given Purchase Request No:"%a"',16,1)  
    exec fin_german_raiserror_sp 'STO',@ctxt_language,621, @str_no    
    return  
   end  
 end  
 /* code added for caseid: EPE-26565 ends here */  
  
---code added by uma on 20-10-2021 against -JPE-1117: starts    
IF @modeflag <>'D'     
BEGIN     
       
if not exists(select '*' from trd_tax_group_dtl (nolock) where  item_code=@item_code)            
begin        
    
 declare @fprowno_ud int     
 select @fprowno_ud=@fprowno    
     
 if @fprowno_ud=0    
 begin     
  select @fprowno_ud=@fprowno_ud+1    
 end     
 else     
 begin     
  select @fprowno_ud=@fprowno_ud+1    
 end    
       
 raiserror            
 --('Particular Line Number and Item code is not mapped in Tax Group %s',16,1,@item_code)            
 ('Item code %s is not mapped to Tax Group in row no. %d',16,1,@item_code,@ord_line_no/*@fprowno_ud*/) --code modified against rtrack id : RJPEE-1319          
 return             
         
 end             
END    
---code added by uma on 20-10-2021 against -JPE-1117: end     
 /* Code correction for STODMS41SYTST_000014 starts */  
 IF @modeflag IN ('I', 'X')  
 BEGIN  
     SELECT @ord_line_no = NULL  
 END  
 /* Code correction for STODMS41SYTST_000014 ends */  
   
 -- Assign generated orderno from header to grid segement  
   
 SELECT @ordno = tran_no  
 FROM sto_order_hdr_tmp(NOLOCK)  
 WHERE guid = @guid  
   
 /* code added for OTSid:ITEMADMNDMS412AT_000441 begins here */   
 IF @variant IS NULL  
     SELECT @variant = '##'  
   
 /*Commented for STODMS412AT_000121 begins  
 select @disp_flag = iou_disposition,  
 @storage_alloc = iou_storagealloc  
 from itm_iou_itemvarhdr (nolock)  
 where iou_itemcode = @item_code  
 and iou_ou  = @ctxt_ouinstance  
   
 if @disp_flag = 1  
 begin  
   
   
 if exists (select 'X' from itm_wpp_whplanparam (nolock)  
 where wpp_itemcode = @item_code  
 and wpp_variantcode = @variant  
 and wpp_warehouse = @recwhml  
 and wpp_ou  = @ctxt_ouinstance)  
 begin  
 select @ctxt_ouinstance = @ctxt_ouinstance  
 end  
 else  
 begin  
 raiserror('Item Warehouse planning parameters not set for the Item code "%s" and Warehouse "%s". Please check', 16, 1, @item_code, @recwhml)--STODMS412AT_000121  
 return  
 end  
   
 if exists (select 'X' from itm_wpp_whplanparam (nolock)  
 where wpp_itemcode = @item_code  
 and wpp_variantcode = @variant  
 and wpp_warehouse = @shpwhml  
 and wpp_ou  = @ctxt_ouinstance)  
 begin  
 select @ctxt_ouinstance = @ctxt_ouinstance  
 end  
 else  
 begin  
 raiserror('Item Warehouse planning parameters not set for the Item code "%s" and Warehouse "%s". Please check', 16, 1, @item_code, @shpwhml) --STODMS412AT_000117  
 return  
 end  
 end  
 else  
 if @storage_alloc = 1  
 begin  
 if exists (select 'X' from sa_ad_allocation_details (nolock)  
 where ad_ou  = @ctxt_ouinstance  
 and ad_wh_code = @recwhml  
 and ad_item_code = @item_code  
 and ad_variant_code = @variant)  
 begin  
 select @ctxt_ouinstance = @ctxt_ouinstance  
 end  
 else  
 begin  
 raiserror('Storage Allocation details not defined for the Item code "%s" and the Warehouse "%s". Please check', 16, 1, @item_code, @recwhcode) --STODMS412AT_000117  
 return  
 end  
   
   
 if exists (select 'X' from sa_ad_allocation_details (nolock)  
 where ad_ou  = @ctxt_ouinstance  
 and ad_wh_code = @shpwhml  
 and ad_item_code = @item_code  
 and ad_variant_code = @variant)  
 begin  
 select @ctxt_ouinstance = @ctxt_ouinstance  
 end  
 else  
 begin  
 raiserror('Storage Allocation details not defined for the Item code "%s" and the Warehouse "%s". Please check', 16, 1, @item_code, @shpwhml)  
 return  
 end  
   
 end  
 commented for STODMS412AT_000121 ends*/  
 /* code added for OTSid:ITEMADMNDMS412AT_000441 ends here */   
   
 ----------------------------------------------------  
   
  
 /*Modification starts here for the issue STOBGL_000002*/  
 IF @availabledate IS NULL  
 BEGIN    
     EXEC sto_crmn_sp_atp_ml  
        @atpquantity,  
          @attr_uom,  
          @availabledate,  
          @ctxt_language,  
          @ctxt_ouinstance,  
          @ctxt_service,  
          @ctxt_user,  
          --@docty,  
          @hdndocty, --code modified for id: EBS-1210  
          @guid,  
          @item_code,  
          @item_var_desc,  
          @modeflag,  
          @ord_line_no,  
          @ord_priority,  
          @promiseddate,  
          @promiseddateml,  
          @receivingpoint,  
          @recpml_hdn,  
          @recwhcode,  
          @recwhml,  
          @reqddate,  
          @reqddatehdr,  
          @reqdqty,  
          @requiring_ou,  
          @sched_typeml,  
       @shppoint_hdn,  
          @shpwhml,  
          @statusresatp,  
          @stocstatus,  
          @stocstatusml_hdn,  
          @str_no,  
          @transactiontype,  
          @variant,  
           /* Code added for tts id :ES_NSO_00696:13H120_NSO_00006 begins */   
          --Code Commenetd for dts id : ES_STO_00087  
    --null,  
    --null,  
    --null,  
    --Code Commenetd for dts id : ES_STO_00087  
          /* Code added for tts id :ES_NSO_00696:13H120_NSO_00006 ends */   
          @fprowno,  
          '',--code added for id: EBS-1210 --@mrsto_ou   
    @comments, --code added for caseid: EPE-26567  
          @m_errorid_tmp OUT  
           /* Code added for dts id : ES_STO_00087 begins */  
            ,null,  
    null,  
    null , 
           /* Code added for dts id : ES_STO_00087 ends */ 
	/*code added for JPE-1962 starts*/
   null,
	'sto_crmn_ser_sbt'
	/*code added for JPE-1962 ends*/
          
    
	--IF @m_errorid <> 0  --Code commented for PSSR-450
	if @m_errorid_tmp <>0 --Code added for PSSR-450
	begin  
		--code added begins for JPE-1684
		if @m_errorid_tmp =1372028     
		begin    
			-- exec fin_german_raiserror_sp 'PRJDET',@ctxt_language,7021,@item_code  ,@fprowno
			exec fin_german_raiserror_sp 'STO',@ctxt_language,625,  @item_code--PEPS-2231
		end    
		if  @m_errorid_tmp=1372029     
		begin    
			exec fin_german_raiserror_sp 'PRJDET',1,7022,@item_code,@variant , @fprowno 
		end   
		--code added ends for JPE-1684 
		 /*Code added for PSSR-450 begins*/
		 if @m_errorid_tmp not in (1372028 ,1372029) 	 
		 begin
			select @m_errorid = @m_errorid_tmp
		 end
		/*Code added for PSSR-450 ends*/
		RETURN 
     end  
       
     EXEC sto_sp_run_atp   
          @ctxt_language,  
          @ctxt_ouinstance,  
          @ctxt_service,  
          @ctxt_user,  
          @guid,  
          @promiseddate,  
          @recpml_hdn,  
          @recwhml,  
          @reqddatehdr,  
    /*Modified for Hal-183 begins */  
         @m_errorid_tmp OUTPUT 
		  ,@fprowno--code added for RJPEE-517
    --@m_errorid OUTPUT  
      
		if @m_errorid_tmp <> 0  
		begin  
 
			/*Code commented and added for PSSR-450 begins*/
			/*if @m_errorid_tmp not in (1372028 ,1372029)  -- code added for JPE-1684
			--select @m_errorid = null */		 
			select @m_errorid = @m_errorid_tmp
			/*Code commented and added for PSSR-450 ends*/
			return 
		end  
     /*Code added for the issue STODMS412AT_000104 starts*/  
     SELECT @availabledate = stodet_avail_date,  
            @atpquantity = stodet_atp_qty,  
  @statusresatp = stodet_atp_status  
     FROM sto_atp_item_dtl_tmp(NOLOCK)  
     WHERE guid = @guid  
     /*Code added for the issue STODMS412AT_000104 ends*/  
       
     IF @availabledate IS NULL  
     BEGIN  
         SELECT @availabledate = CONVERT(nvarchar(10), dbo.RES_Getdate(@ctxt_ouinstance), 120)  
     END  
       
     DELETE sto_atp_item_dtl_tmp  
     WHERE  guid = @guid  
 END  
 /*Modification ends here for the issue STOBGL_000002*/  
    
 /*Code added for the issue STODMS412AT_000107 starts*/  
 IF @sched_typeml = 'STAG'  
 BEGIN  
     SELECT @availabledate = NULL  
 END  
 ELSE  
 BEGIN  
     IF @availabledate IS NULL  
     BEGIN  
         SELECT @availabledate = CONVERT(nvarchar(10), dbo.RES_Getdate(@ctxt_ouinstance), 120)  
     END  
 END  
 /*Code added for the issue STODMS412AT_000107 ends*/  
   
 EXEC sto_create_sp_dtl  
      @atpquantity,  
      @attr_uom,  
      @availabledate,  
      @ctxt_language,  
      @ctxt_ouinstance,  
      @ctxt_service,  
      @ctxt_user,  
      --@docty,  
      @hdndocty, --code modified for id: EBS-1210  
  @guid,  
      @item_code,  
      @item_var_desc,  
      @modeflag,  
      @notypeno,  
  @ord_line_no,  
      @ord_priority,  
      @order_date,  
      @ordno,  
      @ordpml,  
      @promiseddate,  
      @promiseddateml,  
      @receivingpoint,  
      @recpml_hdn,  
      @recwhcode,  
      @recwhml,  
      @reqddate,  
      @reqddatehdr,  
      @reqdqty,  
      @requiring_ou,  
      @sched_typeml,  
      @shppoint_hdn,  
      @shpwhml, 
      @statusresatp,  
  @stocstatus,  
      @stocstatusml_hdn,  
      @str_no,  
 @transactiontype,  
      @variant,  
      @fprowno,  
   @comments, --code added for EPE-26567  
@m_errorid OUT  
       
 IF @m_errorid <> 0  
   
     RETURN  
   
 -- Run ATP  -------  
 /*Modification starts here for the issue STOBGL_000002*/  
   
 /* exec sto_crmn_sp_atp_ml  
 @atpquantity,  
 @attr_uom,  
 @availabledate,  
 @ctxt_language,  
 @ctxt_ouinstance,  
 @ctxt_service,  
 @ctxt_user,  
 @docty,  
 @guid,  
 @item_code,  
 @item_var_desc,  
 @modeflag,  
 @ord_line_no,  
 @ord_priority,  
 @promiseddate,  
 @promiseddateml,  
 @receivingpoint,  
 @recpml_hdn,  
 @recwhcode,  
 @recwhml,  
 @reqddate,  
 @reqddatehdr,  
 @reqdqty,  
 @requiring_ou,  
 @sched_typeml,  
 @shppoint_hdn,  
 @shpwhml,  
 @statusresatp,  
 @stocstatus,  
 @stocstatusml_hdn,  
 @str_no,  
 @transactiontype,  
 @variant,  
 @fprowno,  
 @m_errorid out  
   
 if @m_errorid <>0  
 return */  
 /*Modification ends here for the issue STOBGL_000002*/  
    
 --SELECT @fprowno = @fprowno + 1 -- code commented for PEPS-2231
 SELECT @fprowno 'FPROWNO'  
   
 SET NOCOUNT OFF  
     /*  
     Template Select Statement for Selecting data to App Layer  
     select   
     @fprowno 'FPROWNO'  
     from  ***  
     */  
END  
  
  











