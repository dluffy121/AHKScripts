#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn ; Enable warnings to assist with detecting common errors.
; Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

remove_array := "ShowOnAllDesktops.exe,HideIcons.exe,AlwaysOnTop.exe,WallpaperEngine"
Loop, parse, remove_array, `,
{
    oIcons := TrayIcon_GetInfo(A_LoopField)
    TrayIcon_Remove(oIcons[1].hwnd, oIcons[1].uid)
}
ExitApp
#Include TrayIcon.ahk