Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c C:\Zmine\launch.bat"
oShell.Run strArgs, 0, false