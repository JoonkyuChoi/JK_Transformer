@ECHO off
REM ----------------------------------------------------------------------------
REM trans_huge.bat
REM ----------------------------------------------------------------------------
CLS
SET /A appScan=0
REM ------------------------------------
REM check folders
REM ------------------------------------
IF EXIST ".\Debug\JK-Transformer.exe" (
  SET /A appScan=1
) ELSE IF EXIST ".\Release\JK-Transformer.exe" (
  SET /A appScan=2
)

IF %appScan% LEQ 0 (
  ECHO on
  ECHO 구동시킬 파일을 찾을 수 없습니다.
  ECHO 배치 스크립트를 종료합니다.
  EXIT /B
) ELSE (
  ECHO on
  ECHO 검색된 프로세스를 구동중 입니다.
  ECHO off
)
REM ------------------------------------
REM run a process
REM ------------------------------------
IF %appScan% EQU 1 (
  SET appFolder=Debug
) ELSE (
  SET appFolder=Release
)
CD .\%appFolder%\
CALL JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ko_huge_21388_40.bin" -o en -t ko -v huge
REM  JK-Transformer.exe -e 0 -m ".\models\save\model_windo_en-ja_huge_21388_40.bin" -o en -t ja -v huge
CD ..\
REM ----------------------------------------------------------------------------
