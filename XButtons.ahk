#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

; MaximizeMinimize
XButton1 & LButton::WinRestore, A
XButton1 & RButton::WinMaximize, A


; Switch Application
XButton1 & WheelRight::AltTab
XButton1 & WheelLeft::ShiftAltTab 


; Task View
XButton1 & XButton2::Send, #{Tab}


XButton1::Send {XButton1}


; Close and Reopen Tab
XButton2 & LButton::^w
XButton2 & RButton::^+t


; SwitchTabs
XButton2 & WheelRight::Send, ^{Tab}
XButton2 & WheelLeft::Send, ^+{Tab}


XButton2::Send {XButton2}
