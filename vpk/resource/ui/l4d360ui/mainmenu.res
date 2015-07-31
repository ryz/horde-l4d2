"Resource/UI/MainMenu.res"
{
	"MainMenu"
	{
		"ControlName"			"Frame"
		"fieldName"				"MainMenu"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f0"
		"tall"					"f0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
	}
				
	"BtnGameModes"
	{
		"ControlName"			"GameModes"
		"fieldName"				"BtnGameModes"

		"tabPosition"			"1"
		"navUp"					"BtnBlogPost"			[$X360]
		"navUp"					"PnlQuickJoin"		[$WIN32]
		"navDown"				"BtnChangeGamers"	[$X360]
		"navDown"				"BtnModeSearch"	[$WIN32]

		"xpos"					"0"
		"ypos"					"35"
		
		// needed to push the game modes carousel behind the other main menu buttons
		// that overlap into the carousel rect (which needs be oversized due to flyouts)
		// and would not get mouse hittests
		"zpos"					-10				[$WIN32]
		
		"borderimage"			"vgui/menu_mode_border"	

		"leftarrow"				"vgui/arrow_left"	
		"rightarrow"			"vgui/arrow_right"	
		"arrowwidth"			21
		"arrowheight"			21
		"arrowoffsety"			-3
		"rightarrowoffsetx"		7		[$WIN32]

		// main pic, vertically centered
		"picoffsetx"			100
		"picwidth"				153
		"picheight"				153

		// menu text, underneath pic
		"menutitlex"			100
		"menutitley"			16
		// the 360 doesn't clip text, these can be more exact to the fat main menu button
		"menutitlewide"			180	[$X360 && (!$GERMAN && !$FRENCH && !$POLISH)]
		"menutitlewide"			230	[$X360 && ($GERMAN || $FRENCH)]
		"menutitlewide"			240	[$X360 && $POLISH]
		// the pc clips text, these need to be wider for the hint, but then use wideatopen to foreshorten the flyout
		"menutitlewide"			500	[$WIN32]
		"wideatopen"			180	[$WIN32 && (!$GERMAN && !$FRENCH && !$POLISH)]
		"wideatopen"			230	[$WIN32 && ($GERMAN || $FRENCH)]
		"wideatopen"			240	[$WIN32 && $POLISH]
		"menutitletall"			80

		// small pics, vertically centered, to the right of the main pic
		"subpics"				5		[$X360WIDE || $WIN32WIDE]
		"subpics"				3		[!($X360WIDE || $WIN32WIDE)]
		"subpicgap"				6		// between pics
		"subpicoffsetx"			20		[$X360]
		"subpicoffsetx"			50		[$WIN32]
		"subpicoffsety"			-10
		"subpicwidth"			94	//default 86
		"subpicheight"			86
		"subpicnamefont"		"Default"
		"hidelabels"			"1"		[!$ENGLISH]			

		"mode" [!$X360GUEST]
		{
			"id"				"BtnCoOp"
			"name"				"#L4D360UI_ModeCaps_COOP"
			"image"				"vgui/menu_mode_campaign"
			"command"			"FlmCampaignFlyout"
			"menutitle"			"#L4D360UI_MainMenu_CoOp"
			"menuhint"			"#L4D360UI_MainMenu_CoOp_Tip"
		}
		
		"mode" [!$X360GUEST]
		{
			"id"				"BtnPlayChallenge"
			"name"				"#L4D360UI_ModeCaps_CHALLENGE"
			"image"				"vgui/menu_mode_mutation"
			"command"			"PlayChallenge"
			"menutitle"			"#L4D360UI_MainMenu_PlayChallenge"
			"menuhint"			" "
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"challengemode"		"1"
			"enabled"			"0"									[$DEMO]
		}
		
		"mode" [!$X360GUEST]
		{
			"id"				"BtnHordeMutations"
			"name"				"HORDE MODE"
			"image"				"vgui/menu_mode_horde"
			"command"			"FlmHordeMutationsFlyout"
			"menutitle"			"HORDE MODE"
			"menuhint"			"Select a Horde Mode category from the list."
		}
		
		"mode" [!$X360GUEST]
		{
			"id"				"BtnPlayRealism"
			"name"				"#L4D360UI_ModeCaps_REALISM"
			"image"				"vgui/menu_mode_realism"
			"command"			"FlmRealismFlyout"
			"menutitle"			"#L4D360UI_MainMenu_Realism"
			"menuhint"			"#L4D360UI_MainMenu_Realism_Tip"
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"enabled"			"0"									[$DEMO]
		}

		"mode" [!$X360GUEST]
		{
			"id"				"BtnVersus"
			"name"				"#L4D360UI_ModeCaps_VERSUS"
			"image"				"vgui/menu_mode_versus"
			"command"			"VersusSoftLock"
			"menutitle"			"#L4D360UI_MainMenu_Versus"
			"menuhint"			"#L4D360UI_MainMenu_Versus_Tip"
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"enabled"			"0"									[$DEMO]
		}

		"mode" [!$X360GUEST]
		{
			"id"				"BtnRealismVersus"
			"name"				"REALISM VS"
			"image"				"vgui/menu_mode_realismversus"
			"command"			"FlmRealismVersusFlyout"						
			"menutitle"			"#L4D360UI_ModeCaps_mutation12"
			"menuhint"			"#L4D360UI_MainMenu_PlayChallenge_Tip_mutation12"			
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"enabled"			"0"									[$DEMO]
		}

		"mode" [!$X360GUEST]
		{
			"id"				"BtnSurvival"
			"name"				"#L4D360UI_ModeCaps_SURVIVAL"
			"image"				"vgui/menu_mode_survival"
			"command"			"SurvivalCheck"
			"menutitle"			"#L4D360UI_MainMenu_Survival"
			"menuhint"			"#L4D360UI_MainMenu_Survival_Tip"
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"enabled"			"0"									[$DEMO]
		}		

		"mode" [!$X360GUEST]
		{
			"id"				"BtnScavenge"
			"name"				"#L4D360UI_ModeCaps_SCAVENGE"
			"image"				"vgui/menu_mode_scavenge"
			"command"			"ScavengeCheck"
			"menutitle"			"#L4D360UI_MainMenu_Scavenge"
			"menuhint"			"#L4D360UI_MainMenu_Scavenge_Tip"
			"menuhintdisabled"	"#L4D360UI_MainMenu_DemoVersion"	[$DEMO]
			"enabled"			"0"									[$DEMO]
		}
		
		"mode" [!$X360SPLITSCREEN]
		{
			"id"				"BtnPlaySolo"
			"name"				"#L4D360UI_ModeCaps_offline_SP"
			"image"				"vgui/menu_mode_singleplayer"
			"command"			"SoloPlay"
			"menutitle"			"#L4D360UI_MainMenu_PlaySolo"
			"menuhint"			"#L4D360UI_MainMenu_PlaySolo_Tip"
		}
		
		"mode" [$X360SPLITSCREEN]
		{
			"id"				"BtnPlaySolo"
			"name"				"#L4D360UI_ModeCaps_offline_SS"
			"image"				"vgui/menu_mode_offline_coop"
			"command"			"SoloPlay"
			"menutitle"			"#L4D360UI_MainMenu_PlaySplitscreen"
			"menuhint"			"#L4D360UI_MainMenu_OfflineCoOp_Tip"
		}
	}
	
	"BtnGameModes2"
	{
		"ControlName"			"GameModes"
		"fieldName"				"BtnGameModes2"
		"visible"				"0" //Added so this list is invisible

		"tabPosition"			"1"
		"navUp"					"BtnBlogPost"			[$X360]
		"navUp"					"PnlQuickJoin"		[$WIN32]
		"navDown"				"BtnChangeGamers"	[$X360]
		"navDown"				"BtnModeSearch"	[$WIN32]

		"xpos"					"0"
		"ypos"					"35"
		
		// needed to push the game modes carousel behind the other main menu buttons
		// that overlap into the carousel rect (which needs be oversized due to flyouts)
		// and would not get mouse hittests
		"zpos"					-10				[$WIN32]
		
		"borderimage"			"vgui/menu_mode_border"	

		"leftarrow"				"vgui/arrow_left"	
		"rightarrow"			"vgui/arrow_right"	
		"arrowwidth"			21
		"arrowheight"			21
		"arrowoffsety"			-3
		"rightarrowoffsetx"		7		[$WIN32]

		// main pic, vertically centered
		"picoffsetx"			100
		"picwidth"				153
		"picheight"				153

		// menu text, underneath pic
		"menutitlex"			100
		"menutitley"			16
		// the 360 doesn't clip text, these can be more exact to the fat main menu button
		"menutitlewide"			180	[$X360 && (!$GERMAN && !$FRENCH && !$POLISH)]
		"menutitlewide"			230	[$X360 && ($GERMAN || $FRENCH)]
		"menutitlewide"			240	[$X360 && $POLISH]
		// the pc clips text, these need to be wider for the hint, but then use wideatopen to foreshorten the flyout
		"menutitlewide"			500	[$WIN32]
		"wideatopen"			180	[$WIN32 && (!$GERMAN && !$FRENCH && !$POLISH)]
		"wideatopen"			230	[$WIN32 && ($GERMAN || $FRENCH)]
		"wideatopen"			240	[$WIN32 && $POLISH]
		"menutitletall"			80

		// small pics, vertically centered, to the right of the main pic
		"subpics"				5		[$X360WIDE || $WIN32WIDE]
		"subpics"				3		[!($X360WIDE || $WIN32WIDE)]
		"subpicgap"				6		// between pics
		"subpicoffsetx"			20		[$X360]
		"subpicoffsetx"			50		[$WIN32]
		"subpicoffsety"			-10
		"subpicwidth"			86	
		"subpicheight"			86
		"subpicnamefont"		"Default"
		"hidelabels"			"1"		[!$ENGLISH]			

		"mode" [!$X360GUEST]
		{
			"id"				"BtnCoOpMutations"
			"name"				"CAM MUTATION"
			"image"				"vgui/menu_mode_mutation"
			"command"			"FlmCoOpMutationsFlyout"
			"menutitle"			"CAMPAIGN MUTATIONS"
			"menuhint"			"Play Campaign Mutations Released By Valve."
		}
		"mode" [!$X360SPLITSCREEN]
		{
			"id"				"BtnSoloMutations"
			"name"				"#L4D360UI_ModeCaps_offline_SP"
			"image"				"vgui/menu_mode_singleplayer"
			"command"			"FlmSoloMutationsFlyout"
			"menutitle"			"#L4D360UI_MainMenu_PlaySolo"
			"menuhint"			"#L4D360UI_MainMenu_PlaySolo_Tip"
		}
	}

	"BtnModeSearch"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnModeSearch"
		"xpos"					"100"
		"ypos"					"255"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnGameModes"
		"navDown"				"BtnStatsAndAchievements"
		"labelText"				"SEARCH FOR GAMES"
		"tooltiptext"			"#L4D360UI_MainMenu_ChangeGamers_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmSearchGamesFlyout"
		"ActivationType"		"1"
	}
	
	"BtnChangeGamers"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnChangeGamers"
		"xpos"					"100"
		"ypos"					"275"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"		[!$X360GUEST]
		"enabled"				"0"		[!$X360GUEST]
		"visible"				"1"		[$X360GUEST]
		"enabled"				"1"		[$X360GUEST]
		"tabPosition"			"0"
		"navUp"					"BtnModeSearch"
		"navDown"				"BtnStatsAndAchievements"
		"labelText"				"#L4D360UI_MainMenu_SignIn"
		"tooltiptext"			"#L4D360UI_MainMenu_ChangeGamers_Tip"
		"style"					"MainMenuButton"
		"command"				"ChangeGamers"
		"ActivationType"		"1"
	}	
		
	"BtnStatsAndAchievements"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnStatsAndAchievements"
		"xpos"					"100"
		"ypos"					"275"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"		[$X360GUEST]
		"enabled"				"0"		[$X360GUEST]
		"visible"				"1"		[!$X360GUEST]
		"enabled"				"1"		[!$X360GUEST]
		"tabPosition"			"0"
		"navUp"					"BtnChangeGamers"
		"navDown"				"BtnOptions"
		"labelText"				"#L4D360UI_MainMenu_StatsAndAchievements"
		"tooltiptext"			"#L4D360UI_MainMenu_StatsAndAchievements_Tip"	[$X360]
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"	[$WIN32]
		"style"					"MainMenuButton"
		"command"				"StatsAndAchievements"
		"ActivationType"		"1"
		"EnableCondition"		"Never" [$DEMO]
	}
	
	"BtnOptions"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnOptions"
		"xpos"					"100"
		"ypos"					"295"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnStatsAndAchievements"
		"navDown"				"BtnExtras"
		"labelText"				"#L4D360UI_MainMenu_Options"
		"tooltiptext"			"#L4D360UI_MainMenu_Options_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmOptionsFlyout"			[!$X360GUEST]
		"command"				"FlmOptionsGuestFlyout"		[$X360GUEST]	
		"ActivationType"		"1"
	}
	
	"BtnExtras"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnExtras"
		"xpos"					"100"
		"ypos"					"315"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnOptions"
		"navDown"				"BtnBlogPost"
		"labelText"				"#L4D360UI_MainMenu_Extras"
		"tooltiptext"			"#L4D360UI_MainMenu_Extras_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmExtrasFlyoutCheck"
		"ActivationType"		"1"
		"EnableCondition"					"Never" [$DEMO]
	}

	"IconBlogPost"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBlogPost"
		"xpos"					"75"
		"ypos"					"335"
		"wide"					"20"
		"tall"					"20"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"rssfeed"
		"frame"					"0"
		"scaleImage"			"1"
	}	
	
	"BtnBlogPost"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBlogPost"
		"xpos"					"100"
		"ypos"					"335"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnExtras"
		"navDown"				"BtnQuit" [$WIN32]
		"navDown"				"BtnGameModes" [$X360]
		"labelText"				"#L4D360UI_MainMenu_BlogPost"
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"ShowBlogPost"
		"ActivationType"		"1"
		"EnableCondition"					"Never" [$DEMO]
	}
	
	"BtnQuit"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnQuit"
		"xpos"					"100"
		"ypos"					"355"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0" [$X360]
		"visible"				"1" [$WIN32]
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnBlogPost"
		"navDown"				"PnlQuickJoin"
		"labelText"				"#L4D360UI_MainMenu_Quit"
		"tooltiptext"			"#L4D360UI_MainMenu_Quit_Tip"
		"style"					"MainMenuButton"
		"command"				"QuitGame"
		"ActivationType"		"1"
	}
				
	"FlmCampaignFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCampaignFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/CampaignFlyout.res"
	}

	"FlmRealismFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmRealismFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/RealismFlyout.res"
	}
	
	"FlmSurvivalFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSurvivalFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/SurvivalFlyout.res"
	}	

	"FlmScavengeFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmScavengeFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/ScavengeFlyout.res"
	}

	"FlmVersusFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVersusFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/VersusFlyout.res"
	}

	"FlmRealismVersusFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmRealismVersusFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/RealismVersusFlyout.res"
	}

	"FlmHordeMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHordeMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayHorde1"
		"ResourceFile"			"resource/UI/L4D360UI/HordeMutationsFlyout.res"
	}
	
	"FlmChallengeFlyout4"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChallengeFlyout4"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/mainmenu_flyout_challenge4.res"
	}

	"FlmChallengeFlyout8"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChallengeFlyout8"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/mainmenu_flyout_challenge8.res"
	}	
	
	"FlmCoOpMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCoOpMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayHorde1"
		"ResourceFile"			"resource/UI/L4D360UI/CoOpMutationsFlyout.res"
	}

	"FlmHordeHardcoreFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHordeHardcoreFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayHorde1"
		"ResourceFile"			"resource/UI/L4D360UI/HordeHardcoreFlyout.res"
	}
	
	"FlmSearchGamesFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSearchGamesFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnGameBrowser"	[$WIN32]
		"ResourceFile"			"resource/UI/L4D360UI/SearchGamesFlyout.res"
	}
	
	"FlmOptionsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnAudioVideo"	[$X360]
		"InitialFocus"			"BtnVideo"	[$WIN32]
		"ResourceFile"			"resource/UI/L4D360UI/OptionsFlyout.res"
	}
	
	"FlmOptionsGuestFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsGuestFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnAudioVideo"
		"ResourceFile"			"resource/UI/L4D360UI/OptionsGuestFlyout.res"
	}

	"FlmExtrasFlyout_Simple"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmExtrasFlyout_Simple"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCommentary"
		"ResourceFile"			"resource/UI/L4D360UI/ExtrasFlyout.res"
	}

	"FlmExtrasFlyout_Live"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmExtrasFlyout_Live"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCommunity"
		"ResourceFile"			"resource/UI/L4D360UI/ExtrasFlyoutLive.res"
	}
			
	"PnlQuickJoin"
	{
		"ControlName"			"QuickJoinPanel"
		"fieldName"				"PnlQuickJoin"
		"ResourceFile"			"resource/UI/L4D360UI/QuickJoin.res"
		"visible"				"0"
		"wide"					"500"	[$X360]
		"wide"					"240"	[$WIN32]
		"tall"					"300"
		"xpos"					"r260"	[$X360]
		"xpos"					"80"	[$WIN32]
		"ypos"					"r120"	[$X360]
		"ypos"					"r75"	[$WIN32]
		"navUp"					"BtnQuit"
		"navDown"				"BtnGameModes"
	}
	
	"PnlQuickJoinGroups"	[$WIN32]
	{
		"ControlName"			"QuickJoinGroupsPanel"
		"fieldName"				"PnlQuickJoinGroups"
		"ResourceFile"			"resource/UI/L4D360UI/QuickJoinGroups.res"
		"visible"				"0"
		"wide"					"500"
		"tall"					"300"
		"xpos"					"c0"
		"ypos"					"r75"
		"navUp"					""
		"navDown"				""
	}

	"LblPlayer1GamerTag"	[$X360]
	{
		"ControlName"			"Label"
		"fieldName"				"LblPlayer1GamerTag"
		"xpos"					"100"
		"ypos"					"r120"
		"wide"					"300"
		"tall"					"16"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"DefaultMedium"
		"fgcolor_override"		"125 125 125 255"
		"noshortcutsyntax"		"1"
	}
	
	// either this or the enable
	"LblPlayer2GamerTag"	[$X360]
	{
		"ControlName"			"Label"
		"fieldName"				"LblPlayer2GamerTag"
		"xpos"					"100"
		"ypos"					"r100"
		"wide"					"300"
		"tall"					"16"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"DefaultMedium"
		"fgcolor_override"		"125 125 125 255"
		"noshortcutsyntax"		"1"
	}
	
	"LblPlayer2Enable"	[$X360]
	{
		"ControlName"			"Label"
		"fieldName"				"LblPlayer2Enable"
		"xpos"					"100"
		"ypos"					"r100"
		"wide"					"300"
		"tall"					"16"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#L4D360UI_MainMenu_SignInMessageSsStart2"
		"Font"					"DefaultMedium"
		"fgcolor_override"		"125 125 125 255"
	}
	
	"LblPlayer2DisableIcon"		[$X360]
	{
		"ControlName"			"Label"
		"fieldName"				"LblPlayer2DisableIcon"
		"xpos"					"100"
		"ypos"					"r140"
		"wide"					"30"
		"tall"					"16"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"GameUIButtonsMini"
		"labelText"				"#GameUI_Icons_BACK"
	}
	
	"LblPlayer2Disable"		[$X360]
	{
		"ControlName"			"Label"
		"fieldName"				"LblPlayer2Disable"
		"xpos"					"125"
		"ypos"					"r140"
		"wide"					"300"
		"tall"					"16"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"DefaultMedium"
		"labelText"				"#L4D360UI_MainMenu_SignInMessageSsDisable"
		"fgcolor_override"		"125 125 125 255"
	}
}
