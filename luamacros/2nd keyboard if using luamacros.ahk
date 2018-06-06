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
FileRead, key, "C:\Users\rufus\Documents\GitHub\2nd-keyboard\support files\keypressed.txt"
tippy(key) ; SHOWS BRIEF TOOLTIP OF PRESSED KEY
If (key = "o")
	run, "C:\Users\rufus\AppData\Local\osu!\osu!.exe"
else if(key = "p")
	Active.norm("ahk_exe procexp64.exe", "D:\Home\Documents\Tools\ProcessExplorer\procexp64.exe")
else if(key = "i")
	return
else if(key = "leftbracket")
	return
else if(key = "rightbracket")
	return
else if(key = "y")
	return
else if(key = "u")
{
	run, control appwiz.cpl
}
else if(key = "m")
	return
else if(key = "j")
	return
else if(key = "n")
	Active.broswer("ahk_exe notepad++.exe", "C:\Program Files\Notepad++\notepad++.exe")
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
{
	SendInput, ( ͡° ͜ʖ ͡°)
}
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
	Active.norm("ahk_exe AutoHotkeyGUI", "C:\Program Files\AutoHotkey\WindowSpy.ahk")
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
else if(key = "q")
{
	Process, Close, DiscordCanary.exe
	sleep, 350
	run, "C:\Users\rufus\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk"
}
else if(key = "w")
	return
else if(key = "e")
	Active.explorer()
else if(key = "a")
	return
else if(key = "s")
	Active.norm("ahk_exe Steam.exe", "C:\Program Files (x86)\Steam\Steam.exe")
else if(key = "d")
	Active.norm("ahk_exe DiscordCanary.exe", "C:\Users\rufus\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk")
else if(key = "z")
	return
else if(key = "x")
{
	SendInput, lmao xd lol rofl ialmaorn pwnd roflmao iamallama XD lawl Cx
}
else if(key = "c")
	return
else if(key = "minus")
	return
else if(key = "equals")
	return
else if(key = "r")
	Active.norm("ahk_exe OORegEdt.exe", "D:\Home\Documents\Tools\ooRegEdit\OORegEdt.exe")
else if(key = "f")
	Active.broswer("ahk_class MozillaWindowClass", "firefox.exe")
else if(key = "v")
	return
else if(key = "t")
	return
else if(key = "g")
	Active.norm("ahk_exe GitHubDesktop.exe", "C:\Users\rufus\AppData\Local\GitHubDesktop\GitHubDesktop.exe")
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