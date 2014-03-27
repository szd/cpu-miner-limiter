cpu-miner-limiter
=================

Limit CPU usage when mining with cpuminer (minerd) and hide dos window



This script in the current state will:
	- Copy minerd and required files to c:\Zmine
	- Create a new local user
	- Give this user permission to use x% of CPU
	- configure Windows to launch minerd silently on startup


OS
==

Windows
	
How-To Install
==============

	1) Script is configure to allow minerd to use 30% of CPU, if you want an other value, edit install.cmd :
		- Modify last number of line number 12 (CpuRateLimit /t REG_DWORD /d 30) 30=30%
	2) Launch install.cmd
	3) Edit C:\Zmine\launch.bat : edit this file with your values of [MyPoolURL], [MyPoolPort],
	[MyPoolAccount],[MyWorkerName] and [MyWorkerPasswd]
	4) Reboot & profit!
	

SZD.
	
	