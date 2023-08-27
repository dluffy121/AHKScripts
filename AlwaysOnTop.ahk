#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

; Windowsrl+F12
#F12:: Winset, Alwaysontop, , A