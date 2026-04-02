@ECHO off
REM ----------------------------------------------------------------------------
REM trans_min0.bat
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
  CALL JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ko_min0_3598_20.bin" -o en -t ko -v min0
  REM  JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ja_min0_3598_20.bin" -o en -t ja -v min0
  POPD
)
REM ----------------------------------------------------------------------------
