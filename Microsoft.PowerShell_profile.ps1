function prompt {
    $esc = [char]27
    $user = $env:USERNAME
    $hostName = $env:COMPUTERNAME
    $pwdPath = (Get-Location).Path.Replace($env:USERPROFILE, "~")
    
    Write-Host "$esc[36m$user$esc[94m@$hostName$esc[93m:$pwdPath$esc[0m " -NoNewline
    Write-Host ""
    
    return "  $esc[31m>$esc[0m"
}

