$Username = $env:USERNAME
$LogTime = get-date -Format "MM-dd-yyyy_HH-mm-ss" 
Set-Variable -name Size -value (Get-ChildItem -Recurse D:\Home\$Username|Measure-Object length -sum).sum
Set-Variable -Name amount -Value (Get-ChildItem D:\Home\$Username|Measure-Object).count

robocopy d:\Home\$Username /E /XO D:\BACKUP\$Username

"USERNAME:$Username - LOGTIME:$logtime - SIZE:$size bytes - AMOUNT:$amount Datein - TYPE:manual-newdata"|out-file -FilePath D:\LOGS\$username\log_backup_manual.txt -Append
