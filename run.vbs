Dim objShell
Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -executionpolicy bypass -File ipsc.ps1"