
/*$$filename = sto_aumn_sp_save_ml_iedk.sql*/


/********************************************************************************/
/* Procedure    :sto_aumn_sp_save_ml_iedk                                       */
/* Description  :                                                               */
/********************************************************************************/
/* Customer     :diasys                                                         */
/* Project      :diasys                                                         */
/********************************************************************************/
/* Referenced   :                                                               */
/* Tables       :                                                               */
/********************************************************************************/
/* Development History                                                          */
/********************************************************************************/
/* Author       :RITSL                                                          */
/* Date         :4/7/2025 10:56:28 AM                                           */
/********************************************************************************/
/* Creation     History                                                         */
/********************************************************************************/
/* Created  by  :  K Vishnupriya                                                */
/* Date         :  10-04-2025                                                   */
/* Description  :  RJPEE-1319                                                   */
/********************************************************************************/

CREATE  or alter procedure sto_aumn_sp_save_ml_iedk                                        
	@ctxt_user                     ctxt_User,
	@ctxt_service                  Ctxt_Service,
	@ctxt_ouinstance               ctxt_OUInstance,
	@ctxt_language                 Ctxt_Language,
	@stock_value                   amount,
	@sto_taskcode                  cfs_code,
	@sto_wbsid                     cfs_code,
	@stocstatusml_hdn              code,
	@availabledate                 date,
	@promiseddateml                date,
	@reqddate                      date,
	@order_no                      documentno,
	@ordno                         documentno,
	@fetchml                       FetchML,
	@statusresatp                  flag,
	@guid                          [GUID],
	@sto_taskdesc                  HrNotes,
	@item_var_desc                 Item_Desc,
	@item_code                     ItemCode,
	@ord_line_no                   [Lineno],
	@modeflag                      modeflag,
	@recpml_hdn                    OUInstID,
	@shppoint_hdn                  OUInstID,
	@receivingpoint                OUinstName,
	@shppml                        OUinstName,
	@ord_priority                  [Priority],
	@atpquantity                   quantity,
	@newreqdqty                    Quantity,
	@openqty                       quantity,
	@receivedqty                   quantity,
	@reqdqty                       quantity,
	@shippedqty                    quantity,
	@fprowno                       RowNo,
	@sched_typeml                  schedtype,
	@stocstatus                    [status],
	@attr_uom                      Uomcode,
	@variant                       Variant,
	@recwhcode                     Warehouse,
	@shpwhml                       Warehouse,
	@m_errorid                     int output

as
Begin

	Set nocount on

	Select @ctxt_user                     =ltrim(rtrim(@ctxt_user))
	Select @ctxt_service                  =ltrim(rtrim(@ctxt_service))
	Select @sto_taskcode                  =ltrim(rtrim(@sto_taskcode))
	Select @sto_wbsid                     =ltrim(rtrim(@sto_wbsid))
	Select @stocstatusml_hdn              =ltrim(rtrim(@stocstatusml_hdn))
	Select @order_no                      =ltrim(rtrim(@order_no))
	Select @ordno                         =ltrim(rtrim(@ordno))
	Select @statusresatp                  =ltrim(rtrim(@statusresatp))
	Select @guid                          =ltrim(rtrim(@guid))
	Select @sto_taskdesc                  =ltrim(rtrim(@sto_taskdesc))
	Select @item_var_desc                 =ltrim(rtrim(@item_var_desc))
	Select @item_code                     =ltrim(rtrim(@item_code))
	Select @modeflag                      =ltrim(rtrim(@modeflag))
	Select @receivingpoint                =ltrim(rtrim(@receivingpoint))
	Select @shppml                        =ltrim(rtrim(@shppml))
	Select @ord_priority                  =ltrim(rtrim(@ord_priority))
	Select @sched_typeml                  =ltrim(rtrim(@sched_typeml))
	Select @stocstatus                    =ltrim(rtrim(@stocstatus))
	Select @attr_uom                      =ltrim(rtrim(@attr_uom))
	Select @variant                       =ltrim(rtrim(@variant))
	Select @recwhcode                     =ltrim(rtrim(@recwhcode))
	Select @shpwhml                       =ltrim(rtrim(@shpwhml))
	-- @m_errorid should be 0 to Indicate Success
	Set @m_errorid = 0


	--null checking
	If @ctxt_user='~#~'
		Select @ctxt_user=null
	If @ctxt_service='~#~'
		Select @ctxt_service=null
	If @ctxt_ouinstance=-915
		Select @ctxt_ouinstance=null
	If @ctxt_language=-915
		Select @ctxt_language=null
	If @stock_value=-915
		Select @stock_value=null
	If @sto_taskcode='~#~'
		Select @sto_taskcode=null
	If @sto_wbsid='~#~'
		Select @sto_wbsid=null
	If @stocstatusml_hdn='~#~'
		Select @stocstatusml_hdn=null
	If @availabledate='01/01/1900'
		Select @availabledate=null
	If @promiseddateml='01/01/1900'
		Select @promiseddateml=null
	If @reqddate='01/01/1900'
		Select @reqddate=null
	If @order_no='~#~'
		Select @order_no=null
	If @ordno='~#~'
		Select @ordno=null
	If @fetchml=-915
		Select @fetchml=null
	If @statusresatp='~#~'
		Select @statusresatp=null
	If @guid='~#~'
		Select @guid=null
	If @sto_taskdesc='~#~'
		Select @sto_taskdesc=null
	If @item_var_desc='~#~'
		Select @item_var_desc=null
	If @item_code='~#~'
		Select @item_code=null
	If @ord_line_no=-915
		Select @ord_line_no=null
	If @modeflag='S'
		Select @modeflag=null
	If @recpml_hdn=-915
		Select @recpml_hdn=null
	If @shppoint_hdn=-915
		Select @shppoint_hdn=null
	If @receivingpoint='~#~'
		Select @receivingpoint=null
	If @shppml='~#~'
		Select @shppml=null
	If @ord_priority='~#~'
		Select @ord_priority=null
	If @atpquantity=-915
		Select @atpquantity=null
	If @newreqdqty=-915
		Select @newreqdqty=null
	If @openqty=-915
		Select @openqty=null
	If @receivedqty=-915
		Select @receivedqty=null
	If @reqdqty=-915
		Select @reqdqty=null
	If @shippedqty=-915
		Select @shippedqty=null
	If @fprowno=-915
		Select @fprowno=null
	If @sched_typeml=''
		Select @sched_typeml=null
	If @stocstatus='~#~'
		Select @stocstatus=null
	If @attr_uom='~#~'
		Select @attr_uom=null
	If @variant='~#~'
		Select @variant=null
	If @recwhcode='~#~'
		Select @recwhcode=null
	If @shpwhml='~#~'
		Select @shpwhml=null

	--errors mapped
		if isnull(@modeflag,'') <> 'D'
	begin
	declare @pricelist_ouid  udd_ctxt_ouinstance      
      
select @pricelist_ouid   = destinationouinstid      
from   fw_admin_view_comp_intxn_model(nolock)      
where  sourcecomponentname  = 'STI'      
and    sourceouinstid   = @ctxt_ouinstance      
and    destinationcomponentname = 'PEG6'    

declare @pricelist nvarchar(200)

if (@ord_line_no = 0) or (@ord_line_no is null)
begin
select @ord_line_no = stodet_ord_line_no
from sto_order_item_dtl (nolock)
where stodet_item_code = @item_code
and stodet_variant = isnull(@variant,'##')
end

select @pricelist = stisys_price_list
from sti_system_param_dtl (nolock)
where stisys_ou = @ctxt_ouinstance

if not exists (select 'x' from price_list_dtl (nolock)
where pldtl_ou = @pricelist_ouid
and pldtl_item_code = @item_code
and pldtl_item_variant = isnull(@variant,'##')
and pldtl_price_list_no = @pricelist)

begin

Raiserror('Item code %s in Line no. %d not mapped with Default Price list',16,1,@item_code,@ord_line_no)
Return

end


	if not exists (select 'x' from trd_tax_group_dtl (nolock)
where item_code = @item_code
and variant = isnull(@variant,'##')
and effective_to_date is null)

begin

Raiserror('Item code %s in line no. %d not mapped with Tax group. Kindly map the Tax',16,1,@item_code,@ord_line_no)
return

end
end
	--output parameters
	/*
	Select  

	*/
	Set nocount off
End



