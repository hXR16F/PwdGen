<p align="center">
	<b>PwdGen</b>
	<br>
	<i>Fast password generator for Windows.</i>
	<br><br><br>
	<img alt="screenshot" src="media/screenshot.gif">
</p>

# Usage
Run by double-clicking or open it in command prompt:
> src/PwdGen.bat

Specify which charset do you want to use and how long the password should be.

# Usage - command line
Syntax:

```batchfile
PwdGen.bat <charset> <length>
```
    
Examples:

```batchfile
PwdGen.bat 7 24
PwdGen.bat 1 6
```
    
# Usage - batch file
Code #1:

```batchfile
@echo off
for /f %%i in ('call PwdGen.bat 6 16') do set "password=%%i"
echo Your new password is : %password%
pause
```
    
Example output:

```
Your new password is : NVjpYPUeNoQFrZAe
Press any key to continue . . .
```

Code #2:

```batchfile
@echo off
call PwdGen.bat 1 8 > "_string"
for /f "tokens=1*" %%i in (_string) do set "password=%%i"
del /f /q "_string" >nul
echo Your new password is : %password%
pause
```

Example output:

```
Your new password is : 61589124
Press any key to continue . . .
```
