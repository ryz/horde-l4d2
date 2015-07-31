"Resource/UI/CampaignFlyout.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"192" [$ENGLISH]
		"wide"					"270" [!$ENGLISH]
		"tall"					"65"  [$X360]
		"tall"					"225"  [$WIN32]
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}
	"BtnPlayHorde1"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayHorde1"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayHorde2"
		"navDown"				"BtnPlayHorde2"			[$X360]
		"navDown"				"BtnPlayHorde2"	[$WIN32]
		"labelText"				"Horde"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithFriends_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithFriends_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"FlmCoOpMutationsFlyout"
	}
	
	"BtnPlayHorde2"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayHorde2"
		"xpos"					"0"
		"ypos"					"20"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayHorde1"
		"navDown"				"BtnPlayHorde3"
		"labelText"				"#L4D360UI_CustomMatch"	[$X360]
		"labelText"				"Horde Hardcore" [$WIN32]
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"FlmHordeHardcoreFlyout"
	}		

}
