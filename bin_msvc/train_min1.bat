@ECHO off
REM ----------------------------------------------------------------------------
REM train_min1.bat
REM ----------------------------------------------------------------------------

SET /A appScan=0
IF EXIST ".\Debug\JK-Transformer.exe" (
	SET /A appScan=1
	SET appFolder=Debug
)

IF EXIST ".\Release\JK-Transformer.exe" (
	SET /A appScan=2
	SET appFolder=Release
)

REM ------------------------------------
REM run a process
REM ------------------------------------
IF %appScan% GTR 0 (
  PUSHD .\%appFolder%\
	CALL JK-Transformer.exe -e 30 -o en -t ko -v min1
	REM  JK-Transformer.exe -e 30 -o en -t ja -v min1
	POPD
)
REM ----------------------------------------------------------------------------
