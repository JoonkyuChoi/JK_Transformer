REM --------------------------------------
REM clean-bin.bat
REM --------------------------------------
DEL /S /Q /F *.pdb
DEL /S /Q /F *.exp
DEL /S /Q /F *.ilk
DEL /S /Q /F *.bsc
REM ------------------
REM bin_gcc
REM ------------------
DEL /Q /F .\bin_gcc\models\*.bin
REM ------------------
REM bin_msvc
REM ------------------
RMDIR /S /Q .\bin_msvc\obj

DEL /Q /F .\bin_msvc\Debug\models\*.bin
DEL /Q /F .\bin_msvc\Release\models\*.bin
REM ------------------
REM build
REM ------------------
REM msvc2022
REM ----------
RMDIR /S /Q .\build\msvc2022\_UpgradeReport_Files
RMDIR /S /Q .\build\msvc2022\.vs
RMDIR /S /Q .\build\msvc2022\ipch
RMDIR /S /Q .\build\msvc2022\Debug
RMDIR /S /Q .\build\msvc2022\Release
REM --------------------------------------
