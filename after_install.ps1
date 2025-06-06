Write-Host "Running AfterInstall script..."
# Optional: set permissions or log the deployment
$date = Get-Date
"Deployment completed at: $date" | Out-File -FilePath "C:\inetpub\wwwroot\deployment.log" -Encoding UTF8 -Append
