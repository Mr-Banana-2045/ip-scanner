$ipm = read-host "IP Modem > "
foreach ($ip in 1..254) {
    $ipParts = $ipm -split "\."
    $ipParts[-1] = $ip
    $newIpAddress = $ipParts -join "."
    $out = $newIpAddress
    if (Test-Connection -ComputerName $out -Count 1 -Quiet) { 
        Write-Host "$out : ON" -ForegroundColor green
    } else {
        Write-host "$out : OFF" -ForegroundColor red
    }
}