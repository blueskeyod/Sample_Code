@echo off

set vbsPath=m-link.vbs
set lnkname=untitle-ok.lnk

set cabPath=%~dp0\tmp.cab

rem run vbs,make lnkfile
wscript /nologo %vbsPath%

rem cab lnkfile to cab
makecab %lnkname% %cabPath%

@echo make cab file done.
PAUSE

