[CmdletBinding()]

# enables PE to receive console output for PE Console Reports at least
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# captures computer name of the host
$output = @{ 'ComputerName' = $env:COMPUTERNAME }

# captures FQDN of the host
$output.FQDN = ([System.Net.Dns]::GetHostByName(($env:computerName))).Hostname

# captures current logged on user
$output.UserName = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# outputs captured information to screen
Write-Output $output