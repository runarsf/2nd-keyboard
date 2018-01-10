#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283
#SingleInstance force
#MaxHotkeysPerInterval 2000
#WinActivateForce							;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;-------------2ND KEYBOARD USING LUAMACROS-----------------

~F24::
FileRead, key, C:\Users\runarsf\Documents\GitHub\2nd-keyboard\2nd keyboard support files\keypressed.txt
tippy(key) ; SHOWS BRIEF TOOLTIP OF PRESSED KEY
If (key = "o")
run, C:\Users\runarsf\AppData\Local\osu!\osu!.exe
else if(key = "p")
return
else if(key = "i")
return

else if (key = "leftbracket")
return
else if(key = "rightbracket")
return

else if (key = "y")
return
else if(key = "u")
return

else if(key = "m")
return
else if(key = "j")
return
else if(key = "n")
run, C:\Program Files\Notepad++\notepad++.exe
else if(key = "comma")
return
else if(key = "h")
return
else if(key = "k")
return

else if(key = "period")
return
else if(key = "slash")
return
else if(key = "singlequote")
return

else if(key = "semicolon")
return
else if(key = "l")
return

else if(key = "F6")
return
else if(key = "F7")
return
else if(key = "F8")
return
else if(key = "F9")
return
else if(key = "F10")
return
else if(key = "F11")
return
else if(key = "F12")
return
else if(key = "F5")
return


else if (key = "insert")
return
else if(key = "home") 
return
else if(key = "pageup")
return
else if(key = "delete")
return
else if(key = "end")
return
else if(key = "pagedown")
return
else if(key = "q")
return
else if(key = "w")
return
else if(key = "e")
return
else if(key = "a")
return
else if(key = "s")
return
else if(key = "d")
	{
	run, C:\Users\runarsf\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk
	WinWait, ahk_exe DiscordCanary.exe
	WinActivate, ahk_exe DiscordCanary.exe
	}
else if(key = "z")
return
else if(key = "x")
return
else if(key = "c")
return

else if(key = "minus")
return
else if(key = "equals")
return


else if(key = "r")
return
else if(key = "f")
return
else if(key = "v")
return

else if(key = "t")
return
else if(key = "g")
return
else if(key = "b")
return

else if(key = "up")
return
else if(key = "left")
return
else if(key = "down")
return
else if(key = "right")
return

else if(key = "enter")
return

else if(key = "num0") ;just mirroring the normal numpad
Send {Numpad0}
else if(key = "num1")
Send {Numpad1}
else if(key = "num2")
Send {Numpad2}
else if(key = "num3")
Send {Numpad3}
else if(key = "num4")
Send {Numpad4}
else if(key = "num5")
Send {Numpad5}
else if(key = "num6")
Send {Numpad6}
else if(key = "num7")
Send {Numpad7}
else if(key = "num8")
Send {Numpad8}
else if(key = "num9")
Send {Numpad9}
else if(key = "numDiv")
Send {NumpadDiv}
else if(key = "numMult")
Send {NumpadMult}

return


;		TEMPORARY TOOLTIP		;
Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere%,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return
;								;