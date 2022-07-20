@ECHO OFF
REM - LABEL INDICATING THE BEGINNING OF THE DOCUMENT.
:BEGIN
CLS
REM - THE BELOW LINE GIVES THE USER 3 CHOICES (DEFINED AFTER /C:)
CHOICE /N /C:123 PICK A NUMBER (1, 2, or 3)%1
REM - THE NEXT THREE LINES ARE DIRECTING USER DEPENDING UPON INPUT
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE
ECHO YOU HAVE PRESSED THREE
GOTO END
:TWO
ECHO YOU HAVE PRESSED TWO
GOTO END
:ONE
ECHO YOU HAVE PRESSED ONE
:END

:: Renames a Text File with the Current Date as the Name
:: The File Extension is Kept
::
C:\BATCH\DOS\XSET CUR-DATE DATE YY-MM-DD
REN %1.* %CUR-DATE%.*

IF "%1" == "" XCOPY B:\*.*       
IF NOT "%1" == "" XCOPY B:\%1    
ECHO.                            
C:\BATCH\DR

FOR %%F IN (%1 %2 %3 %4 %5 %6 %7 %8 %9) DO DEL %%F 
       