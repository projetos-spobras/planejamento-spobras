$headers = @{
    'Authorization' = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1OTg0NzE4NCwiZXhwIjoyMDc1NDIzMTg0fQ.HtyyVQN9QtgKtGfpSsnu7mvMHH8YRzl-Jk3cZvpqFTk'
}
$url_empenhos = 'http://localhost:3005/api/contrato-financeiro?contratoOriginalId=955&tipo=empenhos'
$url_medicoes = 'http://localhost:3005/api/contrato-financeiro?contratoOriginalId=955&tipo=medicoes'

Write-Host "--- EMPENHOS ---"
$resp_empenhos = Invoke-RestMethod -Uri $url_empenhos -Headers $headers
Write-Host "Count: $($resp_empenhos.data.Count)"
$resp_empenhos.data | Select-Object -First 1 | ConvertTo-Json

Write-Host "`n--- MEDICOES ---"
$resp_medicoes = Invoke-RestMethod -Uri $url_medicoes -Headers $headers
Write-Host "Count: $($resp_medicoes.data.Count)"
$resp_medicoes.data | Select-Object -First 1 | ConvertTo-Json
