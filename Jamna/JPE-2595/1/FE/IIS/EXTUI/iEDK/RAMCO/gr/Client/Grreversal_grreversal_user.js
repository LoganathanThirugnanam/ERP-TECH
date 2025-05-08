/**********************************************************************************************
*  Copyright @ 2000 RAMCO SYSTEMS,  All rights reserved.
*  File Name            : Grreversal_grreversal_user.js
*  Author(s) Name(s)    : Platform Code Generator
**********************************************************************************************/

if (typeof _top =="undefined")
    _top = top.AirFrame || top;


if (typeof PathPrefix =="undefined")
    PathPrefix = _top.PathPrefix;

    PathPrefix = "../../../../";


document.write("<link href='" +PathPrefix+ "resources/css/xtheme-default.css' rel='StyleSheet' type='text/css'/>");
document.write("<link href='" +PathPrefix+ "resources/css/vw.css' rel='StyleSheet' type='text/css'/>");
document.write("<script language='javascript' type='text/javascript' src='" +PathPrefix+ "PlfControlPrototype.js'></script>");

sTaskWidth = "100";
sMinSize = "100";
// Initialize Method
function init()
{

    var screenMetaObj = 
        [
            ['Main',[["_btngr_search"],["_btnconfirmstatuschange"]],[["SECTION_[MAINSCREEN]__HEADERSECTION"],["SECTION_[MAINSCREEN]__SEARCHRESULTS"],["SECTION_[MAINSCREEN]__BUTTONSECTION"],["SECTION_[MAINSCREEN]__HIDDENSECTION"]],null]
        ];

    try
    {
      PlfApplicationForm.SetInlineTab(true);
      PlfApplicationForm.InitializeApplicationParameters('gr',"Receipt Acknowledgement",'Grreversal',"GR Reversal",'grreversal',"GR Status Change",true,false,'MODIFY',3,true,undefined,1);
      PlfApplicationForm.InitializeApplicationpage('GR Status Change','Grreversal','grreversal','',false,true,true,true,screenMetaObj);
    }
    catch(e)
    {
        if (typeof plfState!='undefined') 
            {
                if (typeof plfState.DisplayErrorEx == 'function')
                    plfState.DisplayErrorEx('OnLoad',e.message,5,'');
            }
    }
}

// For Returning All the Sections in a Page
function getSections(pagename)
{
    pagename = pagename.toLowerCase();

    switch (pagename)
    {
        case "[mainscreen]":
            return ["SECTION_[MAINSCREEN]__HEADERSECTION","SECTION_[MAINSCREEN]__SEARCHRESULTS","SECTION_[MAINSCREEN]__BUTTONSECTION","SECTION_[MAINSCREEN]__HIDDENSECTION"];
            break;
    }

}

//  For Returning Activity Description
function getActivityDesc(ilboName)
{
    ilboName = ilboName.toLowerCase();
    if(ilboName != "grreversal")
        return true;

    return "GR Status Change";
}

// For Returning Trial Bar Description
function getTrailBarDesc(ilboName)
{
    ilboName = ilboName.toLowerCase();
    if(ilboName != "grreversal")
        return true;

    return "GR Status Change";
}

// For User Pre Process
function UserPreProcess(eventName, activityName, ilboName, tabName)
{
    eventName = eventName.toLowerCase();
    activityName = activityName.toLowerCase();
    ilboName = ilboName.toLowerCase();
    tabName = tabName.toLowerCase();
    var bReturn = true;

    try
    {
        if(ilboName != "grreversal")
            return true;

     }
    catch(e){}

    return bReturn;
}

// For User BeforeUserPostProcess
function BeforeUserPostProcess(eventName, activityName, ilboName, tabName)
{
    eventName = eventName.toLowerCase();
    activityName = activityName.toLowerCase();
    ilboName = ilboName.toLowerCase();
    tabName = tabName.toLowerCase();
    var bReturn = true;

    try
    {
        if(ilboName != "grreversal")
            return true;

    }
    catch(e){}

    return bReturn;
}

// For Task Status Message
function getUserTaskStatusMessage(eventName, activityName, ilboName, tabName)
{

}

// For Task Confirmation Message
function getUserTaskConfirmationMessage(eventName, activityName, ilboName, tabName)
{
    eventName = eventName.toLowerCase();
    activityName = activityName.toLowerCase();
    ilboName = ilboName.toLowerCase();
    tabName = tabName.toLowerCase();

    var sTaskConfirmMsg = "";
    try
    {
        if(ilboName != "grreversal")
            return sTaskConfirmMsg;
    }
    catch(e){}

    return sTaskConfirmMsg;
}

// For Context Menu - Preffered Tasks
function getContextItems(pagename, controlid, sState)
{
    pagename = pagename.toLowerCase();

    if(typeof controlid == "string")
        controlid = controlid.toLowerCase();
}

// For User AfterUserPostProcess
function AfterUserPostProcess(eventName, activityName, ilboName, tabName)
{
    eventName = eventName.toLowerCase();
    activityName = activityName.toLowerCase();
    ilboName = ilboName.toLowerCase();
    tabName = tabName.toLowerCase();
    var bReturn = true;

    try
    {
        if(ilboName != "grreversal")
            return true;

    }
    catch(e){}

    return bReturn;
}

// For Section Control Association
function GetAssociatedControls(secname)
{
	if(!secname) return;
	switch(secname.toLowerCase())
	{
		case '_headersection':
			return ['_txt_gr_rev_receiptfrom','_txt_gr_rev_receiptto','_cmb_gr_rev_status','_txt_gr_rev_datefr','_txt_gr_rev_dateto','_cmb_gr_folder','_txt_gr_supplier_code','_txt_gr_name','_cmb_gr_adhoc_ite','_txt_gr_rev_reffr','_txt_gr_rev_refto','_cmb_gr_rev_type','_txt_gr_rev_date_fr','_txt_gr_rev_date_to','_cmb_gr_rev_fold','_txt_gr_rev_itmcode','_txt_gr_rev_variant','_txt_desc'];
		case '_searchresults':
			return ['_grdgr_revmldetails'];
	}
}

// For Section Non Control Association
function GetAssociatedNonControls(secname)
{
	if(!secname) return;
	switch(secname.toLowerCase())
	{
		case '_headersection':
			return ['_btngr_search'];
		case '_buttonsection':
			return ['_btnconfirmstatuschange'];
	}
}
// For File Upload - Dynamic name for the files uploaded
function onBeginUpload(e)
{

}
