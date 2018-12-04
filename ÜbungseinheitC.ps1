Get-Alias dir
Get-Alias -Definition Get-ChildItem

Get-Help Get-Help
Get-Help Get-Alias -Examples
Get-Help Get-Alias -Full

Get-Command *Service*
Get-Help Get-Command
Get-Command *Service* -CommandType Cmdlet
Get-Command -Noun Service

Get-Help Get-Command -Online

Get-Process w*
Get-Process w* | Format-Table -HideTableHeaders

Get-Process w* | Format-List
Get-Process w* | Format-Wide

Get-EventLog -List
Get-EventLog -List | Out-File eventLog.txt

New-Alias OF Out-File
Get-Alias OF

Get-Process
Get-Process | Set-Variable -Name '$processes'

Get-Variable -Name '$processes'
Get-Variable -Name '$processes' -ValueOnly

Get-Variable -Name '$processes' -ValueOnly | OF processes.txt

Get-Process explorer | Format-Custom *

Get-Process explorer | Format-Table Name, VirtualMemorySize
Get-Process explorer | Format-Table Name, PagedMemorySize
Get-Process explorer | Format-Table Name, NonpagedSystemMemorySize
Get-Process explorer | Format-Table Name, VirtualMemorySize, PagedMemorySize, NonpagedSystemMemorySize
Get-Process | Measure-Object -Average PagedMemorySize | Format-Custom Average
Get-Process | Measure-Object -Sum VirtualMemorySize | Format-Custom Sum
Get-Process | Measure-Object -Average -Sum -Maximum -Minimum VirtualMemorySize, PagedMemorySize | Format-Table

Get-Process | Sort-Object PagedMemorySize

Get-Process | Sort-Object PagedMemorySize | Format-Table Name, PagedMemorySize

Get-Process | Sort-Object PagedMemorySize | Format-Table Name, PagedMemorySize | Select-Object -First 12

Get-Service -DisplayName *update

Get-Service -DisplayName 'Windows Update' | Stop-Service -WhatIf

Get-Service -DisplayName 'Windows Update' | Stop-Service -Confirm

Get-Service -DisplayName 'Windows Update' | Start-Service

Get-Help Get-Member -full
Get-Service | Get-Member
Get-Service | Get-Member -MemberType Property
Get-Service | Get-Member -View All
Get-Service | Get-Member -View Base
Get-Service | Get-Member -View Adapted, Extended

Set-Location C:\
Get-ChildItem -Force
Get-ChildItem | Get-Member -Name *time*
Get-ChildItem -Force | Format-Table Name, CreationTime, LastAccessTime, LastWriteTime

Get-Command -Verb Out
Get-Help Get-EventLog -Full
Get-EventLog System -EntryType Error, Warning -Newest 100 | Out-Default
Get-EventLog System -EntryType Error, Warning -Newest 100 | Out-File eventLog.txt
Get-EventLog System -EntryType Error, Warning -Newest 100 | Out-GridView
Get-EventLog System -EntryType Error, Warning -Newest 100 | Sort-Object InstanceId -Descending | Out-GridView
Get-EventLog System -EntryType Error, Warning -Newest 100 | Sort-Object InstanceId -Descending | Select-Object InstanceId | Out-GridView