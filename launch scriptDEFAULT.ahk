	UserName = BE034739
	Password = Dyson.2015

	SetWorkingDir %A_ScriptDir%		; Ensures a consistent starting directory.
	#NoEnv				; Recommended for performance and compatibility with future AutoHotKey releases.
	SetKeyDelay, 10, 10			; Sets the delay that will occur after each keystroke sent by Send or ControlSend.  This is in milliseconds.
	SetBatchLines, -1			; Determines how fast a script will run (affects CPU utilization).
	#Persistent			; Keeps the script running.
	#SingleInstance, Force		; Determines whether a script is allowed to run again when it is already running.
	#WinActivateForce

	;Gui 1:+LastFound
	;hWnd := WinExist()
	;hSysMenu:=DllCall("GetSystemMenu","Int",hWnd,"Int",FALSE) 
	;nCnt:=DllCall("GetMenuItemCount","Int",hSysMenu) 
	;DllCall("RemoveMenu","Int",hSysMenu,"UInt",nCnt-6,"Uint","0x400") 
	;DllCall("DrawMenuBar","Int",hWnd) 

	Gui, 1:+LastFound
	Gui, 1:+AlwaysOnTop
	hwnd1 := WinExist()
	Gui, 2:+LastFound
	Gui, 2:+AlwaysOnTop


	Gui, 2:+0x48888880 -0x88888880 	 ; Add WS_CHILD, remove WS_POPUP
	hwnd2 := WinExist()
	DllCall("SetParent", "uint", hwnd2, "uint", hwnd1)
	
	Gui, 2:Color,000011
	Gui, 2:-Border -Caption -SysMenu
	Gui, 2:Show, x18 y597 h34 w475, NoActive
	Gui, 1:Color, 000011
	Gui, 1:Show, x542 y85 h651 w510, IRC Launch Script
	
	Color0 := "c999999"
	Color1 := "c66FF00"
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox, X15 Y10 W480 H50, Internet Browser
	Gui, 1:Font, s10 C999999 
	Gui, 1:Add, Radio, x78 y33 vba1 gCheck, Google Chrome
	Gui, 1:Add, Radio, x281 y33 vba2 gCheck, Internet Explorer
	Gui, 1:Color, c999999
	Gui, 1:Add, Picture, x191 y27 h-1 w24 C000011, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
	Gui, 1:Color, 000011
	Gui, 1:Add, Picture, x401 y27 h-1 w24 C000011 Icon3, C:\Program Files (x86)\Internet Explorer\iexplore.exe
	Gui, 1:Color, 000011
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox, x15 y70 w480 h50, Browser Format 
	Gui, 1:Font, s10 c999999, Arial 
	Gui, 1:Add, Radio, x55 y93 vsa3 gStyle, Individual Windows
	Gui, 1:Add, Radio, x265 y93 vsa4 gStyle, Tabs within One Window
	Gui, 1:Add, Picture, x188 y88 h-1 w24 C000011 Icon99, shell32.dll
	Gui, 1:Color, 000011
	Gui, 1:Add, Picture, x432 y88 h-1 w24 C000011 Icon98, shell32.dll
	Gui, 1:Color, 000011 
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial 
	Gui, 1:Add, GroupBox, x15 y130 w233 h405, IRC Applications
	Gui, 1:Font, s10 c99999
	Gui, 1:Add, CheckBox, x30 y160 h15 w15 vvar1 gToggle, 
	Gui, 1:Add, Text, x50 y160 vvartxt1 gToggle %Color0%, AlarmPoint (Internal Link)
	Gui, 1:Add, CheckBox, x30 y185 h15 w15 vvar2 gToggle,
	Gui, 1:Add, Text, x50 y185 vvartxt2 gToggle %Color0%, Connect IT
	Gui, 1:Add, CheckBox, x30 y210 h15 w15 vvar3 gToggle,
	Gui, 1:Add, Text, x50 y210 vvartxt3 gToggle %Color0%, Intellinet
	Gui, 1:Add, CheckBox, x30 y235 h15 w15 vvar4 gToggle,
	Gui, 1:Add, Text, x50 y235 vvartxt4 gToggle %Color0%, Intercall Meeting Center
	Gui, 1:Add, CheckBox, x30 y260 h15 w15 vvar5 gToggle,
	Gui, 1:Add, Text, x50 y260 vvartxt5 gToggle %Color0%, IRC Console
	Gui, 1:Add, CheckBox, x30 y285 h15 w15 vvar6  gToggle,
	Gui, 1:Add, Text, x50 y285 vvartxt6 gToggle %Color0%, Irongate Applications
	Gui, 1:Add, CheckBox, x30 y310 h15 w15 vvar7 gToggle,
	Gui, 1:Add, Text, x50 y310 vvartxt7 gToggle %Color0%, Lync Group Chat
	Gui, 1:Add, CheckBox, x30 y335 h15 w15 vvar8 gToggle,
	Gui, 1:Add, Text, x50 y335 vvartxt8 gToggle %Color0%, IRC Dashboard
	Gui, 1:Add, CheckBox, x30 y360 h15 w15 vvar9 gToggle,
	Gui, 1:Add, Text, x50 y360 vvartxt9 gToggle %Color0%, Navigator
	Gui, 1:Add, CheckBox, x30 y385 h15 w15 vvar10 gToggle,
	Gui, 1:Add, Text, x50 y385 vvartxt10 gToggle %Color0%, Terminals 
	Gui, 1:Add, CheckBox, x30 y410 h15 w15 vvar11 gToggle,
	Gui, 1:Add, Text, x50 y410 vvartxt11 gToggle %Color0%, Optix
	Gui, 1:Add, CheckBox, x30 y435 h15 w15 vvar12 gToggle,
	Gui, 1:Add, Text, x50 y435 vvartxt12 gToggle %Color0%, PUMA
	Gui, 1:Add, CheckBox, x30 Y460 h15 w15 vvar13 gToggle,
	Gui, 1:Add, Text, x50 y460 vvartxt13 gToggle %Color0%, QuickHit
	Gui, 1:Add, CheckBox, x30 y485 h15 w15 vvar14 gToggle,
	Gui, 1:Add, Text, x50 y485 vvartxt14 gToggle %Color0%, Remedy
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox, x263 y130 w232 h135, General Applications
	Gui, 1:Font, s10 c999999
	Gui, 1:Add, CheckBox, x278 y160 h15 w15 vvar15 gToggle,
	Gui, 1:Add, Text, x298 y160 vvartxt15 gToggle %Color0%, Microsoft Lync
	Gui, 1:Add, CheckBox, x278 y185 h15 w15 vvar16 gToggle,
	Gui, 1:Add, Text, x298 y185 vvartxt16 gToggle %Color0%, Microsoft OneNote
	Gui, 1:Add, CheckBox, x278 y210 h15 w15 vvar17 gToggle,
	Gui, 1:Add, Text, x298 y210 vvartxt17 gToggle %Color0%, Microsoft Outlook
	Gui, 1:Add, CheckBox, x278 y235 h15 w15 vvar18 gToggle,
	Gui, 1:Add, Text, x298 y235 vvartxt18 gToggle %Color0%, New Notepad Window
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox,x263 y275 w232 h260, Documents/Links  	
	Gui, 1:Font, s10 c999999
	Gui, 1:Add, CheckBox, x278 y305 h15 w15 vvar19 gToggle,
	Gui, 1:Add, Text, x298 y305 vvartxt19 gToggle %Color0%, Client Mapping Spreadsheet
	Gui, 1:Add, CheckBox, x278 y330 h15 w15 vvar20 gToggle,
	Gui, 1:Add, Text, x298 y330 vvartxt20 gToggle %COlor0%, Escalation Matrix Wiki Page 
	Gui, 1:Add, CheckBox, x278 y355 h15 w15 vvar21 gToggle,
	Gui, 1:Add, Text, x298 y355 vvartxt21 gToggle %Color0%, Execs On Call Wiki Page 
	Gui, 1:Add, CheckBox, x278 y380 h15 w15 vvar22 gToggle,
	Gui, 1:Add, Text, x298 y380 vvartxt22 gToggle %Color0%, IRC Area Of Focus Wiki Page
	Gui, 1:Add, CheckBox, x278 y405 h15 w15 vvar23 gToggle,
	Gui, 1:Add, Text, x298 y405 vvartxt23 gToggle %Color0%, IRC Wiki Page
	Gui, 1:Add, CheckBox,x278 y430 h15 w15 vvar24 gToggle,
	Gui, 1:Add, Text, x298 y430 vvartxt24 gToggle %Color0%, IR Distribution Document
	Gui, 1:Add, CheckBox, x278 y455 h15 w15 vvar25 gToggle,
	Gui, 1:Add, Text, x298 y455 vvartxt25 gToggle %Color0%, Pilot Line Wiki Page
	Gui, 1:Add, CheckBox, x278 y480 h15 w15 vvar26 gToggle,
	Gui, 1:Add, Text, x298 y480 vvartxt26 gToggle %Color0%, Scrum Notes Wiki Page
	Gui, 1:Add, CheckBox, x278 y505 h15 w15 vvar27 gToggle,
	Gui, 1:Add, Text, x298 y505 vvartxt27 gToggle %Color0%, Web Portal 
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox, x15 y582 w480 h52, Status 
;	_________________________________________________________________

	Gui, 1:Font, 000011 S10, Arial
	Gui, 1:Add, Button, x15 y548 h30 w480 gLaunch, Launch Checked Items
;	_________________________________________________________________		

	Check:
	Gui, 1:Submit, NoHide
	Gui, 1:Font, s10  c999999
   	loop, 10
	{
      	GuiControl, font, ba%A_index%   
	if (ba%A_index% = 1 )
	idx := A_index
	}
   	Gui, 1:Font, s10  c66FF00
   	GuiControl, font, ba%idx%
;	_________________________________________________________________
	
	Style:
	Gui, 1:Submit, NoHide
	Gui, 1:Font, s10 c999999, Arial
	Loop, 10
	{
      	GuiControl, font, sa%A_index%   
	if (sa%A_index% = 1 )
	idx := A_index
	}
   	Gui, 1:Font, s10  c66FF00, Arial
   	GuiControl, font, sa%idx%
;	_________________________________________________________________

	Toggle:
	Index := SubStr(A_GuiControl, (InStr(A_GuiControl, "vartxt") ? 7 : 4))
   	GuiControlGet, State, , var%Index%
	If InStr(A_GuiControl, "vartxt") {
      	State := !State
      	GuiControl, , var%Index%, %State%
   	}
   	GuiControl, % "+" . Color%State%, vartxt%Index%
   	GuiControl, MoveDraw, vartxt%Index%
;	_________________________________________________________________

	Return
	Launch:
	Gui, 1:Submit, NoHide
;	_________________________________________________________________

	If (var1 = 0 and var2 = 0 and var3 = 0 and var4 = 0 and var5 = 0 and var6 = 0 and var7 = 0 and var8 = 0 and var9 = 0 and var10 = 0 and var11 = 0 and var12 = 0 and var13 = 0 and var14 = 0 and var15 = 0 and var16 = 0 and var17 = 0 and var18 = 0 and var19 = 0 and var20 = 0 and var21 = 0 and var22 = 0 and var23 = 0 and var24 = 0 and var25 = 0 and var26 = 0 and var27 = 0)
 		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please select item(s) to launch.                       					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide
		Return     
		}
	Else
	Sleep 10
;	_________________________________________________________________ 

	If (var1 = 1 or var2 = 1 or var4 = 1 or var6 = 1 or var8 = 1 or var9 = 1 or var12 = 1 or var14 = 1 or var20 = 1 or var21 = 1 or var22 = 1 or var23 = 1 or var25 = 1 or var26 = 1 or var27 = 1) 		 
		{
		If (ba1 = 0 and ba2 = 0)
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please choose an Internet Browser.                       					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide
			Return     
			}
		Else 
		Sleep 10
		}
;	_________________________________________________________________

	If (ba1 = 1 or ba2 = 1) 		 
		{
		If (sa3 = 0 and sa4 = 0)
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please choose a Browser Format.                       					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide
			Return     
			}
		Else 
		Sleep 10
		}	
;	_________________________________________________________________

	If (var1 = 0 and var10 = 0 and var12 = 0)
		Goto, ConnectIT
	Else
	If (var1 = 1 or var10 = 1 or var12 = 1)
		{
		If (ErrorLevel > 0)
			clipboard =
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\res\GUI.ico
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32, Checking Cisco VPN state...                       						    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 5000
			Gui, 2:Hide
			}
		Sleep 500
		Run "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe"	
		Sleep 500 
		WinActivate, "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe, ahk_class ConsoleWindowClass"
		Sleep 1000
		Send state{Enter}
		Sleep 500
		Send !{Space}
		Sleep 10
		Send {E}
		Sleep 10
		Send {S}
		Sleep 10
		Send !{Space}
		Sleep 10
		Send {E}
		Sleep 10
		Send {y} 
		Sleep 10
		Send {Enter}
		DetectHiddenWindows, On
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		WinActivate, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe
		WinClose, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe
		clipboard = %clipboard%
		IfInString, clipboard, Disconnected
			{
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\res\GUI.ico 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32,Cisco VPN state:  Disconnected.  Loading and Connecting Cisco VPN.          	    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 5000
				Gui, 2:Hide
				}	
			Run "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
			Sleep 1000
			IfWinExist, Cisco AnyConnect Secure Mobility Client
				{
				WinActivate, Cisco AnyConnect Secure Mobility Client
				Send {Tab}{Tab}{Enter}
				}
			Sleep 10000
			IfWInExist, Cisco AnyConnect | cwxvpn
			WinActivate, Cisco AnyConnect | cwxvpn
				{
				Sleep 500
				Send %Password%
				Sleep 300
				Send {Tab}
				Sleep 300
				Send {Enter}
				Sleep 300
				Send {Enter}
				}
			}	
		Else
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\res\vpn_logo.png 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32, Cisco VPN state: Connected.                       					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 5000
			;Gui, 2:Hide
			}
		clipboard =
		Sleep 3600
		Goto, Alarm
		}	
;	_________________________________________________________________
	
	Alarm:

	If var1 = 0
		Goto, ConnectIT
	Else
	If var1 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, AlarmPoint®
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, AlarmPoint is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		If (ba2 = 1 and sa3 =1)
			{
			Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
			WinActivate, AlarmPoint®
			Sleep 1000
			Loop
				{
				IfWinExist, AlarmPoint® - Windows Internet Explorer
					{
					Break
					}
					Sleep 100
				}
				WinGetActiveStats, Title, Width, Height, X, Y
				WinGet, MinMaxState, MinMax, A
				If MinMaxState = 1
					{
					WinMaximize, A
					Sleep 1000
					}
				Send %UserName%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send %Password%
				Sleep 1000
				Send {Enter}
			}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				SetTitleMatchMode, 2
				SetTitleMatchMode, slow
				DetectHiddenWindows, On
				IfWinExist, - Windows Internet Explorer
					{
					WinActivate, - Windows Internet Explorer
					Sleep 1000
					Run "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
					WinActivate, AlarmPoint®
					Sleep 1000
					Loop
						{
						IfWinExist, AlarmPoint® - Windows Internet Explorer
							{
							Break
							}
							Sleep 100
						}
					WinGetActiveStats, Title, Width, Height, X, Y
					WinGet, MinMaxState, MinMax, A
					If MinMaxState = 1
						{
						WinMaximize, A
						Sleep 1000
						}
					Send %UserName%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send %Password%
					Sleep 1000
					Send {Enter}
					}	
			Else
			IfWinNotExist, - Windows Internet Explorer
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
				WinActivate, AlarmPoint®
				Sleep 1000
				Loop
					{
					IfWinExist, AlarmPoint® - Windows Internet Explorer
						{
						Break
						}
						Sleep 100
					}
				WinGetActiveStats, Title, Width, Height, X, Y
				WinGet, MinMaxState, MinMax, A
				If MinMaxState = 1
					{
					WinMaximize, A
					Sleep 1000
					}
				Send %UserName%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send %Password%
				Sleep 1000
				Send {Enter}
				}
			}
		Else
		If (ba1 =1 and sa3 = 1)
			{
			Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			Sleep 1000
			Run  chrome.exe "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
			Sleep 1000
			WinActivate, AlarmPoint®
			Sleep 3000
			Send %UserName%{Tab}
			Sleep 1800
			Send %Password%{Tab}
			Sleep 1000
			Send {Enter}	
			}
		Else
		If (ba1 = 1 and sa4 = 1)
			{
			IfWinExist, - Google Chrome
				{
				WinActivate, - Google Chrome
				Sleep 1000
				Run  chrome.exe "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
				Sleep 1000
				WinActivate, AlarmPoint®
				Sleep 3000
				Send %UserName%{Tab}
				Sleep 1800
				Send %Password%{Tab}
				Sleep 1000
				Send {Enter}
				}
			Else	
			IfWinNotExist, - Google Chrome
				{
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
				Sleep 1000
				Run  chrome.exe "http://alarmpoint.cernerasp.com/alarmpoint/SignOn.do"	
				Sleep 1000
				WinActivate, AlarmPoint®
				Sleep 3000
				Send %UserName%{Tab}
				Sleep 1800
				Send %Password%{Tab}
				Sleep 1000
				Send {Enter}	
				}
			}			
		Sleep 3000
		}
;	_________________________________________________________________

	ConnectIT:

	If var2 = 0
		GoTo, Intercall
	Else
	If var2 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Connect IT
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Connect IT is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		If (ba2 = 1 and sa3 = 1)
			{
			Run iexplore.exe  "http://ccnwic01/Prod/ConnectIt.aspx"			
			}
		Else
		If (ba2 = 1 and sa4 = 1)
			{
			IfWinExist, - Windows Internet Explorer
				{
				WinActivate, - Windows Internet Explorer
				Sleep 100
				Run "http://ccnwic01/Prod/ConnectIt.aspx"
				Sleep 100
				}
			Else
			IfWinNotExist, - Windows Internet Explorer
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://ccnwic01/Prod/ConnectIt.aspx"	
				}	
			}
		Else
		If (ba1 =1 and sa3 = 1)
			{
			Run chrome.exe
			Sleep 100
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/Prod/ConnectIt.aspx"
			WinActivate, - Google Chrome	
			Sleep 300
			Send {Enter}
			}
		Else
		If (ba1 =1 and sa4 =1)
			{
			IfWinExist, - Google Chrome
				{
				WinActivate, - Google Chrome
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/Prod/ConnectIt.aspx"	
				Sleep 100
				}
			Else
			IfWinNotExist, - Google Chrome
				{
				Run chrome.exe
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/Prod/ConnectIt.aspx"
				WinActivate, - Google Chrome	
				Sleep 300
				Send {Enter}
				}
			}
		Sleep 3000	
		}
;	_________________________________________________________________

	Intercall:

	If var4 = 0
		Goto, Irongate
	Else
	If var4 = 1
		{
		SetTitleMatchMode 2
		SetTitleMatchMode, slow
		IfWinExist, Welcome to InterCall Online -
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, InterCall Online is already opened on your desktop.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide					
			}
		Else
		If (ba2 = 1 and sa3 = 1)
			{
			Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://www.intercallonline.com/IOL.action"	
			Sleep 1000
			WinActivate, Welcome to InterCall Online -
			Sleep 3000
			Send {Tab 9}
			Sleep 1000
			Send %IntercallUser%
			Sleep 300
			Send {Tab}
			Sleep 1000
			Send %IntercallPass%
			Sleep 300
			Send {Tab}
			Sleep 1000
			Send {Enter}	
			}
		Else
		If (ba2 = 1 and sa4 = 1)
			{
			IfWinExist, - Windows Internet Explorer
				{
				Run "https://www.intercallonline.com/IOL.action"	
				Sleep 500
				WinActivate, Welcome to InterCall Online -
				Sleep 3000
				Send {Tab 9}
				Sleep 1000
				Send %IntercallUser%
				Sleep 300
				Send {Tab}
				Sleep 1000
				Send %IntercallPass%
				Sleep 300
				Send {Tab}
				Sleep 1000
				Send {Enter}	
				}
			Else
			IfWinNotExist, - Windows Internet Explorer
				{
		 		Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://www.intercallonline.com/IOL.action"
				Sleep 500
				WinActivate, Welcome to InterCall Online -
				Sleep 3000
				Send {Tab 9}
				Sleep 1000
				Send %IntercallUser%
				Sleep 300
				Send {Tab}
				Sleep 1000
				Send %IntercallPass%
				Sleep 300
				Send {Tab}
				Sleep 1000
				Send {Enter}		
				}
			}
		Else
		If (ba1 = 1 and sa3 = 1)
			{
			Run chrome.exe 
			Sleep 100
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.intercallonline.com/IOL.action"
			Sleep 1000
			Send {Enter}
			Sleep 2000
			Send {Tab}
			Sleep 1000
			Send %IntercallUser%
			Sleep 1000
			Send {Tab}
			Sleep 1000
			Send, %Password%
			Sleep 500
			Send {Tab}
			Sleep 500
			Send {Enter}
			}
		Else
		If (ba1 = 1 and sa4 = 1)
			{
			IfWinExist, - Google Chrome
				{
				WinActivate, - Google Chrome
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.intercallonline.com/IOL.action"
				Sleep 100
				WinActivate, Welcome to InterCall Online -
				Sleep 1000
				Send {Enter}
				Sleep 2000
				Send {Tab}
				Sleep 1000
				Send %IntercallUser%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send, %Password%
				Sleep 500
				Send {Tab}
				Sleep 500
				Send {Enter}
				}
			Else
			IfWinNotExist, - Google Chrome
				{
				Run chrome.exe 
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://www.intercallonline.com/IOL.action"
				Sleep 1000
				Send {Enter}
				Sleep 2000
				Send {Tab}
				Sleep 1000
				Send %IntercallUser%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send, %Password%
				Sleep 500
				Send {Tab}
				Sleep 500
				Send {Enter}
				}
			}
	
		Sleep 5000
		}
;	_________________________________________________________________
		
	Irongate:

	If var6 = 0
		GoTo, Navigator
	Else
	If var6 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Citrix XenApp - Applications
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Irongate Applications are already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 
			}	
		Else
		IfWinNotExist, Citrix XenApp - Applications
			If (ba2 = 1 and sa3 = 1)
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://irongate.cernerworks.com/Prod/auth/login.aspx"	
				Sleep 3000				
				IfWinExist, Citrix XenApp - Logon 
					{
					WinActivate, Citrix XenApp - Logon
					Sleep 2000
					Send, %Username%
					Sleep 500
					Send {Tab}
					Sleep 500
					Send, %Password%
					Sleep 500
					Send {Tab}
					Sleep 500
					Send {Enter}
					}
				Else 
					Sleep 10		
				} 	
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				IfWinExist, - Windows Internet Explorer
					{
					Run "https://irongate.cernerworks.com/Prod/auth/login.aspx"	
					Sleep 3000
					IfWinExist, Citrix XenApp - Logon 
						{
						WinActivate, Citrix XenApp - Logon
						Sleep 2000
						Send, %Username%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send, %Password%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send {Enter}
						}
					Else 
						Sleep 10
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://irongate.cernerworks.com/Prod/auth/login.aspx"	
					Sleep 2000
					IfWinExist, Citrix XenApp - Logon
						{
						WinActivate, Citrix XenApp - Logon
						Sleep 3000
						Send, %Username%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send, %Password%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send {Enter}
						}
					Else 
						Sleep 10	
					}	
				}
			Else
			If (ba1 =1 and sa3 = 1)
				{
				Run chrome.exe
				Sleep 100
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://irongate.cernerworks.com/Prod/auth/login.aspx"
				WinActivate, - Google Chrome
					Sleep 5000
					Send {Tab 5}
					Sleep 3000
					Send {Enter}	
					Sleep 3000
					Send, %Username%
					Sleep 500
					Send {Tab}
					Sleep 500
					Send, %Password%
					Sleep 500
					Send {Tab}
					Sleep 500
					Send {Enter}
				}
			Else
			If (ba1 =1 and sa4 =1)
				{
				IfWinExist, - Google Chrome
					{
					WinActivate, - Google Chrome
					Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://irongate.cernerworks.com/Prod/auth/login.aspx"		
						Sleep 3000
						Send, %Username%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send, %Password%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send {Enter}
					}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run chrome.exe
					Sleep 100
					Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://irongate.cernerworks.com/Prod/auth/login.aspx"
					WinActivate, - Google Chrome
						Sleep 5000
						Send {Tab 5}
						Sleep 3000
						Send {Enter}
						Sleep 3000
						Send, %Username%
						Sleep 500	
						Send {Tab}
						Sleep 500
						Send, %Password%
						Sleep 500
						Send {Tab}
						Sleep 500
						Send {Enter}
					}
				}
			Sleep 5000	
			}
;	_________________________________________________________________

	
	Navigator:

	If var9 = 0
		GoTo, PUMA
	Else
	If var9 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Siebel Call Center
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Navigator is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		If (ba2 = 1 and sa3 = 1)
			Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://navigator.cerner.com/callcenter"				
		Else
		If (ba2 = 1 and sa4 = 1)
			{
			IfWinExist, - Windows Internet Explorer
				{
				WinActivate, - Windows Internet Explorer
				Sleep 1000
				Run "http://navigator.cerner.com/callcenter"
				Sleep 100
				}
			Else
			IfWinNotExist, - Windows Internet Explorer
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://navigator.cerner.com/callcenter"		
			}
		Else	 
		If (ba1 = 1 and sa3 = 1)
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon103, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Navigator should only be opened with Internet Explorer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 
			Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://navigator.cerner.com/callcenter"				
			}
		Else
		If (ba1 = 1 and sa4 = 1)
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon103, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Navigator should only be opened with Internet Explorer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 
			IfWinExist, - Windows Internet Explorer
				{
				WinActivate, - Windows Internet Explorer
				Sleep 1000
				Run "http://navigator.cerner.com/callcenter"
				Sleep 100
				}
		Else
		IfWinNotExist, - Windows Internet Explorer
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://navigator.cerner.com/callcenter"			
		}
		Sleep 3000	
	}
;	_________________________________________________________________

	PUMA:
	If var12 = 0
		Goto, Remedy
	Else
	If var12 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, taspmowas08.cernerasp.com/index.php?launch=MyRemedy
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, PUMA is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		IfWinNotExist, taspmowas08.cernerasp.com/index.php?launch=MyRemedy
			If (ba2 = 1 and sa3 = 1)
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"	
				WinActivate, taspmowas08.cernerasp.com/index.php?launch=MyRemedy
				Sleep 3000
				Send {Tab 9}
				Send, %Username%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send, %Password%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send {Enter}
				}
		 	Else
			If (ba2 = 1 and sa4 =1)
				{
				IfWinExist, - Windows Internet Explorer
					{
					Run "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"	
					WinActivate, taspmowas08.cernerasp.com/index.php?launch=MyRemedy
					Sleep 3000
					Send {Tab 9}
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send, %Password%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send {Enter}
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"	
					WinActivate, taspmowas08.cernerasp.com/index.php?launch=MyRemedy
					Sleep 3000
					Send {Tab 9}
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send, %Password%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send {Enter}
					}
				}
			Else
			If (ba1 =1 and sa3 = 1)
				{
				Run chrome.exe
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"
				WinActivate, - Google Chrome	
				Sleep 1000
				Send {Enter}
				Sleep 1000
				Send {Tab}	
				Sleep 3000
				Send, %Username%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send %Password%
				Sleep 1000
				Send {Enter}
				}
			Else	
			If (ba1 =1 and sa4 =1)
				{
				IfWinExist, - Google Chrome
					{
					WinActivate, - Google Chrome
					Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"	
					Sleep 1000
					Send {Enter}
 					Sleep 1000
					Send {Tab}	
					Sleep 3000
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send %Password%
					Sleep 1000
					Send {Enter}
					}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run chrome.exe
					Sleep 100
					Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://taspmowas08.cernerasp.com/index.php?launch=MyRemedy"
					WinActivate, - Google Chrome	
					Sleep 1000
					Send {Enter}
					Sleep 1000
					Send {Tab}	
					Sleep 3000
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send %Password%
					Sleep 1000
					Send {Enter}
					}
				}
		Sleep 3000	
		}
;	_________________________________________________________________

	Remedy:

	If var14 = 0
		Goto, Dashboard
	Else
	If var14 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, BMC Remedy
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Remedy is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		IfWinNotExist, remedy.cerner.com
			If (ba2 = 1 and sa3 = 1)
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://remedy.cerner.com"	
				WinActivate, remedy.cerner.com
				Sleep 3000
				Send {Tab 9}
				Sleep 1000
				Send, %Username%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send, %Password%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send {Enter}
				}
		 	Else
			If (ba2 = 1 and sa4 =1)
				{
				IfWinExist, - Windows Internet Explorer
					{
					Run "https://remedy.cerner.com"	
					WinActivate, remedy.cerner.com
					Sleep 3000
					Send {Tab 9}
					Sleep 1000
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send, %Password%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send {Enter}
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://remedy.cerner.com"	
					WinActivate, remedy.cerner.com
					Sleep 3000
					Send {Tab 9}
					Sleep 1000
					Send, %Username%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send, %Password%
					Sleep 1000
					Send {Tab}
					Sleep 1000
					Send {Enter}
					}
				}
			Else
			If (ba1 =1 and sa3 = 1)
				{
				Run chrome.exe
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://remedy.cerner.com"
				WinActivate, - Google Chrome			
				Sleep 3000
				Send {Enter}
				Sleep 2000
				Send {Tab}	
				 Sleep 1000
				 Send, %Username%
				 Sleep 1000
				 Send {Tab}
				 Sleep 2000
				 Send %Password%
				 Sleep 1000 
				 Send {Tab}
				 Sleep 1000
				 Send {Enter}
			}
		Else	
		If (ba1 =1 and sa4 =1)
			{
			IfWinExist, - Google Chrome
				{
				WinActivate, - Google Chrome
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://remedy.cerner.com"			
				Sleep 3000
				Send {Enter}
				Sleep 2000
				Send {Tab}	
				Sleep 1000
				Send, %Username%
				Sleep 1000
				Send {Tab}
				Sleep 2000
				Send %Password%
				Sleep 1000 
				Send {Tab}
				Sleep 1000
				Send {Enter}
				}
			Else
			IfWinNotExist, - Google Chrome
				{
				Run chrome.exe
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://remedy.cerner.com"
				WinActivate, - Google Chrome			
				Sleep 3000
				Send {Enter}
				Sleep 2000
				Send {Tab}	
				 Sleep 1000
				 Send, %Username%
				 Sleep 1000
				 Send {Tab}
				 Sleep 2000
				 Send %Password%
				 Sleep 1000 
				 Send {Tab}
				 Sleep 1000
				 Send {Enter}
				}
			}
		Sleep 4000	
		}
;	_________________________________________________________________

	Dashboard:

	If var8 = 0
		GoTo, Console
	Else
	If var8 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, ccnwic01/prod/DashBoards.aspx
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, The IRC Dashboard is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		If (ba2 = 1 and sa3 = 1)
			{
			Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe"  "http://ccnwic01/prod/DashBoards.aspx"				
			} 	
		Else
		If (ba2 = 1 and sa4 = 1)
			{
			IfWinExist, - Windows Internet Explorer
				{
				WinActivate, - Windows Internet Explorer
				Sleep 100
				Run "http://ccnwic01/prod/DashBoards.aspx"
				Sleep 100
				}
			Else
			IfWinNotExist, - Windows Internet Explorer
				{
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://ccnwic01/prod/DashBoards.aspx"	
				}	
			}
		Else
		If (ba1 =1 and sa3 = 1)
			{
			Run  chrome.exe
			Sleep 100
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/prod/DashBoards.aspx"
			WinActivate, - Google Chrome
			Sleep 300
			Send {Enter}
			}
		Else
		If (ba1 =1 and sa4 =1)
			{
			IfWinExist, - Google Chrome
				{
				WinActivate, - Google Chrome
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/prod/DashBoards.aspx"
				}
			Else
			IfWinNotExist, - Google Chrome
				{
				Run  chrome.exe
				Sleep 100
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://ccnwic01/prod/DashBoards.aspx"
				WinActivate, - Google Chrome
				Sleep 300
				Send {Enter}
				}
			}
		Sleep 3000	
		}
;	_________________________________________________________________

	Console:

	If var5 = 0
		Goto, GroupChat
	Else
	If var5 = 1
		{
		SetTitleMatchMode 3
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, IRC Console
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, The IRC Console is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		IfWinNotExist, IRC Console
			{
			Sleep 1000
			Run  "C:\Program Files (x86)\Cerner Corporation\IRC Console\IRC Console.exe"
			}
		Sleep 3000
		}
;	_________________________________________________________________

	GroupChat:
	If var7 = 0
		Goto, Optix
	Else
	If var7 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		IfWinExist, Group Chat
			{				
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Group Chat is already opened on your computer.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide 	
			}
		Else
		Sleep 1000
		Run "C:\Program Files (x86)\Microsoft Lync Server 2010\Group Chat Client\GroupChatConsole.exe"
		Sleep 300	0
		}
;	_________________________________________________________________

	Optix:
	If var11 = 0
		Goto, QuickHit
	Else
	If var11 = 1
		{
		Process, Exist, OPTIX Infinity.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Optix Infinity is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide
				}
		Else
		If (ErrorLevel = 0)
			{
			Sleep 1000
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon103, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Optix Infinity will run hidden in your SysTray.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide
			Run "C:\Users\%Username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ConnectWorks\OPTIX Infinity.appref-ms"
			}
		Sleep 3000
		}	
;	_________________________________________________________________

	QuickHit:
	If var13 = 0
		Goto,  Intellinet
	Else
	If var13 = 1
		{
		Process, Exist, QuickHit.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24,QuickHit is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide
				}
		Else
		If (ErrorLevel = 0)
			{
			Sleep 1000
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon103, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, QuickHit will initially be minimized on your Toolbar.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide
			Run "C:\Users\%Username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Quickhit\QuickHit.appref-ms"
			Sleep 5000
			WinMinimize, QuickHit
			}
		Sleep 5000
		}
;	_________________________________________________________________
	
	Intellinet:

	If var3 = 0
		Goto, Olympus
	Else
	If var3 = 1
		{
		SetTitleMatchMode 2
		SetTitleMatchMode, slow
		IfWinExist, IntelliNet - \\Remote 
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24,Intellinet is already opened on your desktop.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, Intellinet - \\Remote
				{
				If (ba1 = 1)
					{
					Gui, 2:Color, 000011
					Gui, 2:Font, S10, Arial
					Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon103, imageres.dll 
					Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, It is best to use Internet Explorer to open Intellinet.                      					    `n`n`n
					Gui, 2:Color, 000011
					Gui, 2:Show  
					Sleep 2000
					Gui, 2:Hide
					}
				Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://intellinet.cerner.com/Citrix/XenApp/site/default.aspx"
				Sleep 4000
				Send, %Username%
				Sleep 1000
				Send {Tab}
				Sleep 1000
				Send %Password%
				Sleep 2000
				Send {Enter}
				Sleep 3000
				Send {Tab 19}
				Send {Enter}
				Sleep 1000
				Send {Enter}
				WinClose, Citrix XenApp - Applications - Windows Internet Explorer
				Send {Enter}
				}
		}
		Sleep 3000
;	_________________________________________________________________	

	Olympus:

	If var10 = 0
		Goto, Lync
	Else
	If var10 = 1
		{
		Process, Exist, terminals.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Olympus - CAM is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide
				}
		Else
		If (ErrorLevel = 0)
			sleep 5000
			Run "C:\Program Files (x86)\Terminals\Terminals.exe"
			WinActivate, Terminals Password
			Sleep 3000
			Send I1lstabu.2o12
			Sleep 2000
			Send {enter}
		Sleep 5000
		}	
				
;	_________________________________________________________________

	Lync:

	If var15 = 0
		Goto, OneNote
	Else
	If var15 = 1
		{
		Process, Exist, communicator.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft Lync is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide 	
				}
			Else
			If (ErrorLevel = 0)
			Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Lync\Microsoft Lync 2010.lnk"
			Sleep 3000
		}
;	_________________________________________________________________

	OneNote:
	
	If var16 = 0
		Goto, Outlook
	Else
	If var16 = 1
		{
		Process, Exist, onenotem.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft OneNote is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide 	
				}
			Else
			If (ErrorLevel = 0)
			Run onenote.exe
			Sleep 3000
		}
;	_________________________________________________________________

	Outlook:
	
	If var17 = 0
		Goto, Notepad
	Else
	If var17 = 1
		{
		Process, Exist, OUTLOOK.EXE
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft Outlook is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide 	
				}
			Else
			If (ErrorLevel = 0)
			Run outlook.exe
			Sleep 3000
		}
;	_________________________________________________________________

	Notepad:
	
	If var18 = 0
		Goto, Matrix
	Else
	If var18 = 1
		{
		Run notepad.exe
		}
	Sleep 3000
;	_________________________________________________________________

	Matrix:
	
	If var20 = 0
		Goto, Execs
	Else
	If var20 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, CC_Escalation Matrix
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The Escalation Matrix Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, CC_Escalation Matrix
			{
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/public/cortex/CC_Escalation+Matrix-TRGINT"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					WinActivate, CC_Escalation Matrix-TRGINT
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				IfWinExist, - Windows Internet Explorer
				Run "https://wiki.ucern.com/display/public/cortex/CC_Escalation+Matrix-TRGINT"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					WinActivate, CC_Escalation Matrix-TRGINT
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/public/cortex/CC_Escalation+Matrix-TRGINT"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}		
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/public/cortex/CC_Escalation+Matrix-TRGINT"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					WinActivate, CC_Escalation Matrix-TRGINT
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/public/cortex/CC_Escalation+Matrix-TRGINT"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					WinActivate, CC_Escalation Matrix-TRGINT
					}
				}
			}
		Sleep 2000
		}
;	_________________________________________________________________

	Execs:
	
	If var21 = 0
		Goto, Area
	Else
	If var21 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, CWx Exec OnCall 
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The Exec OnCall Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist,CWx Execs OnCall
			Sleep 200
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				Sleep 2000
				IfWinExist, - Windows Internet Explorer
						{
						WinActivate, A
						Run "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}	
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
				WinActivate, - Google Chrome
				Sleep 500
				Run chrome.exe "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				IfWinExist, - Google Chrome
						{
						WinActivate, CWx Exec OnCall
						Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
					WinActivate, - Google Chrome
					Sleep 500
					Run chrome.exe "https://wiki.ucern.com/display/CrnCon/CWx+Exec+OnCall"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}	
				}
		Sleep 2000	
		}			
;	_________________________________________________________________

	Area:
	
	If var22 = 0
		Goto, IRC
	Else
	If var22 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, IRC Area of Focus
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The IRC Area of Focus Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, IRC Area of Focus
			{
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				Sleep 2000
				IfWinExist, - Windows Internet Explorer
						{
						WinActivate, A
						Run "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
				WinActivate, - Google Chrome
				Sleep 500
				Run chrome.exe "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				IfWinExist, - Google Chrome
					{
						Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
					}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
					WinActivate, - Google Chrome
					Sleep 500
					Run chrome.exe "https://wiki.ucern.com/display/CrnCon/IRC+Area+of+Focus"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}	
				}	
		Sleep 2000
		}			
;	_________________________________________________________________
	
	IRC:
	
	If var23= 0
		Goto, Pilot
	Else
	If var23 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Immediate Response Center (IRC) 
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The IRC Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, Immediate Response Center (IRC) 
			{
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				IfWinExist, - Windows Internet Explorer
						{
						WinActivate, A
						Run "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
				WinActivate, - Google Chrome
				Sleep 500
				Run chrome.exe "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				IfWinExist, - Google Chrome
						{
						Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
					}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
					WinActivate, - Google Chrome
					Sleep 500
					Run chrome.exe "https://wiki.ucern.com/display/CrnCon/Immediate+Response+Center (IRC)"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}	
				}
		Sleep 2000
		}		
;	_________________________________________________________________

	Pilot:
	
	If var25 = 0
		Goto, Scrum
	Else
	If var25 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Pilot Line 
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The Pilot Line Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist,CWx Execs OnCall
			{
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				IfWinExist, - Windows Internet Explorer
						{
						WinActivate, A
						Run "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
				WinActivate, - Google Chrome
				Sleep 500
				Run chrome.exe "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				IfWinExist, - Google Chrome
						{
						Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
						}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
					WinActivate, - Google Chrome
					Sleep 500
					Run chrome.exe "https://wiki.ucern.com/display/CrnCon/Pilot+Line"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Send {Enter}
						}
					}	
				}
			}	
			
		Sleep 2000
		}
			
;	_________________________________________________________________

	Scrum:
	
	If var26 = 0
		Goto, Portal
	Else
	If var26 = 1
		{
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow
		DetectHiddenWindows, On
		IfWinExist, Incident Management Scrum Notes 
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The Scrum Notes Wiki Page is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, Incident Management Scrum Notes 
			{
			If (ba2 = 1 and sa3 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba2 = 1 and sa4 = 1)
				{
				IfWinExist, - Windows Internet Explorer
					{
						WinActivate, A
						Run "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
						Sleep 2000
						IfWinExist, Cerner Care Account -
							{				
							WinActivate, Cerner Care Account -
							Sleep 500
							Send {Shift Down}
							Send {Tab}
							Send {Shift Up}
							Sleep 500
							Send {Enter}
							}
					}
				Else
				IfWinNotExist, - Windows Internet Explorer
					{
					Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}
				}
			Else
			If (ba1 = 1 and sa3 = 1)
				{	
				Run chrome.exe  
				WinActivate, - Google Chrome
				Sleep 500
				Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
				Sleep 2000
				IfWinExist, Cerner Care Account -
					{				
					WinActivate, Cerner Care Account -
					Sleep 500
					Send {Shift Down}
					Send {Tab}
					Send {Shift Up}
					Sleep 500
					Send {Enter}
					}
				}
			Else
			If (ba1 = 1 and sa4 = 1)
				{
				IfWinExist, - Google Chrome
					{
					Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}
				Else
				IfWinNotExist, - Google Chrome
					{
					Run chrome.exe
					WinActivate, - Google Chrome
					Sleep 500
					Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://wiki.ucern.com/display/CrnCon/Incident+Management+Scrum+Notes"
					Sleep 2000
					IfWinExist, Cerner Care Account -
						{				
						WinActivate, Cerner Care Account -
						Sleep 500
						Send {Shift Down}
						Send {Tab}
						Send {Shift Up}
						Sleep 500
						Send {Enter}
						}
					}	
				}
			}
		Sleep 2000	
		}		
;	_________________________________________________________________
	
	Portal:
	
	If var27 = 0
		Goto, Mapping
	Else
	If var27 = 1
		{
		SetTitleMatchMode 2
		SetTitleMatchMode, slow
		IfWinExist,  IRC Console - Web  
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, s10, Arial
			Gui, 2:Add, Picture, c01 cw000011 h-1 w24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 cFFFFFF x46 y09 h24, The IRC Console Web Portal is already opened on your computer.						`n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show
			Sleep 2000
			Gui, 2:Hide
			}
		Else
		IfWinNotExist, IRC Console - Web -  
			{
			If (ba2 = 1)
				{
				Run  "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "http://knowledge/sitman/view_active/view_incident_list.cgi"
				}
			Else
			If (ba1 = 1)
				{	
				Run  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
				WinActivate, - Google Chrome
				Sleep 500
				Run chrome.exe "http://knowledge/sitman/view_active/view_incident_list.cgi"
				Sleep 500
				Send {Enter}
				}
			}
		Sleep 3000
		}			
;	_________________________________________________________________
	
	Mapping:
	
	If var19 = 0
		{
		Goto, Distribution

		}
	Else
	If var19 = 1
	{
	SetTitleMatchMode 2
	SetTitleMatchMode, slow
	DetectHiddenWindows, On
	IfWinExist, Client Operations Mapping
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y098h24, The Client Mapping spreadsheet is already opened on your desktop.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide		
			}
	Else
	IfWinNotExist, Client Operations Mapping
		{
		Run iexplore.exe "https://my.cerner.com/org/CernerWorks/SI/Reporting/CernerWorks Reports/Client Operations Mapping.xls"
		Sleep 2000
		Send {Tab 3}
		Sleep 2000
		Send {Enter}
		Sleep 8000
		IfWinExist, Password, ahk_class bosa_sdm_XL9
		Sleep 100
		WinActivate, Password, ahk_class bosa_sdm_XL9
		Send {Tab}{Tab}
		Sleep 100
		Send {Enter}			
		}
	Sleep 5000
	}
;	_________________________________________________________________ 	

	Distribution:
	
	If var24 = 0
		{
		Goto, Close
		}
	Else
	If var24 = 1
	{
	SetTitleMatchMode 2
	SetTitleMatchMode, slow
	IfWinExist, Incident Report Distribution
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, The IR Distribution document is already opened on your desktop.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide		
			}	
		Else
		Run iexplore.exe "https://my.cerner.com/team/CernerWorksIRC/IRC/SitMan/Uncontrolled Document Library/Incident Report Distribution Groups.docx"
		Sleep 2000
		Send {Tab 3}
		Sleep 2000
		Send {Enter}
	Sleep 3000
	}	
;	_________________________________________________________________ 

	!x::Send %Username%{Tab}%Password%{Tab}{Enter}
;	_________________________________________________________________ 

	!e:: Run iexplore.exe
;	_________________________________________________________________ 

	!g:: Run chrome.exe
;	_________________________________________________________________

	Close:

	Gui, 2:Color, 000011
	Gui, 2:Font, S10, Arial
	Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll
	Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, The script has completed.  There may be some applications still loading.	       					    `n`n`n		
	Gui, 2:Color, 000011
	Gui, 2:Show  
	Sleep 4000
	Gui, 2:Hide

	GuiClose:
	ExitApp