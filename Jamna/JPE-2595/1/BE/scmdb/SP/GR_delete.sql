
/* Author - Arockia Reeta A */            
 --    begin tran      
 --exec gr_delete 18,'B1/EG/0489/2021','FR'      
 --SELECT * FROM GR_HDR_GRMAIN(NOLOCK) WHERE gr_hdr_grno='B1/EG/0489/2021'      
      
 --SELECT *FROM SKM_STOCKBAL_NONCTRL WHERE sbn_item_code='PMNTMEC972'      
      
 --select * from skm_stockval_wtdavg where svw_item_code='PMNTMEC972'      
 -- rollback tran      
 /*Priyadharsini M JPE-2595 2024-03-08*/           
CREATE   or alter procedure GR_delete            
@ou_id udd_ctxt_ouinstance,            
@GR_no udd_documentno,            
@status udd_statuscode            
as             
begin            
          
          
--SELECT @ou_id=8          
--SELECT @GR_no='A1/EG/0012/1920'          
--SELECT @status='FR'          
          
            
declare @curr_status udd_statuscode,            
@po_no udd_documentno,            
@po_ou udd_ctxt_ouinstance,            
@Po_AMEND udd_number            
            
            
select @curr_status = gr_hdr_grstatus ,            
@PO_NO=gr_hdr_orderno,            
@PO_OU=gr_hdr_orderou,            
@PO_AMEND=gr_hdr_orderamendno from gr_hdr_grmain(nolock)            
       where gr_hdr_ouinstid=@ou_id            
       and gr_hdr_grno=@GR_no            
 select @PO_AMEND=max(pomas_poamendmentno) from po_pomas_pur_order_hdr(nolock)            
 where pomas_pono=@PO_NO            
            
            
if @status='FR'            
begin            
            
update gr_hdr_grmain set gr_hdr_grstatus='FR',gr_hdr_frdate = null,gr_hdr_fadate=null            
 where gr_hdr_ouinstid=@ou_id            
and gr_hdr_grno=@GR_no            
            
            
update gr_lin_details set gr_lin_linestatus ='FR', gr_lin_frdate = null,gr_lin_fadate=null,gr_lin_fmdate=null,            
  gr_lin_acceptedqty=null,            
  gr_lin_movedqty=null,            
  gr_lin_delynoteqty=null            
  where gr_lin_grno=@GR_no            
and gr_lin_ouinstid=@ou_id            
            
end             
             
if @status='DL'            
begin            
            
update gr_hdr_grmain set gr_hdr_grstatus='DL',gr_hdr_frdate = null,gr_hdr_fadate=null            
 where gr_hdr_ouinstid=@ou_id            
and gr_hdr_grno=@GR_no            
            
            
update gr_lin_details set gr_lin_linestatus ='DL', gr_lin_frdate = null,gr_lin_fadate=null,gr_lin_fmdate=null,            
  gr_lin_acceptedqty=null,            
  gr_lin_movedqty=null,            
    gr_lin_delynoteqty=null            
where gr_lin_grno=@GR_no            
and gr_lin_ouinstid=@ou_id            
            
end             
            
            
update ITM set             
poitm_pobalancequantity=poitm_pobalancequantity+isnull(gr_lin_receivedqty,0),            
poitm_grrecdqty=poitm_grrecdqty-isnull(gr_lin_receivedqty,0),            
poitm_graccpdqty=poitm_graccpdqty-isnull(gr_lin_acceptedqty,gr_lin_receivedqty),            
poitm_grrejdqty =poitm_grrejdqty-isnull(gr_lin_rejectedqty,0),            
poitm_grmovdqty=poitm_grmovdqty-isnull(gr_lin_movedqty,0),            
poitm_polinestatus='OP'            
FROM po_poitm_item_detail ITM (NOLOCK),GR_LIN_DETAILS(NOLOCK)            
where poitm_pono =@PO_NO            
and poitm_poamendmentno=@PO_AMEND            
and gr_lin_ouinstid=@ou_id            
and gr_lin_grno=@gr_no            
and poitm_polineno =gr_lin_orderlineno            
            
            
update ITM set             
poshd_balqty=poshd_balqty+isnull(gr_lin_receivedqty,0),            
poshd_grrecdqty=poshd_grrecdqty-isnull(gr_lin_receivedqty,0),            
poshd_graccpdqty=poshd_graccpdqty-isnull(gr_lin_acceptedqty,gr_lin_receivedqty),            
poshd_grrejdqty =poshd_grrejdqty-isnull(gr_lin_rejectedqty,0),            
poshd_grmovdqty=poshd_grmovdqty-isnull(gr_lin_movedqty,0)            
FROM po_poshd_schedule_dtl ITM (NOLOCK),GR_LIN_DETAILS(NOLOCK)            
where poshd_pono =@PO_NO            
and poshd_poamendmentno=@PO_AMEND            
and gr_lin_ouinstid=@ou_id            
and gr_lin_grno=@gr_no            
and poshd_polineno =gr_lin_orderlineno            
and poshd_scheduleno=gr_lin_orderschno            
            
            
update po_pomas_pur_order_hdr set pomas_podocstatus='OP'            
where pomas_pono=@PO_NO            
and pomas_poamendmentno=@PO_AMEND            
            
            
       
delete from gr_ilt_itemlot where gr_ilt_grno=@gr_no            
delete from gr_ist_itemsublot where gr_ist_grno=@gr_no            
delete from gr_fin_financepost where gr_fin_grno=@gr_no            
            
if @curr_status in ('FM','PM')            
begin            
            
UPDATE skm_stockbal_nonctrl SET sbn_quantity=sbn_quantity-stock_uom_qty        
FROM skm_stockbal_nonctrl (nolock),rgtd_transaction_slbyval_vw(nolock)            
where fbp_ref_Doc_No = @gr_no            
and sbn_item_code=itemcode            
and sbn_variant_Code=variantcode            
and sbn_ouinstid=ou            
and sbn_wh_code=warehouse            
and sbn_zone=zone            
and sbn_quantity>0            
AND sbn_stock_status='ACC'            
      
   
   
     
UPDATE skm_stockval_wtdavg SET svw_cur_quantity=svw_cur_quantity-stock_uom_qty,         
svw_cur_value=svw_cur_value-value       
FROM skm_stockval_wtdavg (nolock),rgtd_transaction_slbyval_vw(nolock)            
where fbp_ref_Doc_No = @gr_no            
and svw_item_code=itemcode            
and svw_variant_code=variantcode            
and svw_wh_code=warehouse            
and svw_ouinstid=ou   
  
      
UPDATE skm_stockval_wtdavg SET svw_rate= case when svw_cur_quantity=0 then 0 else round(svw_cur_value/svw_cur_quantity,4) end       
FROM skm_stockval_wtdavg (nolock),rgtd_transaction_slbyval_vw(nolock)            
where fbp_ref_Doc_No = @gr_no            
and svw_item_code=itemcode            
and svw_variant_code=variantcode            
and svw_wh_code=warehouse            
and svw_ouinstid=ou    
  
  
             
            
DELETE FROM rct_purchase_det WHERE rcgd_receipt_no IN (select rcgh_receipt_no FROM RCT_PURCHASE_HDR WHERE rcgh_ref_doc_no=@gr_no)            
DELETE FROM RCT_PURCHASE_HDR WHERE rcgh_ref_doc_no=@gr_no            
            
delete From gr_cpm_consmove where gr_cpm_grno=@gr_no            
delete from gr_wm_whmove where gr_wm_grno=@gr_no            
delete from gr_ins_inspection where gr_ins_grno =@gr_no         
        
update po_powh_allocation_dtl         
set powh_balancequantity = powh_allocqty        
where powh_pono = @PO_NO          
and powh_poou=@ou_id        
and powh_poamendmentno=@PO_AMEND        
            
            
end             
            
exec fbp_delete_sp  @gr_no,@ou_id, 'pur_gr','y','GSE_2157'            
            
            
end             
            
            