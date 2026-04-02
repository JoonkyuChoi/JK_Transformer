@ECHO off
REM ----------------------------------------------------------------------------
REM trans_tiny.bat
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
  CALL JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ko_tiny_1834_10.bin" -o en -t ko -v tiny
  REM  JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ja_tiny_1834_10.bin" -o en -t ja -v tiny
  POPD
)
REM ----------------------------------------------------------------------------
