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

else if(key = "F1")
	TaskbarMove("Top")
else if(key = "F2")
	TaskbarMove("Bottom")
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
    IfWinNotExist, ahk_exe DiscordCanary.exe
    run, C:\Users\runarsf\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk
    if WinActive("ahk_exe DiscordCanary.exe")
    {
        return
    }
    else
        WinActivate ahk_exe DiscordCanary.exe
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
    {
    IfWinNotExist, ahk_class MozillaWindowClass
    run, firefox.exe
    if WinActive("ahk_class MozillaWindowClass")
    {
        send, ^{tab}
    }
    else
        WinActivate ahk_class MozillaWindowClass
}
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



Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere%,,,8
SetTimer, noTip, %wait%
}
noTip:
	ToolTip,,,,8
return


TaskbarMove(p_pos) {
	label:="TaskbarMove_" p_pos

	WinExist("ahk_class Shell_TrayWnd")
	SysGet, s, Monitor

	if (IsLabel(label)) {
		Goto, %label%
	}
	return

	TaskbarMove_Top:
	TaskbarMove_Bottom:
	WinMove(sLeft, s%p_pos%, sRight, 0)
	return
}

WinMove(p_x, p_y, p_w="", p_h="", p_hwnd="") {
	WM_ENTERSIZEMOVE:=0x0231
	WM_EXITSIZEMOVE :=0x0232
	
	if (p_hwnd!="") {
		WinExist("ahk_id " p_hwnd)
	}
	
	SendMessage, WM_ENTERSIZEMOVE
	;//Tooltip WinMove(%p_x%`, %p_y%`, %p_w%`, %p_h%)
	WinMove, , , p_x, p_y, p_w, p_h
	SendMessage, WM_EXITSIZEMOVE
}
Return