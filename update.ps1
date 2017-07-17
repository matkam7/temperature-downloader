$json = Get-Content -Raw -Path $PsScriptRoot\temperature.json | ConvertFrom-Json


IF([string]::IsNullOrEmpty($json)) 
{            
    #...           
}
else
{
    $d = Get-Date -Format g
    $c = $json.celsius
    $f = $json.fahrenheit

    $obj = New-Object PSObject
    $obj | Add-Member Noteproperty -Name Date -value $d
    $obj | Add-Member Noteproperty -Name Celsius -value $c
    $obj | Add-Member Noteproperty -Name Fahrenheit -value $f
    $obj | export-csv -Path $PsScriptRoot\data.csv -Append -Force
}

