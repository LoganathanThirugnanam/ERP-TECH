
/*$$filename = sto_crmn_sp_getit_ml_iedk.sql*/

/********************************************************************************/
/* Procedure    :sto_crmn_sp_getit_ml_iedk                                      */
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

CREATE  or alter procedure sto_crmn_sp_getit_ml_iedk                                        
	@ctxt_user                     ctxt_User,
	@ctxt_service                  Ctxt_Service,
	@ctxt_ouinstance               ctxt_OUInstance,
	@ctxt_language                 Ctxt_Language,
	@stocstatusml_hdn              code,
	@availabledate                 date,
	@promiseddate                  date,
	@promiseddateml                date,
	@reqddate                      date,
	@reqddatehdr                   date,
	@orderno                       desc255,
	@docty                         Docty,
	@hdndocty                      Docty,
	@str_no                        documentno,
	@statusresatp                  flag,
	@guid                          [GUID],
	@mrsto_ou                      HIDDENCONTROL,
	@item_var_desc                 Item_Desc,
	@item_code                     ItemCode,
	@ord_line_no                   [Lineno],
	@modeflag                      modeflag,
	@recpml_hdn                    OUInstID,
	@requiring_ou                  OUInstID,
	@shppoint_hdn                  OUInstID,
	@receivingpoint                OUinstName,
	@ord_priority                  [Priority],
	@atpquantity                   quantity,
	@reqdqty                       quantity,
	@fprowno                       RowNo,
	@sched_typeml                  schedtype,
	@stocstatus                    [status],
	@transactiontype               Transactiontype,
	@attr_uom                      Uomcode,
	@variant                       Variant,
	@recwhcode                     Warehouse,
	@recwhml                       Warehouse,
	@shpwhml                       Warehouse,
	@m_errorid                     int output

as
Begin

	Set nocount on

	Select @ctxt_user                     =ltrim(rtrim(@ctxt_user))
	Select @ctxt_service                  =ltrim(rtrim(@ctxt_service))
	Select @stocstatusml_hdn              =ltrim(rtrim(@stocstatusml_hdn))
	Select @orderno                       =ltrim(rtrim(@orderno))
	Select @docty                         =ltrim(rtrim(@docty))
	Select @hdndocty                      =ltrim(rtrim(@hdndocty))
	Select @str_no      =ltrim(rtrim(@str_no))
	Select @statusresatp                  =ltrim(rtrim(@statusresatp))
	Select @guid                          =ltrim(rtrim(@guid))
	Select @mrsto_ou                      =ltrim(rtrim(@mrsto_ou))
	Select @item_var_desc                 =ltrim(rtrim(@item_var_desc))
	Select @item_code                     =ltrim(rtrim(@item_code))
	Select @modeflag                      =ltrim(rtrim(@modeflag))
	Select @receivingpoint                =ltrim(rtrim(@receivingpoint))
	Select @ord_priority                  =ltrim(rtrim(@ord_priority))
	Select @sched_typeml                  =ltrim(rtrim(@sched_typeml))
	Select @stocstatus                    =ltrim(rtrim(@stocstatus))
	Select @transactiontype               =ltrim(rtrim(@transactiontype))
	Select @attr_uom                      =ltrim(rtrim(@attr_uom))
	Select @variant                       =ltrim(rtrim(@variant))
	Select @recwhcode                     =ltrim(rtrim(@recwhcode))
	Select @recwhml                       =ltrim(rtrim(@recwhml))
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
	If @stocstatusml_hdn='~#~'
		Select @stocstatusml_hdn=null
	If @availabledate='01/01/1900'
		Select @availabledate=null
	If @promiseddate='01/01/1900'
		Select @promiseddate=null
	If @promiseddateml='01/01/1900'
		Select @promiseddateml=null
	If @reqddate='01/01/1900'
		Select @reqddate=null
	If @reqddatehdr='01/01/1900'
		Select @reqddatehdr=null
	If @orderno='~#~'
		Select @orderno=null
	If @docty=''
		Select @docty=null
	If @hdndocty='~#~'
		Select @hdndocty=null
	If @str_no='~#~'
		Select @str_no=null
	If @statusresatp='~#~'
		Select @statusresatp=null
	If @guid='~#~'
		Select @guid=null
	If @mrsto_ou='~#~'
		Select @mrsto_ou=null
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
	If @requiring_ou=-915
		Select @requiring_ou=null
	If @shppoint_hdn=-915
		Select @shppoint_hdn=null
	If @receivingpoint='~#~'
		Select @receivingpoint=null
	If @ord_priority='~#~'
		Select @ord_priority=null
	If @atpquantity=-915
		Select @atpquantity=null
	If @reqdqty=-915
		Select @reqdqty=null
	If @fprowno=-915
		Select @fprowno=null
	If @sched_typeml=''
		Select @sched_typeml=null
	If @stocstatus='~#~'
		Select @stocstatus=null
	If @transactiontype='~#~'
		Select @transactiontype=null
	If @attr_uom='~#~'
		Select @attr_uom=null
	If @variant='~#~'
		Select @variant=null
	If @recwhcode='~#~'
		Select @recwhcode=null
	If @recwhml='~#~'
		Select @recwhml=null
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
from sto_order_item_dtl_tmp (nolock)
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

select @item_code '@item_code'
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




