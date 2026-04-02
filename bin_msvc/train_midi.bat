@ECHO off
REM ----------------------------------------------------------------------------
REM train_midi.bat
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
	CALL JK-Transformer.exe -e 10 -o en -t ko -v midi
	REM  JK-Transformer.exe -e 10 -o en -t ja -v midi
	POPD
)
REM ----------------------------------------------------------------------------
