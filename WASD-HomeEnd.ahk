#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

!a::Send, {Left}
!e::Send, {Right}
!,::Send, {Up}
!o::Send, {Down}

^!a::Send, !{Left}
^!e::Send, !{Right}
^!,::Send, !{Up}
^!o::Send, !{Down}

!l::Send, {END}
!h::Send, {HOME} 
!j::Send, {Down}
!k::Send, {Up}

^!l::Send, !{Right}
^!h::Send, !{Left} 
^!j::Send, !{Down}
^!k::Send, !{Up}

#!j::Send, #{Down}
#!k::Send, #{Up}

#!o::Send, #{Down}
#!,::Send, #{Up}

