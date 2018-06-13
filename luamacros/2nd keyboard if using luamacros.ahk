#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283
#SingleInstance force
#MaxHotkeysPerInterval 2000
#EscapeChar ¤
#WinActivateForce

;-------------2ND KEYBOARD USING LUAMACROS-----------------

Class Active {
	
	norm(prog, loc) {
		IfWinNotExist %prog%
			run, %loc%
		WinWait %prog%
		WinActivate %prog%
		IfWinExist %prog%
			WinActivate %prog%
		return
	}
	
	browser(prog, loc) {
		IfWinActive %prog%
			send, ^{tab}
		IfWinNotExist %prog%
			run, %loc%
		WinWait %prog%
		WinActivate %prog%
		IfWinExist %prog%
			WinActivate %prog%
		return
	}
	
	explorer() {
		IfWinNotExist, ahk_class CabinetWClass
			run, explorer.exe
		GroupAdd, explort, ahk_class CabinetWClass
		if WinActive("ahk_exe explorer.exe")
			GroupActivate, explort, r
		else
			WinActivate ahk_class CabinetWClass
		return
	}
	
}

~F24::
FileRead, key, C:\Users\rufus\Documents\GitHub\2nd-keyboard\support files\keypressed.txt
sleep, 150
tippy(key) ; SHOWS BRIEF TOOLTIP OF PRESSED KEY
if(key = "f")
{
	Active.broswer("ahk_exe firefox.exe", "firefox.exe")
}
else if(key = "p")
	return
else if(key = "i")
	return
else if(key = "leftbracket")
	return
else if(key = "rightbracket")
	return
else if(key = "y")
	return
else if(key = "u")
	return
else if(key = "space")
	return
else if(key = "alt")
	return
else if(key = "m")
	return
else if(key = "j")
	return
else if(key = "n")
	return
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
else if(key = "F1")
	return
else if(key = "F2")
	return
else if(key = "F3")
	return
else if(key = "F4")
	return
else if(key = "F5")
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
else if(key = "insert")
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
else if(key = "backspace")
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
	return
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
	Send {Media_Play_Pause}

return



Tippy(tipsHere, wait:=333)
{
	ToolTip, %tipsHere%,,,8
	SetTimer, noTip, %wait%
}
noTip:
ToolTip,,,,8
return