$Username = $env:USERNAME
$LogTime = get-date -Format "MM-dd-yyyy_HH-mm-ss" 
Set-Variable -name Size -value (Get-ChildItem -Recurse D:\Home\$Username|Measure-Object length -sum).sum
Set-Variable -Name amount -Value (Get-ChildItem D:\Home\$Username|Measure-Object).count

xcopy /Y /H /I /E d:\Home\$Username \\CBSGL-XX\Backup$\$Username

"USERNAME:$Username - LOGTIME:$logtime - SIZE:$size bytes - AMOUNT:$amount Datein - TYPE:automatic"|out-file -FilePath D:\LOGS\$username\log_backup_automatic.txt -Append
