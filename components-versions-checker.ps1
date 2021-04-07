#start
#increase length of a line
$host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(1024,8096)
#check FileVersion property of all exe and dll files in following locations
#C:\Program Files\Veeam
#C:\Program Files (x86)\Veeam
#C:\Program Files\Common Files\Veeam
(Get-ChildItem "C:\Program Files\Veeam","C:\Program Files (x86)\Veeam","C:\Program Files\Common Files\Veeam" -Include *.exe,*.dll -Recurse -Force).VersionInfo | Format-Table -AutoSize | Out-File c:\temp\filesversions.txt -Append
#end