	Username = be034739
	Password = Drag0n.h4wk
		
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
	Gui, 1:Show, x542 y85 h651 w510, Blake's Quick Launcher BETA
	
	Color0 := "c999999"
	Color1 := "c66FF00"
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	Gui, 1:Add, GroupBox, X15 Y10 W480 H50, Internet Browser
	Gui, 1:Font, s10 C999999 
	Gui, 1:Add, Radio, checked x78 y33 vba1 gCheck, Google Chrome
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
	Gui, 1:Add, Radio, checked x265 y93 vsa4 gStyle, Tabs within One Window
	Gui, 1:Add, Picture, x188 y88 h-1 w24 C000011 Icon99, shell32.dll
	Gui, 1:Color, 000011
	Gui, 1:Add, Picture, x432 y88 h-1 w24 C000011 Icon98, shell32.dll
	Gui, 1:Color, 000011 
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial 
	Gui, 1:Add, GroupBox, x15 y130 w480 h405, General Applications/Links
	Gui, 1:Font, s10 c99999
	Gui, 1:Add, CheckBox, x30 y160 h15 w15 vvar1 gToggle, 
	Gui, 1:Add, Text, x50 y160 vvartxt1 gToggle %Color0%, Microsot Outlook
	Gui, 1:Add, CheckBox, x30 y185 h15 w15 vvar2 gToggle,
	Gui, 1:Add, Text, x50 y185 vvartxt2 gToggle %Color0%, Microsoft OneNote
	Gui, 1:Add, CheckBox, x30 y210 h15 w15 vvar3 gToggle,
	Gui, 1:Add, Text, x50 y210 vvartxt3 gToggle %Color0%, Skype for Business
	Gui, 1:Add, CheckBox, x30 y235 h15 w15 vvar4 gToggle,
	Gui, 1:Add, Text, x50 y235 vvartxt4 gToggle %Color0%, Sublime Text
	Gui, 1:Add, CheckBox, x30 y260 h15 w15 vvar5 gToggle,
	Gui, 1:Add, Text, x50 y260 vvartxt5 gToggle %Color0%, Royals - CWx
	Gui, 1:Add, CheckBox, x30 y285 h15 w15 vvar6  gToggle,
	Gui, 1:Add, Text, x50 y285 vvartxt6 gToggle %Color0%, VMWare Workstation
	Gui, 1:Add, CheckBox, x30 y310 h15 w15 vvar7 gToggle,
	Gui, 1:Add, Text, x50 y310 vvartxt7 gToggle %Color0%, Portable Apps
	Gui, 1:Add, CheckBox, x30 y335 h15 w15 vvar8 gToggle,
	Gui, 1:Add, Text, x50 y335 vvartxt8 gToggle %Color0%, Chrome Tabs
	Gui, 1:Add, CheckBox, x30 y360 h15 w15 vvar9 gToggle,
	Gui, 1:Add, Text, x50 y360 vvartxt9 gToggle %Color0%, Olympus
	Gui, 1:Add, CheckBox, x30 y385 h15 w15 vvar10 gToggle,
	Gui, 1:Add, Text, x50 y385 vvartxt10 gToggle %Color0%, Microsoft Teams
	Gui, 1:Add, CheckBox, x30 y410 h15 w15 vvar11 gToggle,
	Gui, 1:Add, Text, x50 y410 vvartxt11 gToggle %Color0%, Microsoft Yammer
	Gui, 1:Add, CheckBox, x30 y435 h15 w15 vvar12 gToggle,
	Gui, 1:Add, Text, x50 y435 vvartxt12 gToggle %Color0%, FileZilla
	Gui, 1:Add, CheckBox, x30 Y460 h15 w15 vvar13 gToggle,
	Gui, 1:Add, Text, x50 y460 vvartxt13 gToggle %Color0%, Discord
	Gui, 1:Add, CheckBox, x30 y485 h15 w15 vvar14 gToggle,
	Gui, 1:Add, Text, x50 y485 vvartxt14 gToggle %Color0%, Placeholder
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	;Gui, 1:Add, GroupBox, x263 y130 w233 h405, General Applications/Links
	Gui, 1:Font, s10 c999999
	Gui, 1:Add, CheckBox, x278 y160 h15 w15 vvar15 gToggle,
	Gui, 1:Add, Text, x298 y160 vvartxt15 gToggle %Color0%, Sleep
	Gui, 1:Add, CheckBox, x278 y185 h15 w15 vvar16 gToggle,
	Gui, 1:Add, Text, x298 y185 vvartxt16 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y210 h15 w15 vvar17 gToggle,
	Gui, 1:Add, Text, x298 y210 vvartxt17 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y235 h15 w15 vvar18 gToggle,
	Gui, 1:Add, Text, x298 y235 vvartxt18 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y260 h15 w15 vvar19 gToggle,
	Gui, 1:Add, Text, x298 y260 vvartxt19 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y285 h15 w15 vvar20 gToggle,
	Gui, 1:Add, Text, x298 y285 vvartxt20 gToggle %Color0%, Placeholder
;	_________________________________________________________________

	Gui, 1:Font, s10 cFFFFFF, Arial
	;Gui, 1:Add, GroupBox,x263 y275 w232 h260, Documents/Links  	
	Gui, 1:Font, s10 c999999
	Gui, 1:Add, CheckBox, x278 y310 h15 w15 vvar21 gToggle,
	Gui, 1:Add, Text, x298 y310 vvartxt21 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y335 h15 w15 vvar22 gToggle,
	Gui, 1:Add, Text, x298 y335 vvartxt22 gToggle %COlor0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y360 h15 w15 vvar23 gToggle,
	Gui, 1:Add, Text, x298 y360 vvartxt23 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y385 h15 w15 vvar24 gToggle,
	Gui, 1:Add, Text, x298 y385 vvartxt24 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y410 h15 w15 vvar25 gToggle,
	Gui, 1:Add, Text, x298 y410 vvartxt25 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y435 h15 w15 vvar26 gToggle,
	Gui, 1:Add, Text, x298 y435 vvartxt26 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y460 h15 w15 vvar27 gToggle,
	Gui, 1:Add, Text, x298 y460 vvartxt27 gToggle %Color0%, Placeholder
	Gui, 1:Add, CheckBox, x278 y485 h15 w15 vvar28 gToggle,
	Gui, 1:Add, Text, x298 y485 vvartxt28 gToggle %Color0%, Placeholder
	
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

	If (var1 = 0 and var2 = 0 and var3 = 0 and var4 = 0 and var5 = 0 and var6 = 0 and var7 = 0 and var8 = 0 and var9 = 0 and var10 = 0 and var11 = 0 and var12 = 0 and var13 = 0 and var15 = 0)
 		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please select item(s) to launch.  `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide
		Return     
		}
	Else
	Sleep 10
;	_________________________________________________________________ 

	;If (var25 = 1 or var26 = 1) 		 
	;	{
	;	If (ba1 = 0 and ba2 = 0)
	;		{
	;		Gui, 2:Color, 000011
	;		Gui, 2:Font, S10, Arial
	;		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
	;		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please choose an Internet Browser. `n`n`n
	;		Gui, 2:Color, 000011
	;		Gui, 2:Show  
	;		Sleep 2000
	;		Gui, 2:Hide
	;		Return     
	;		}
	;	Else 
	;	Sleep 10
	;	}
;	_________________________________________________________________

	If (ba1 = 1 or ba2 = 1) 		 
		{
		If (sa3 = 0 and sa4 = 0)
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon101, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Please choose a Browser Format. `n`n`n
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

If (var5 = 0)
		Goto, Outlook
	Else
	If (var99 = 1)
		{
		If (ErrorLevel > 0)
			clipboard =
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\res\GUI.ico
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32, Checking Cisco VPN state...  `n`n`n
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
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32,Cisco VPN state:  Disconnected.  Loading and Connecting Cisco VPN.  `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 5000
				;Gui, 2:Hide
				}	
			Run "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
			Sleep 5000
			IfWinExist, Cisco AnyConnect Secure Mobility Client
				{
				WinActivate, Cisco AnyConnect Secure Mobility Client
				Send {Tab}{Tab}{Enter}
				}
			Sleep 10000
			IfWInExist, Cisco AnyConnect | cwxvpn
			WinActivate, Cisco AnyConnect | cwxvpn
				{
				Sleep 1000
				Send %Password%
				Sleep 300
				Send {Tab}
				Sleep 300
				Send {Enter}
				Sleep 1000
				Send {Enter}
				}
			}	
		Else
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\res\vpn_logo.png 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h32, Cisco VPN state: Connected.    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 5000
			Gui, 2:Hide
			}
		clipboard =
		Sleep 3600
		Goto, Outlook
		}	


;	_________________________________________________________________

	Outlook:

	If var1 = 0
		Goto, OneNote
	Else
	If var1 = 1
	{
		Process, Exist, OUTLOOK.EXE
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft Outlook is already opened on your computer.  `n`n`n
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

	OneNote:

	If var2 = 0
		Goto, Skype
	Else
	If var2 = 1
	{
		Process, Exist, onenotem.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft OneNote is already opened on your computer.   `n`n`n
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

	Skype:

	If var3 = 0
		Goto, SublimeText
	Else
	If var3 = 1
	{
		Process, Exist, lync.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft Skype is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide 	
				}
	Else
		If (ErrorLevel = 0)
			Run lync.exe
			Sleep 3000
	}
;	_________________________________________________________________
		
	SublimeText:

	If var4 = 0
		GoTo, RoyalTS-CWx
	Else
	If var4 = 1
	{
		Process, Exist, sublime_text.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Sublime Text is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				Sleep 2000
				Gui, 2:Hide 	
				}
	Else
			If (ErrorLevel = 0)
			Run "C:\Program Files\Sublime Text 3\sublime_text.exe"
			Sleep 3000
		}
;	_________________________________________________________________
	
	RoyalTS-CWx:

	If var5 = 0
		GoTo, VMWare
	Else
	If var5 = 1
	{
		Process, Exist, RTS3App.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, RoyalTS - CWx is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				
				Sleep 2000
				Gui, 2:Hide 	
				}
	Else
			If (ErrorLevel = 0)
			sleep 5000
			Run "C:\Program Files\RoyalTS\RoyalTS-Extras\vpnautoconnect.exe" "C:\Program Files\RoyalTS\RoyalTS.exe"
			Sleep 3000
		}
;	_________________________________________________________________

	VMWare:
	
	If var6 = 0
		GoTo, PortableApps
	Else
	If var6 = 1
	{
		Process, Exist, vmware.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, VMWare Workstation is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				
				Sleep 2000
				Gui, 2:Hide 	
				}
	Else
			If (ErrorLevel = 0)
			Run "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe"  
			Sleep 3000
		}
;	_________________________________________________________________

	PortableApps:

If var7 = 0
		GoTo, ChromeTabs
	Else
	If var7 = 1
	{
		Process, Exist, PortableAppsPlatform.exe
			If (ErrorLevel > 0)
				{
				Gui, 2:Color, 000011
				Gui, 2:Font, S10, Arial
				Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
				Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, PortableApps is already opened on your computer.                      					    `n`n`n
				Gui, 2:Color, 000011
				Gui, 2:Show  
				
				Sleep 2000
				Gui, 2:Hide 	
				}
	Else
			If (ErrorLevel = 0)
			Run "C:\Users\be034739\Google Drive\PortableApps\Start.exe"  
			Sleep 3000
		}
;	_________________________________________________________________

	ChromeTabs:

	If var8 = 0
		GoTo, OlympusIRC
	Else
	If var8 = 1
		{
	SetTitleMatchMode 2
	SetTitleMatchMode, slow
	IfWinExist, ccnwic01
			{
			Gui, 2:Color, 000011
			Gui, 2:Font, S10, Arial
			Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
			Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, The Phone Queue and Navigator is already opened on your desktop.                      					    `n`n`n
			Gui, 2:Color, 000011
			Gui, 2:Show  
			Sleep 2000
			Gui, 2:Hide		
			}	
		Else
			sleep 10000
		run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			sleep 6000
			send ^l
			;send https://mail.google.com/mail/u/0/#inbox
			;sleep 1000
			;send {enter}
			;sleep 5000
			;send ^t
			;sleep 1000
			;send ^l
			;sleep 3000
			send https://plus.google.com/
			send {delete}
			sleep 1000
			send {enter}
			sleep 5000
			send ^t
			sleep 1000
			send ^l
			sleep 3000
			send https://remedy.cerner.com/
			sleep 3000
			send {enter}
			sleep 5000
									
		Sleep 3000
	}	
;	_________________________________________________________________

	OlympusIRC:

	If var9 = 0
		GoTo, Teams
	Else
	If var9 = 1
	{
		Process, Exist, Olympus.exe
		If (ErrorLevel > 0)
		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Olympus IRC is already opened on your computer.                      					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide 	
		}
	Else
		If (ErrorLevel = 0)
			Run "C:\Program Files (x86)\Olympus\OlympusIRC.exe"
		sleep 1000
		send {Right}
		send %username%
		sleep 500
		send {tab}
		send %Password%
		send {enter}
		sleep 2000
		send be034739
		send {tab}
		send %Password%
		send {enter}t

		Sleep 3000
		}
;	_________________________________________________________________

	Teams:
	
	If var10 = 0
		GoTo, Yammer
	Else
	If var10 = 1
	{
		Process, Exist, Teams.exe
		If (ErrorLevel > 0)
		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Microsoft Teams is already opened on your computer.                      					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide 	
		}
	Else
		If (ErrorLevel = 0)
			Run C:\Users\BE034739\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
		
		Sleep 3000
		}
;	_________________________________________________________________

	Yammer:
	
	If var11 = 0
		GoTo, Filezilla
	Else
	If var11 = 1
	{
		Process, Exist, Yammer.exe
		If (ErrorLevel > 0)
		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Yammer is already opened on your computer.                      					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide 	
		}
	Else
		If (ErrorLevel = 0)
			Run "C:\Users\BE034739\AppData\Local\yammerdesktop\app-1.3.2\Yammer.exe"
		
		Sleep 3000
		}
;	_________________________________________________________________

Filezilla:
	
	If var12 = 0
		GoTo, Discord
	Else
	If var12 = 1
	{
		Process, Exist, filezilla.exe
		If (ErrorLevel > 0)
		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Filezilla is already opened on your computer.                      					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide 	
		}
	Else
		If (ErrorLevel = 0)
			Run "C:\Program Files\FileZilla FTP Client\filezilla.exe"
		
		Sleep 3000
		}
;	_________________________________________________________________

Discord:
	
	If var13 = 0
		GoTo, Sleep
	Else
	If var13 = 1
	{
		Process, Exist, discord.exe
		If (ErrorLevel > 0)
		{
		Gui, 2:Color, 000011
		Gui, 2:Font, S10, Arial
		Gui, 2:Add, Picture, C01 CW000011 H-1 W24 x12 y05 Icon102, imageres.dll 
		Gui, 2:Add, Text, c10 CFFFFFF x46 y09 h24, Discord is already opened on your computer.                      					    `n`n`n
		Gui, 2:Color, 000011
		Gui, 2:Show  
		Sleep 2000
		Gui, 2:Hide 	
		}
	Else
		If (ErrorLevel = 0)
			Run "C:\Users\BE034739\AppData\Local\Discord\app-0.0.301\Discord.exe"
		
		Sleep 3000
		}
;	_________________________________________________________________

	Sleep:

	If var15 = 0
		Goto, Close
	Else
	If var15 = 1
	{
		Process, wait, lync.exe, 2
		NewPID = %ErrorLevel%  ; Save the value immediately since ErrorLevel is often changed.
		if NewPID = 0
		{
    		MsgBox The specified process did not appear within 2 seconds.
    		return
		}
		
		; Otherwise:
		;MsgBox A matching process has appeared (Process ID is %NewPID%).
		Process, priority, %NewPID%, Low
		Process, priority, , High  ; Have the script set itself to high priority.
		Process, Close, %NewPID%
		Process, WaitClose, %NewPID%, 5
	if ErrorLevel ; The PID still exists.
    	MsgBox The process did not close within 5 seconds.
		Sleep 2000
		Process, Close, RoyalTS.exe
		Sleep 2000
		Run, C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe disconnect
		Sleep 5000
  	   	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 1)
		
	}
		
;	_________________________________________________________________

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

;expand new sections here!!
;	_________________________________________________________________ 

	;!e:: Run iexplore.exe
;	_________________________________________________________________ 

	;!g:: Run chrome.exe
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
	GuiControl,, Var1, 0
	GuiControl,, Var2, 0
	GuiControl,, Var3, 0
	GuiControl,, Var4, 0
	GuiControl,, Var5, 0
	GuiControl,, Var6, 0
	GuiControl,, Var7, 0
	GuiControl,, Var8, 0
	GuiControl,, Var9, 0
	GuiControl,, Var10, 0
	GuiControl,, Var11, 0

;minimize window once all options have ran.
	WinMinimize, Blake's Quick Launcher


	GuiClose:
	ExitApp