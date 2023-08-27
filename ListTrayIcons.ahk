#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn ; Enable warnings to assist with detecting common errors.
; Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

test := TrayIcon_GetInfo()
Loop, % test.MaxIndex()
    str .= test[A_Index].process "`n"
MsgBox, %str%
ExitApp
#Include TrayIcon.ahk