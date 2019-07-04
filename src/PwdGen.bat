:: Programmed by hXR16F
:: hXR16F.ar@gmail.com

@echo off
setlocal EnableDelayedExpansion
if not "%1" equ "" (
	if not "%2" equ "" (
		set "selected_charset=%1"
		set "length=%2"
		goto :next
	) else (
		exit /b
	)
)
mode 100,32&color 07
call ansicon.exe -i

:main
	cls&set "password="
	
	echo [97;40m   _____              _  _____
	echo  ^|  __ \            ^| ^|/ ____^|
	echo  ^| ^|__) ^|_      ____^| ^| ^|  __  ___ _ __
	echo  ^|  ___/\ \ /\ / / _` ^| ^| ^|_ ^|/ _ \ '_ \[0m  [97;40mCoded by hXR16F[0m
	echo  [32;40m^| ^|     \ V  V / (_^| ^| ^|__^| ^|  __/ ^| ^| ^|[0m [37;40mhXR16F.ar@gmail.com[0m
	echo  [92;40m^|_^|      \_/\_/ \__,_^|\_____^|\___^|_^| ^|_^|[0m [37;40mhttps://github.com/hXR16F[0m
	echo.
	
	(
		echo [92;40m[[0m[97;40m+[0m[92;40m][0m [97;40mSelect charset :[0m
		echo.
		echo     [32;40m[[0m[37;40m1[0m[32;40m][0m [37;40m0123456789[0m
		echo     [32;40m[[0m[37;40m2[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz[0m
		echo     [32;40m[[0m[37;40m3[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m 0123456789[0m
		echo     [32;40m[[0m[37;40m4[0m[32;40m][0m [37;40mABCDEFGHIJKLMNOPQRSTUVWXYZ[0m
		echo     [32;40m[[0m[37;40m5[0m[32;40m][0m [37;40mABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m 0123456789[0m
		echo     [32;40m[[0m[37;40m6[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m ABCDEFGHIJKLMNOPQRSTUVWXYZ[0m
		echo     [32;40m[[0m[37;40m7[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m ABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m 0123456789[0m
		
		echo     [32;40m[[0m[37;40m8[0m[32;40m][0m [37;40m0123456789 [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m9[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m10[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m 0123456789 [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m11[0m[32;40m][0m [37;40mABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m12[0m[32;40m][0m [37;40mABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m 0123456789 [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m13[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m ABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo     [32;40m[[0m[37;40m14[0m[32;40m][0m [37;40mabcdefghijklmnopqrstuvwxyz [97;40m+[0m ABCDEFGHIJKLMNOPQRSTUVWXYZ [97;40m+[0m 0123456789 [97;40m+[0m ^^!@#$%%^^^^^&*[0m
		echo.
	)
	
	set /p "selected_charset=[92;40m[[0m[97;40m*[0m[92;40m][0m [97;40mCharset : [0m[37;40m"
	set /p "length=[92;40m[[0m[97;40m*[0m[92;40m][0m [97;40mLength : [0m[37;40m"
	
	:next
	if "!selected_charset!" equ "1" (
		for /l %%i in (1,1,!length!) do (
			call :rand 0 9
			set "password=!password!!RAND_NUM!"
		)
	) else (
		if "!selected_charset!" equ "2" (
			for /l %%i in (1,1,!length!) do (
				call :rand 1 26
				(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
				set "password=!password!!add2pwd!"
			)
		) else (
			if "!selected_charset!" equ "3" (
				for /l %%i in (1,1,!length!) do (
					call :rand 1 36
					(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
					(if "!RAND_NUM!" equ "27" set "add2pwd=0")&(if "!RAND_NUM!" equ "28" set "add2pwd=1")&(if "!RAND_NUM!" equ "29" set "add2pwd=2")&(if "!RAND_NUM!" equ "30" set "add2pwd=3")&(if "!RAND_NUM!" equ "31" set "add2pwd=4")&(if "!RAND_NUM!" equ "32" set "add2pwd=5")&(if "!RAND_NUM!" equ "33" set "add2pwd=6")&(if "!RAND_NUM!" equ "34" set "add2pwd=7")&(if "!RAND_NUM!" equ "35" set "add2pwd=8")&(if "!RAND_NUM!" equ "36" set "add2pwd=9")
					set "password=!password!!add2pwd!"
				)
			) else (
				if "!selected_charset!" equ "4" (
					for /l %%i in (1,1,!length!) do (
						call :rand 1 26
						(if "!RAND_NUM!" equ "1" set "add2pwd=A")&(if "!RAND_NUM!" equ "2" set "add2pwd=B")&(if "!RAND_NUM!" equ "3" set "add2pwd=C")&(if "!RAND_NUM!" equ "4" set "add2pwd=D")&(if "!RAND_NUM!" equ "5" set "add2pwd=E")&(if "!RAND_NUM!" equ "6" set "add2pwd=F")&(if "!RAND_NUM!" equ "7" set "add2pwd=G")&(if "!RAND_NUM!" equ "8" set "add2pwd=H")&(if "!RAND_NUM!" equ "9" set "add2pwd=I")&(if "!RAND_NUM!" equ "10" set "add2pwd=J")&(if "!RAND_NUM!" equ "11" set "add2pwd=K")&(if "!RAND_NUM!" equ "12" set "add2pwd=L")&(if "!RAND_NUM!" equ "13" set "add2pwd=M")&(if "!RAND_NUM!" equ "14" set "add2pwd=N")&(if "!RAND_NUM!" equ "15" set "add2pwd=O")&(if "!RAND_NUM!" equ "16" set "add2pwd=P")&(if "!RAND_NUM!" equ "17" set "add2pwd=Q")&(if "!RAND_NUM!" equ "18" set "add2pwd=R")&(if "!RAND_NUM!" equ "19" set "add2pwd=S")&(if "!RAND_NUM!" equ "20" set "add2pwd=T")&(if "!RAND_NUM!" equ "21" set "add2pwd=U")&(if "!RAND_NUM!" equ "22" set "add2pwd=V")&(if "!RAND_NUM!" equ "23" set "add2pwd=W")&(if "!RAND_NUM!" equ "24" set "add2pwd=X")&(if "!RAND_NUM!" equ "25" set "add2pwd=Y")&(if "!RAND_NUM!" equ "26" set "add2pwd=Z")
						set "password=!password!!add2pwd!"
					)
				) else (
					if "!selected_charset!" equ "5" (
						for /l %%i in (1,1,!length!) do (
							call :rand 1 36
							(if "!RAND_NUM!" equ "1" set "add2pwd=A")&(if "!RAND_NUM!" equ "2" set "add2pwd=B")&(if "!RAND_NUM!" equ "3" set "add2pwd=C")&(if "!RAND_NUM!" equ "4" set "add2pwd=D")&(if "!RAND_NUM!" equ "5" set "add2pwd=E")&(if "!RAND_NUM!" equ "6" set "add2pwd=F")&(if "!RAND_NUM!" equ "7" set "add2pwd=G")&(if "!RAND_NUM!" equ "8" set "add2pwd=H")&(if "!RAND_NUM!" equ "9" set "add2pwd=I")&(if "!RAND_NUM!" equ "10" set "add2pwd=J")&(if "!RAND_NUM!" equ "11" set "add2pwd=K")&(if "!RAND_NUM!" equ "12" set "add2pwd=L")&(if "!RAND_NUM!" equ "13" set "add2pwd=M")&(if "!RAND_NUM!" equ "14" set "add2pwd=N")&(if "!RAND_NUM!" equ "15" set "add2pwd=O")&(if "!RAND_NUM!" equ "16" set "add2pwd=P")&(if "!RAND_NUM!" equ "17" set "add2pwd=Q")&(if "!RAND_NUM!" equ "18" set "add2pwd=R")&(if "!RAND_NUM!" equ "19" set "add2pwd=S")&(if "!RAND_NUM!" equ "20" set "add2pwd=T")&(if "!RAND_NUM!" equ "21" set "add2pwd=U")&(if "!RAND_NUM!" equ "22" set "add2pwd=V")&(if "!RAND_NUM!" equ "23" set "add2pwd=W")&(if "!RAND_NUM!" equ "24" set "add2pwd=X")&(if "!RAND_NUM!" equ "25" set "add2pwd=Y")&(if "!RAND_NUM!" equ "26" set "add2pwd=Z")
							(if "!RAND_NUM!" equ "27" set "add2pwd=0")&(if "!RAND_NUM!" equ "28" set "add2pwd=1")&(if "!RAND_NUM!" equ "29" set "add2pwd=2")&(if "!RAND_NUM!" equ "30" set "add2pwd=3")&(if "!RAND_NUM!" equ "31" set "add2pwd=4")&(if "!RAND_NUM!" equ "32" set "add2pwd=5")&(if "!RAND_NUM!" equ "33" set "add2pwd=6")&(if "!RAND_NUM!" equ "34" set "add2pwd=7")&(if "!RAND_NUM!" equ "35" set "add2pwd=8")&(if "!RAND_NUM!" equ "36" set "add2pwd=9")
							set "password=!password!!add2pwd!"
						)
					) else (
						if "!selected_charset!" equ "6" (
							for /l %%i in (1,1,!length!) do (
								call :rand 1 52
								(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
								(if "!RAND_NUM!" equ "27" set "add2pwd=A")&(if "!RAND_NUM!" equ "28" set "add2pwd=B")&(if "!RAND_NUM!" equ "29" set "add2pwd=C")&(if "!RAND_NUM!" equ "30" set "add2pwd=D")&(if "!RAND_NUM!" equ "31" set "add2pwd=E")&(if "!RAND_NUM!" equ "32" set "add2pwd=F")&(if "!RAND_NUM!" equ "33" set "add2pwd=G")&(if "!RAND_NUM!" equ "34" set "add2pwd=H")&(if "!RAND_NUM!" equ "35" set "add2pwd=I")&(if "!RAND_NUM!" equ "36" set "add2pwd=J")&(if "!RAND_NUM!" equ "37" set "add2pwd=K")&(if "!RAND_NUM!" equ "38" set "add2pwd=L")&(if "!RAND_NUM!" equ "39" set "add2pwd=M")&(if "!RAND_NUM!" equ "40" set "add2pwd=N")&(if "!RAND_NUM!" equ "41" set "add2pwd=O")&(if "!RAND_NUM!" equ "42" set "add2pwd=P")&(if "!RAND_NUM!" equ "43" set "add2pwd=Q")&(if "!RAND_NUM!" equ "44" set "add2pwd=R")&(if "!RAND_NUM!" equ "45" set "add2pwd=S")&(if "!RAND_NUM!" equ "46" set "add2pwd=T")&(if "!RAND_NUM!" equ "47" set "add2pwd=U")&(if "!RAND_NUM!" equ "48" set "add2pwd=V")&(if "!RAND_NUM!" equ "49" set "add2pwd=W")&(if "!RAND_NUM!" equ "50" set "add2pwd=X")&(if "!RAND_NUM!" equ "51" set "add2pwd=Y")&(if "!RAND_NUM!" equ "52" set "add2pwd=Z")
								set "password=!password!!add2pwd!"
							)
						) else (
							if "!selected_charset!" equ "7" (
								for /l %%i in (1,1,!length!) do (
									call :rand 1 62
									(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
									(if "!RAND_NUM!" equ "27" set "add2pwd=A")&(if "!RAND_NUM!" equ "28" set "add2pwd=B")&(if "!RAND_NUM!" equ "29" set "add2pwd=C")&(if "!RAND_NUM!" equ "30" set "add2pwd=D")&(if "!RAND_NUM!" equ "31" set "add2pwd=E")&(if "!RAND_NUM!" equ "32" set "add2pwd=F")&(if "!RAND_NUM!" equ "33" set "add2pwd=G")&(if "!RAND_NUM!" equ "34" set "add2pwd=H")&(if "!RAND_NUM!" equ "35" set "add2pwd=I")&(if "!RAND_NUM!" equ "36" set "add2pwd=J")&(if "!RAND_NUM!" equ "37" set "add2pwd=K")&(if "!RAND_NUM!" equ "38" set "add2pwd=L")&(if "!RAND_NUM!" equ "39" set "add2pwd=M")&(if "!RAND_NUM!" equ "40" set "add2pwd=N")&(if "!RAND_NUM!" equ "41" set "add2pwd=O")&(if "!RAND_NUM!" equ "42" set "add2pwd=P")&(if "!RAND_NUM!" equ "43" set "add2pwd=Q")&(if "!RAND_NUM!" equ "44" set "add2pwd=R")&(if "!RAND_NUM!" equ "45" set "add2pwd=S")&(if "!RAND_NUM!" equ "46" set "add2pwd=T")&(if "!RAND_NUM!" equ "47" set "add2pwd=U")&(if "!RAND_NUM!" equ "48" set "add2pwd=V")&(if "!RAND_NUM!" equ "49" set "add2pwd=W")&(if "!RAND_NUM!" equ "50" set "add2pwd=X")&(if "!RAND_NUM!" equ "51" set "add2pwd=Y")&(if "!RAND_NUM!" equ "52" set "add2pwd=Z")
									(if "!RAND_NUM!" equ "53" set "add2pwd=0")&(if "!RAND_NUM!" equ "54" set "add2pwd=1")&(if "!RAND_NUM!" equ "55" set "add2pwd=2")&(if "!RAND_NUM!" equ "56" set "add2pwd=3")&(if "!RAND_NUM!" equ "57" set "add2pwd=4")&(if "!RAND_NUM!" equ "58" set "add2pwd=5")&(if "!RAND_NUM!" equ "59" set "add2pwd=6")&(if "!RAND_NUM!" equ "60" set "add2pwd=7")&(if "!RAND_NUM!" equ "61" set "add2pwd=8")&(if "!RAND_NUM!" equ "62" set "add2pwd=9")
									set "password=!password!!add2pwd!"
								)
							) else (
								if "!selected_charset!" equ "8" (
									for /l %%i in (1,1,!length!) do (
										call :rand 1 18
										(if "!RAND_NUM!" equ "1" set "add2pwd=1")&(if "!RAND_NUM!" equ "2" set "add2pwd=2")&(if "!RAND_NUM!" equ "3" set "add2pwd=3")&(if "!RAND_NUM!" equ "4" set "add2pwd=4")&(if "!RAND_NUM!" equ "5" set "add2pwd=5")&(if "!RAND_NUM!" equ "6" set "add2pwd=6")&(if "!RAND_NUM!" equ "7" set "add2pwd=7")&(if "!RAND_NUM!" equ "8" set "add2pwd=8")&(if "!RAND_NUM!" equ "9" set "add2pwd=9")&(if "!RAND_NUM!" equ "10" set "add2pwd=0")
										(if "!RAND_NUM!" equ "11" set "add2pwd=^!")&(if "!RAND_NUM!" equ "12" set "add2pwd=@")&(if "!RAND_NUM!" equ "13" set "add2pwd=#")&(if "!RAND_NUM!" equ "14" set "add2pwd=$")&(if "!RAND_NUM!" equ "15" set "add2pwd=%%")&(if "!RAND_NUM!" equ "16" set "add2pwd=^")&(if "!RAND_NUM!" equ "17" set "add2pwd=&")&(if "!RAND_NUM!" equ "18" set "add2pwd=*")
										set "password=!password!!add2pwd!"
									)
								) else (
									if "!selected_charset!" equ "9" (
										for /l %%i in (1,1,!length!) do (
											call :rand 1 34
											(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
											(if "!RAND_NUM!" equ "27" set "add2pwd=^!")&(if "!RAND_NUM!" equ "28" set "add2pwd=@")&(if "!RAND_NUM!" equ "29" set "add2pwd=#")&(if "!RAND_NUM!" equ "30" set "add2pwd=$")&(if "!RAND_NUM!" equ "31" set "add2pwd=%%")&(if "!RAND_NUM!" equ "32" set "add2pwd=^")&(if "!RAND_NUM!" equ "33" set "add2pwd=&")&(if "!RAND_NUM!" equ "34" set "add2pwd=*")
											set "password=!password!!add2pwd!"
										)
									) else (
										if "!selected_charset!" equ "10" (
											for /l %%i in (1,1,!length!) do (
												call :rand 1 44
												(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
												(if "!RAND_NUM!" equ "27" set "add2pwd=0")&(if "!RAND_NUM!" equ "28" set "add2pwd=1")&(if "!RAND_NUM!" equ "29" set "add2pwd=2")&(if "!RAND_NUM!" equ "30" set "add2pwd=3")&(if "!RAND_NUM!" equ "31" set "add2pwd=4")&(if "!RAND_NUM!" equ "32" set "add2pwd=5")&(if "!RAND_NUM!" equ "33" set "add2pwd=6")&(if "!RAND_NUM!" equ "34" set "add2pwd=7")&(if "!RAND_NUM!" equ "35" set "add2pwd=8")&(if "!RAND_NUM!" equ "36" set "add2pwd=9")
												(if "!RAND_NUM!" equ "37" set "add2pwd=^!")&(if "!RAND_NUM!" equ "38" set "add2pwd=@")&(if "!RAND_NUM!" equ "39" set "add2pwd=#")&(if "!RAND_NUM!" equ "40" set "add2pwd=$")&(if "!RAND_NUM!" equ "41" set "add2pwd=%%")&(if "!RAND_NUM!" equ "42" set "add2pwd=^")&(if "!RAND_NUM!" equ "43" set "add2pwd=&")&(if "!RAND_NUM!" equ "44" set "add2pwd=*")
												set "password=!password!!add2pwd!"
											)
										) else (
											if "!selected_charset!" equ "11" (
												for /l %%i in (1,1,!length!) do (
													call :rand 1 34
													(if "!RAND_NUM!" equ "1" set "add2pwd=A")&(if "!RAND_NUM!" equ "2" set "add2pwd=B")&(if "!RAND_NUM!" equ "3" set "add2pwd=C")&(if "!RAND_NUM!" equ "4" set "add2pwd=D")&(if "!RAND_NUM!" equ "5" set "add2pwd=E")&(if "!RAND_NUM!" equ "6" set "add2pwd=F")&(if "!RAND_NUM!" equ "7" set "add2pwd=G")&(if "!RAND_NUM!" equ "8" set "add2pwd=H")&(if "!RAND_NUM!" equ "9" set "add2pwd=I")&(if "!RAND_NUM!" equ "10" set "add2pwd=J")&(if "!RAND_NUM!" equ "11" set "add2pwd=K")&(if "!RAND_NUM!" equ "12" set "add2pwd=L")&(if "!RAND_NUM!" equ "13" set "add2pwd=M")&(if "!RAND_NUM!" equ "14" set "add2pwd=N")&(if "!RAND_NUM!" equ "15" set "add2pwd=O")&(if "!RAND_NUM!" equ "16" set "add2pwd=P")&(if "!RAND_NUM!" equ "17" set "add2pwd=Q")&(if "!RAND_NUM!" equ "18" set "add2pwd=R")&(if "!RAND_NUM!" equ "19" set "add2pwd=S")&(if "!RAND_NUM!" equ "20" set "add2pwd=T")&(if "!RAND_NUM!" equ "21" set "add2pwd=U")&(if "!RAND_NUM!" equ "22" set "add2pwd=V")&(if "!RAND_NUM!" equ "23" set "add2pwd=W")&(if "!RAND_NUM!" equ "24" set "add2pwd=X")&(if "!RAND_NUM!" equ "25" set "add2pwd=Y")&(if "!RAND_NUM!" equ "26" set "add2pwd=Z")
													(if "!RAND_NUM!" equ "27" set "add2pwd=^!")&(if "!RAND_NUM!" equ "28" set "add2pwd=@")&(if "!RAND_NUM!" equ "29" set "add2pwd=#")&(if "!RAND_NUM!" equ "30" set "add2pwd=$")&(if "!RAND_NUM!" equ "31" set "add2pwd=%%")&(if "!RAND_NUM!" equ "32" set "add2pwd=^")&(if "!RAND_NUM!" equ "33" set "add2pwd=&")&(if "!RAND_NUM!" equ "34" set "add2pwd=*")
													set "password=!password!!add2pwd!"
												)
											) else (
												if "!selected_charset!" equ "12" (
													for /l %%i in (1,1,!length!) do (
														call :rand 1 44
														(if "!RAND_NUM!" equ "1" set "add2pwd=A")&(if "!RAND_NUM!" equ "2" set "add2pwd=B")&(if "!RAND_NUM!" equ "3" set "add2pwd=C")&(if "!RAND_NUM!" equ "4" set "add2pwd=D")&(if "!RAND_NUM!" equ "5" set "add2pwd=E")&(if "!RAND_NUM!" equ "6" set "add2pwd=F")&(if "!RAND_NUM!" equ "7" set "add2pwd=G")&(if "!RAND_NUM!" equ "8" set "add2pwd=H")&(if "!RAND_NUM!" equ "9" set "add2pwd=I")&(if "!RAND_NUM!" equ "10" set "add2pwd=J")&(if "!RAND_NUM!" equ "11" set "add2pwd=K")&(if "!RAND_NUM!" equ "12" set "add2pwd=L")&(if "!RAND_NUM!" equ "13" set "add2pwd=M")&(if "!RAND_NUM!" equ "14" set "add2pwd=N")&(if "!RAND_NUM!" equ "15" set "add2pwd=O")&(if "!RAND_NUM!" equ "16" set "add2pwd=P")&(if "!RAND_NUM!" equ "17" set "add2pwd=Q")&(if "!RAND_NUM!" equ "18" set "add2pwd=R")&(if "!RAND_NUM!" equ "19" set "add2pwd=S")&(if "!RAND_NUM!" equ "20" set "add2pwd=T")&(if "!RAND_NUM!" equ "21" set "add2pwd=U")&(if "!RAND_NUM!" equ "22" set "add2pwd=V")&(if "!RAND_NUM!" equ "23" set "add2pwd=W")&(if "!RAND_NUM!" equ "24" set "add2pwd=X")&(if "!RAND_NUM!" equ "25" set "add2pwd=Y")&(if "!RAND_NUM!" equ "26" set "add2pwd=Z")
														(if "!RAND_NUM!" equ "27" set "add2pwd=0")&(if "!RAND_NUM!" equ "28" set "add2pwd=1")&(if "!RAND_NUM!" equ "29" set "add2pwd=2")&(if "!RAND_NUM!" equ "30" set "add2pwd=3")&(if "!RAND_NUM!" equ "31" set "add2pwd=4")&(if "!RAND_NUM!" equ "32" set "add2pwd=5")&(if "!RAND_NUM!" equ "33" set "add2pwd=6")&(if "!RAND_NUM!" equ "34" set "add2pwd=7")&(if "!RAND_NUM!" equ "35" set "add2pwd=8")&(if "!RAND_NUM!" equ "36" set "add2pwd=9")
														(if "!RAND_NUM!" equ "37" set "add2pwd=^!")&(if "!RAND_NUM!" equ "38" set "add2pwd=@")&(if "!RAND_NUM!" equ "39" set "add2pwd=#")&(if "!RAND_NUM!" equ "40" set "add2pwd=$")&(if "!RAND_NUM!" equ "41" set "add2pwd=%%")&(if "!RAND_NUM!" equ "42" set "add2pwd=^")&(if "!RAND_NUM!" equ "43" set "add2pwd=&")&(if "!RAND_NUM!" equ "44" set "add2pwd=*")
														set "password=!password!!add2pwd!"
													)
												) else (
													if "!selected_charset!" equ "13" (
														for /l %%i in (1,1,!length!) do (
															call :rand 1 60
															(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
															(if "!RAND_NUM!" equ "27" set "add2pwd=A")&(if "!RAND_NUM!" equ "28" set "add2pwd=B")&(if "!RAND_NUM!" equ "29" set "add2pwd=C")&(if "!RAND_NUM!" equ "30" set "add2pwd=D")&(if "!RAND_NUM!" equ "31" set "add2pwd=E")&(if "!RAND_NUM!" equ "32" set "add2pwd=F")&(if "!RAND_NUM!" equ "33" set "add2pwd=G")&(if "!RAND_NUM!" equ "34" set "add2pwd=H")&(if "!RAND_NUM!" equ "35" set "add2pwd=I")&(if "!RAND_NUM!" equ "36" set "add2pwd=J")&(if "!RAND_NUM!" equ "37" set "add2pwd=K")&(if "!RAND_NUM!" equ "38" set "add2pwd=L")&(if "!RAND_NUM!" equ "39" set "add2pwd=M")&(if "!RAND_NUM!" equ "40" set "add2pwd=N")&(if "!RAND_NUM!" equ "41" set "add2pwd=O")&(if "!RAND_NUM!" equ "42" set "add2pwd=P")&(if "!RAND_NUM!" equ "43" set "add2pwd=Q")&(if "!RAND_NUM!" equ "44" set "add2pwd=R")&(if "!RAND_NUM!" equ "45" set "add2pwd=S")&(if "!RAND_NUM!" equ "46" set "add2pwd=T")&(if "!RAND_NUM!" equ "47" set "add2pwd=U")&(if "!RAND_NUM!" equ "48" set "add2pwd=V")&(if "!RAND_NUM!" equ "49" set "add2pwd=W")&(if "!RAND_NUM!" equ "50" set "add2pwd=X")&(if "!RAND_NUM!" equ "51" set "add2pwd=Y")&(if "!RAND_NUM!" equ "52" set "add2pwd=Z")
															(if "!RAND_NUM!" equ "53" set "add2pwd=^!")&(if "!RAND_NUM!" equ "54" set "add2pwd=@")&(if "!RAND_NUM!" equ "55" set "add2pwd=#")&(if "!RAND_NUM!" equ "56" set "add2pwd=$")&(if "!RAND_NUM!" equ "57" set "add2pwd=%%")&(if "!RAND_NUM!" equ "58" set "add2pwd=^")&(if "!RAND_NUM!" equ "59" set "add2pwd=&")&(if "!RAND_NUM!" equ "60" set "add2pwd=*")
															set "password=!password!!add2pwd!"
														)
													) else (
														if "!selected_charset!" equ "14" (
															for /l %%i in (1,1,!length!) do (
																call :rand 1 70
																(if "!RAND_NUM!" equ "1" set "add2pwd=a")&(if "!RAND_NUM!" equ "2" set "add2pwd=b")&(if "!RAND_NUM!" equ "3" set "add2pwd=c")&(if "!RAND_NUM!" equ "4" set "add2pwd=d")&(if "!RAND_NUM!" equ "5" set "add2pwd=e")&(if "!RAND_NUM!" equ "6" set "add2pwd=f")&(if "!RAND_NUM!" equ "7" set "add2pwd=g")&(if "!RAND_NUM!" equ "8" set "add2pwd=h")&(if "!RAND_NUM!" equ "9" set "add2pwd=i")&(if "!RAND_NUM!" equ "10" set "add2pwd=j")&(if "!RAND_NUM!" equ "11" set "add2pwd=k")&(if "!RAND_NUM!" equ "12" set "add2pwd=l")&(if "!RAND_NUM!" equ "13" set "add2pwd=m")&(if "!RAND_NUM!" equ "14" set "add2pwd=n")&(if "!RAND_NUM!" equ "15" set "add2pwd=o")&(if "!RAND_NUM!" equ "16" set "add2pwd=p")&(if "!RAND_NUM!" equ "17" set "add2pwd=q")&(if "!RAND_NUM!" equ "18" set "add2pwd=r")&(if "!RAND_NUM!" equ "19" set "add2pwd=s")&(if "!RAND_NUM!" equ "20" set "add2pwd=t")&(if "!RAND_NUM!" equ "21" set "add2pwd=u")&(if "!RAND_NUM!" equ "22" set "add2pwd=v")&(if "!RAND_NUM!" equ "23" set "add2pwd=w")&(if "!RAND_NUM!" equ "24" set "add2pwd=x")&(if "!RAND_NUM!" equ "25" set "add2pwd=y")&(if "!RAND_NUM!" equ "26" set "add2pwd=z")
																(if "!RAND_NUM!" equ "27" set "add2pwd=A")&(if "!RAND_NUM!" equ "28" set "add2pwd=B")&(if "!RAND_NUM!" equ "29" set "add2pwd=C")&(if "!RAND_NUM!" equ "30" set "add2pwd=D")&(if "!RAND_NUM!" equ "31" set "add2pwd=E")&(if "!RAND_NUM!" equ "32" set "add2pwd=F")&(if "!RAND_NUM!" equ "33" set "add2pwd=G")&(if "!RAND_NUM!" equ "34" set "add2pwd=H")&(if "!RAND_NUM!" equ "35" set "add2pwd=I")&(if "!RAND_NUM!" equ "36" set "add2pwd=J")&(if "!RAND_NUM!" equ "37" set "add2pwd=K")&(if "!RAND_NUM!" equ "38" set "add2pwd=L")&(if "!RAND_NUM!" equ "39" set "add2pwd=M")&(if "!RAND_NUM!" equ "40" set "add2pwd=N")&(if "!RAND_NUM!" equ "41" set "add2pwd=O")&(if "!RAND_NUM!" equ "42" set "add2pwd=P")&(if "!RAND_NUM!" equ "43" set "add2pwd=Q")&(if "!RAND_NUM!" equ "44" set "add2pwd=R")&(if "!RAND_NUM!" equ "45" set "add2pwd=S")&(if "!RAND_NUM!" equ "46" set "add2pwd=T")&(if "!RAND_NUM!" equ "47" set "add2pwd=U")&(if "!RAND_NUM!" equ "48" set "add2pwd=V")&(if "!RAND_NUM!" equ "49" set "add2pwd=W")&(if "!RAND_NUM!" equ "50" set "add2pwd=X")&(if "!RAND_NUM!" equ "51" set "add2pwd=Y")&(if "!RAND_NUM!" equ "52" set "add2pwd=Z")
																(if "!RAND_NUM!" equ "53" set "add2pwd=0")&(if "!RAND_NUM!" equ "54" set "add2pwd=1")&(if "!RAND_NUM!" equ "55" set "add2pwd=2")&(if "!RAND_NUM!" equ "56" set "add2pwd=3")&(if "!RAND_NUM!" equ "57" set "add2pwd=4")&(if "!RAND_NUM!" equ "58" set "add2pwd=5")&(if "!RAND_NUM!" equ "59" set "add2pwd=6")&(if "!RAND_NUM!" equ "60" set "add2pwd=7")&(if "!RAND_NUM!" equ "61" set "add2pwd=8")&(if "!RAND_NUM!" equ "62" set "add2pwd=9")
																(if "!RAND_NUM!" equ "63" set "add2pwd=^!")&(if "!RAND_NUM!" equ "64" set "add2pwd=@")&(if "!RAND_NUM!" equ "65" set "add2pwd=#")&(if "!RAND_NUM!" equ "66" set "add2pwd=$")&(if "!RAND_NUM!" equ "67" set "add2pwd=%%")&(if "!RAND_NUM!" equ "68" set "add2pwd=^")&(if "!RAND_NUM!" equ "69" set "add2pwd=&")&(if "!RAND_NUM!" equ "70" set "add2pwd=*")
																set "password=!password!!add2pwd!"
															)
														)
													)
												)
											)
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
	
	if not "%1" equ "" (echo !password!&exit /b)
	
	(
		echo.
		echo [92;40m[[0m[97;40m+[0m[92;40m][0m [97;40mYour password : [0m[37;40m!password![0m
		echo.
		echo [92;40m[[0m[97;40m+[0m[92;40m][0m [97;40mPress any key 2 times to generate new password...[0m
	)
	for /l %%i in (1,1,2) do pause >nul
	goto :main

:rand
	set /a RAND_NUM=%RANDOM% * (%2 - %1 + 1) / 32768 + %1
	exit /b
	