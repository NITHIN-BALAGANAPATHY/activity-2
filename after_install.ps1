Write-Host "=== AfterInstall Hook: Starting ==="

# Optional: Set permissions to ensure IIS can read the deployed files
$targetPath = "C:\inetpub\wwwroot"

# Grant 'Everyone' full control (you can tighten this if needed)
icacls $targetPath /grant "Everyone:(OI)(CI)F" /T

# Create a deployment log
$logFile = Join-Path $targetPath "deployment.log"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
"Deployment completed at: $date" | Out-File -FilePath $logFile -Encoding UTF8 -Append

Write-Host "=== AfterInstall Hook: Completed Successfully ==="
