#SingleInstance, force

; Options
TreeViewWidth := 300
TreeViewHeight := 380
TextBoxWidth := 270
TextBoxMargin := 320

; Build the treeview
Gui, Add, TreeView, r24 w%TreeViewWidth% AltSubmit 0x20 gPrjFolder vPrjFolder
Loop, Read, folder_data.csv
{
	Loop, Parse, A_LoopReadLine, CSV
	{
		RowData%A_Index% := A_LoopField
		;MsgBox, , , RowData%A_Index%, 
	}

	If RowData2 = 0
	{
		FolderID := TV_Add(RowData3)
		%RowData1% := FolderID
		%FolderID% := RowData1
		RowTxt := FolderID . "txt"
		RowExt := FolderID . "ext"
		RowNameConv := FolderID . "nameconv"
		%RowTxt% := RowData4
		%RowExt% := RowData5
		%RowNameConv% := RowData6
	}
	Else
	{
		;ChildFolder := RowData1 . RowData2
		FolderID := TV_Add(RowData3, %RowData2%)
		%RowData1% := FolderID
		%FolderID% := RowData1
		RowTxt := FolderID . "txt"
		RowExt := FolderID . "ext"
		RowNameConv := FolderID . "nameconv"
		%RowTxt% := RowData4
		%RowExt% := RowData5
		%RowNameConv% := RowData6
		;MsgBox, , %RowExt%, % %RowExt%, 
	}
}
;000_pm := TV_Add("000 - Project Management")
;001_pm := TV_Add("001 - Project Initiation", 000_pm)
;001_pm_01 := TV_Add("001A - IT Demand Form", 001_pm)
;001_pm_02 := TV_Add("001B - Project Approval Form", 001_pm)
;001_pm_03 := TV_Add("001C - Charge Code Request Form", 001_pm)
;001_pm_04 := TV_Add("001D - High Level Workplan", 001_pm)
;002_pm := TV_Add("002 - Project Work Plan", 000_pm)
;003_pm := TV_Add("003 - Overview Training & Presentation", 000_pm)
;003_pm_01 := TV_Add("003A - Training Slide", 003_pm)
;003_pm_02 := TV_Add("003B - Presentation Slide", 003_pm)
;004_pm := TV_Add("004 - Project Progress Report", 000_pm)
;004_pm_01 := TV_Add("004A - Project Tracking Report", 004_pm)
;004_pm_02 := TV_Add("004B - Project Progress Report", 004_pm)
;005_pm := TV_Add("005 - Project Issues", 000_pm)
;006_pm := TV_Add("006 - Minutes of Meeting", 000_pm)
;007_pm := TV_Add("007 - Consultant Work Report", 000_pm)
;008_pm := TV_Add("008 - Project Change Request", 000_pm)
;008_pm_01 := TV_Add("008A - Project Change Request Sign Off", 008_pm)
;008_pm_02 := TV_Add("008B - Detailed Project Change Request", 008_pm)
;009_pm := TV_Add("009 - Others", 000_pm)
;100_pp := TV_Add("100 - Project Preparation")
;101_pp := TV_Add("101 - Project Charter", 100_pp)
;102_pp := TV_Add("102 - Project Organization", 100_pp)
;102_pp_01 := TV_Add("102A - Organization Chart", 102_pp)
;102_pp_02 := TV_Add("102B - Contact List", 102_pp)
;103_pp := TV_Add("103 - Project Kick Off", 100_pp)
;104_pp := TV_Add("104 - Project Environment", 100_pp)
;105_pp := TV_Add("105 - Others", 100_pp)
;200_bb := TV_Add("200 - Business Blueprint")
;201_bb := TV_Add("201 - BPML", 200_bb)
;201_bb := TV_Add("202 - PDD", 200_bb)
;201_bb := TV_Add("203 - Detail Requirement", 200_bb)
;201_bb := TV_Add("204 - Sign Off Document", 200_bb)
;201_bb := TV_Add("205 - Others", 200_bb)
;300_rl := TV_Add("300 - Realization")
;301_rl := TV_Add("301 - RICEFW", 300_rl)
;302_rl := TV_Add("302 - FDS", 300_rl)
;303_rl := TV_Add("303 - Technical Specification", 300_rl)
;304_rl := TV_Add("304 - Configuration Script", 300_rl)
;305_rl := TV_Add("305 - User Authorization Role", 300_rl)
;306_rl := TV_Add("306 - System Integration Test", 300_rl)
;306_rl_01 := TV_Add("306A - SIT Checklist", 306_rl)
;306_rl_02 := TV_Add("306B - SIT Test Script", 306_rl)
;307_rl := TV_Add("307 - Key User Training ", 300_rl)
;307_rl_01 := TV_Add("307A - KUT Attendance", 307_rl)
;307_rl_02 := TV_Add("307B - KUT Confirmation", 307_rl)
;308_rl := TV_Add("308 - User Acceptance Test", 300_rl)
;309_rl := TV_Add("309 - User Manual Guidance", 300_rl)
;310_rl := TV_Add("310 - Sign Off Document", 300_rl)
;311_rl := TV_Add("311 - Others", 300_rl)
;400_fp := TV_Add("400 - Final Preparation")
;401_fp := TV_Add("401 - End User Training", 400_fp)
;401_fp_01 := TV_Add("EUT Agenda", 401_fp)
;401_fp_02 := TV_Add("EUT Attendance", 401_fp)
;402_fp := TV_Add("402 - Master Data Preparation", 400_fp)
;403_fp := TV_Add("403 - Cutover", 400_fp)
;404_fp := TV_Add("404 - Sign Off Document", 400_fp)
;401_fp := TV_Add("405 - Others", 400_fp)
;500_gl := TV_Add("500 - Go Live")
;501_gl := TV_Add("501 - Transaction Checklist", 500_gl)
;502_gl := TV_Add("502 - Closure ", 500_gl)
;503_gl := TV_Add("503 - Sign Off Document", 500_gl)
;504_gl := TV_Add("504 - Others", 500_gl)
;600_ho := TV_Add("600 - Handover")
;601_ho := TV_Add("601 - Handover Checklist", 600_ho)

; Text
Gui, Add, Text, x%TextBoxMargin% y8, Folder Name
Gui, Add, Edit, vFolderName x%TextBoxMargin% yp+14 w%TextBoxWidth% ReadOnly, 

Gui, Add, Text, x%TextBoxMargin% yp+24, Folder Description
Gui, Add, Edit, vFolderDesc x%TextBoxMargin% yp+14 w%TextBoxWidth% ReadOnly,  

Gui, Add, Text, x%TextBoxMargin% yp+24, Accepted Extension(s)
Gui, Add, Edit, vAcceptedExt x%TextBoxMargin% yp+14 w%TextBoxWidth% ReadOnly,  

Gui, Add, Text, x%TextBoxMargin% yp+24, Filename Naming Conventions
Gui, Add, Edit, vFilenameNaming x%TextBoxMargin% yp+14 w%TextBoxWidth% ReadOnly,

Gui, Add, Text, x%TextBoxMargin% yp+24, Folder ID
Gui, Add, Edit, vFolderCode x%TextBoxMargin% yp+14 w%TextBoxWidth% ReadOnly,

; Show the window
Gui, Show, w600 h400 Center
Return

; Functions
GetRef(Head, Name)
{
	global
	R1 := Head
	;MsgBox, , Func, %R1%,
	%Head% := Name
	;MsgBox, , Func2, % %Head%,
}

PrjFolder:
	if A_GuiEvent <> S
		Return
	TV_GetText(TreeText, TV_GetSelection())
	TreeID := TV_GetSelection()
	Ext := TreeID . "ext"
	NamingConv := TreeID . "nameconv"
	Txt := TreeID . "txt"
	;MsgBox, , , %Ext%, 
	;MsgBox, , , %NamingConv%,
	;MsgBox, , , %TreeID%, 
	GuiControl, , FolderName, %TreeText%
	GuiControl, , FolderDesc, % %Txt%
	GuiControl, , FolderCode, % %TreeID%
	GuiControl, , AcceptedExt, % %Ext%
	GuiControl, , FilenameNaming, % %NamingConv%
	Return

; Exit the script
GuiClose:
ExitApp
Return