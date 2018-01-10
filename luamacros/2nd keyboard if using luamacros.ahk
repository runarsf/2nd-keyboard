#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm
;;
;WARNING, CURRENTLY UNTESTED - WILL TEST SOON.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using LUAmacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg
; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s
; so you also need LUAmacros as well, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luaMacros, because I believe interecept.exe is even better! My current code is available in "ALL MULTIPLE KEYBOARD ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------

~F24::
FileRead, key, C:\Users\runarsf\Documents\GitHub\2nd-keyboard\2nd keyboard support files\keypressed.txt
;tippy(key) ; this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
If (key = "o")
Run C:\Users\runarsf\AppData\Local\osu!\osu!.exe
else if(key = "p")
return ;preset("flip vertical")
else if(key = "i")
return ;preset("multiply")

else if (key = "leftbracket")
return ;preset("pop in motion") 
else if(key = "rightbracket")
return ;preset("pop out motion")

else if (key = "y")
return ;preset("pop in transform") 
else if(key = "u")
return ;preset("pop out transform")

else if(key = "m")
return ;preset("pan down")
else if(key = "j")
return ;preset("pan up")
else if(key = "n")
Run C:\Program Files\Notepad++\notepad++.exe
else if(key = "comma")
return ;preset("pan right")
else if(key = "h")
return ;preset("zoom fast")
else if(key = "k")
return ;preset("zoom slow")

else if(key = "period")
return ;preset("crop small")
else if(key = "slash")
return ;preset("crop full")
else if(key = "singlequote")
return ;preset("warp")

else if(key = "semicolon")
return ;preset("blur with edges")
else if(key = "l")
return ;preset("LTT")

else if(key = "F6")
return ;insertSFX("buzz")
else if(key = "F7")
return ;insertSFX("ding")
else if(key = "F8")
return ;insertSFX("bleep")
else if(key = "F9")
return ;insertSFX("woosh")
else if(key = "F10")
return ;insertSFX("woosh TSFX")
else if(key = "F11")
return ;insertSFX("bwoop")
else if(key = "F12")
return ;insertSFX("pop")
else if(key = "F5")
return ;insertSFX("SEARCH")


else if (key = "insert") ;FLASH TRANSITIONS
return ;preset("impact flash long")
else if(key = "home") 
return ;preset("impact flash med")
else if(key = "pageup")
return ;preset("impact flash short")
else if(key = "delete") ;DISSOLVE TRANSITIONS
return ;preset("cross dissolve long")
else if(key = "end")
return ;preset("cross dissolve med")
else if(key = "pagedown")
return ;preset("cross dissolve short")
else if(key = "q") ;WIPE transitions
return ;recallTransition(20)
else if(key = "w")
return ;recallTransition(21)
else if(key = "e")
return ;recallTransition(22)
else if(key = "a")
return ;recallTransition(23)
; else if(key = "s")
; return ;recallTransition(??) ; iris
else if(key = "d")
return ;recallTransition(24)
else if(key = "z")
return ;recallTransition(25)
else if(key = "x")
return ;recallTransition(26)
else if(key = "c")
return ;recallTransition(27)

else if(key = "minus")
return ;audioMonoMaker(0)
else if(key = "equals")
return ;audioMonoMaker(1)


else if(key = "r")
return ;copy(1)
else if(key = "f")
return ;copy(2)
else if(key = "v")
return ;copy(3)

else if(key = "t")
return ;paste(1)
else if(key = "g")
return ;paste(2)
else if(key = "b")
return ;paste(3)

else if(key = "up") ;impact push transitions - fun fact, you can SAVE TRANSITION return ;presetS if they are cross dissolve or from a 3rd party. In the effect controls triple line menu.
return ;preset("push up")
else if(key = "left")
return ;preset("push left")
else if(key = "down")
return ;return ;preset("push down")
else if(key = "right")
return ;return ;preset("push right")

else if(key = "enter")
Send ^!e ;in premiere, set this to "remove effects"

else if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
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

return ;from luamacros F24


/*		TEMPORARY TOOLTIP		*/
Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return
/*								*/