$JSONBody = [PSCustomObject][Ordered]@{
    "@type"      = "MessageCard"
    "@context"   = "http://schema.org/extensions"
    "summary"    = "Scanport MDT Done"
    "themeColor" = '0078D7'
    "title"      = "ScanPort MDT Done"
    "text"       = "ScanPort Is Ready"
}

$TeamMessageBody = ConvertTo-Json $JSONBody -Depth 100

$parameters = @{
    "URI"         = 'https://paperriver.webhook.office.com/webhookb2/dc85a2f5-8390-4e5f-b5d1-9b249e7fd15f@08183305-4014-4d86-b231-c3fe1c3fa7bc/IncomingWebhook/2db8a88db34a493eb3ce3c6d0548e883/a9b57064-667b-49dc-b0af-d74cb3f33f8b'
    "Method"      = 'POST'
    "Body"        = $TeamMessageBody
    "ContentType" = 'application/json'
}

Invoke-RestMethod @parameters | Out-Null

<#
cmd /C powershell iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MarkHawesPR/ScanPort/main/Notification.ps1')) 
#>