componentName = "GR";
componentDesc = "Receipt Acknowledgement";
activityName = "Grreversal";
activityDesc = "GR Reversal";
ilboName = "grreversal";
ilboDesc = "GR Status Change";
TrailILBODesc = "GR Status Change";
tabName = "";
tabDesc = "MainScreen";
bMainPage = 1;
inlineTab = 1;
bPreview = 0;
function preTaskSubmit(sTaskName)
{
  sTaskName = sTaskName.toLowerCase();
  return true;
}
function postTaskResultProcess(sTaskName)
{
  sTaskName = sTaskName.toLowerCase();
  return true;
}
function onVisibleDataSetChanged(sGridName, nVisibleSetStartIndex)
{
}
