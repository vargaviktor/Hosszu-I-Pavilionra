;HP Pavilion Hungarian Keyboard Long I on LShift
;Created by Viktor Varga

;Dev notes
;1.0 short shift press means long i, if the Capslock is set long II

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent  							; Keep the script running until the user exits it.
#SingleInstance ignore 					; Only one instance
Menu, Tray, NoStandard					; Hide standard menus

Menu, Tray, Icon, Shell32.dll, 175

Menu, Tray, Tip, Left II - Hosszú í a bal Shift segítségével

Menu, Tray, Add, Verzió, verziomenu		; Creates a new menu item.
Menu, Tray, Add, Újratöltés, reloadmenu
Menu, Tray, Add  						; Creates a separator line.
Menu, Tray, Add, Kilépés, kilepesmenu  

Menu, Tray, Icon, Verzió, Shell32.dll, 222
Menu, Tray, Icon, Újratöltés,Shell32.dll, 239
Menu, Tray, Icon, Kilépés, Shell32.dll, 28
MsgBox,,Left II elindítva, Left II elindítva., 3
return
return

verziomenu:
MsgBox ,,Left II - Verzió információk,Left II`n`nBal Shift önálló megnyomása í-t gépel.`nHP Pavilion kiosztás javítása.`n`nV1.0`n2020 (C) Varga Viktor
return

kilepesmenu:
ExitApp
return 							;never used

reloadmenu:
Reload
return 							;never used

lshift::send {lshift down}
lshift up::
If (a_priorkey = "lshift")
	{
	If GetkeyState("CapsLock","T")
		{		
		Send {lshift up}Í
		}
	Else
		Send {lshift up}í
	}
Else
	Send {lshift up}
return
