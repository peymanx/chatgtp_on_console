# ChatGPT api by @peymanx
Param(
    [Parameter(Mandatory = $true, HelpMessage = 'prompt:')]
    [Alias('p')]
    [string]$prompt,

    [Parameter(Mandatory = $false, HelpMessage = 'silent:')]
    [Alias('s')]
    [switch]$silent, 

    [Parameter(Mandatory = $false, HelpMessage = 'Redirect output to a text file:')]
    [Alias('o')]
    [Alias('out')]
    [string]$output,

    [Parameter(Mandatory = $false, HelpMessage = 'persian result:')]
    [Alias('f')]
    [Alias('farsi')]
    [Alias('fa')]
    [switch]$persian 

)
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

$headers = @{
    "Content-Type"  = "application/json"
    "Authorization" = "Bearer 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"
}

if ($persian) {
    $prompt = $prompt + "- answer in persian"
}

$body = @{
    "model"       = "text-davinci-003"
    "prompt"      = $prompt
    "temperature" = 0.5
    "max_tokens"  = 1000
} | ConvertTo-Json

$url = "https://api.openai.com/v1/completions"

$response = Invoke-RestMethod -Uri $url -Headers $headers -Method Post -Body $body

Add-Type -AssemblyName System.Windows.Forms

foreach ($choice in $response.choices) {    
    $msg = $choice.Text.Trim(" ", "`r", "`n")
    $bytes = [System.Text.Encoding]::GetEncoding("ISO-8859-1").GetBytes($msg)
    $text = [System.Text.Encoding]::UTF8.GetString($bytes)
    if ($persian) {
        [System.Windows.Forms.MessageBox]::Show($text)
    }
    else {
        Write-Output($text)        
    }
    if ($output) {
        Set-Content -Path $output -Value $text     
    }


}
