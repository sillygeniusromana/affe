$LogTime = get-date -Format "HH:mm dd.mm.yyyy"
$user = $env:USERNAME

"Login Successfull          Time:$Logtime          User:$user"|out-file -FilePath d:\logs\log_logons.txt -Append