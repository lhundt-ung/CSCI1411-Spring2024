# Convert Fahrenheit to Celsius
# Dynamic Type Conversion
function ConvertCelciusToFahrenheit($celcius) #Issue
{
    Write-Host "Before executing conversion formula: " + $celcius.GetType()

    #Formula for conversion
    $fahrenheit = ([int]$celcius * 1.8) + 32

    Write-Host "After formula : " + $fahrenheit.GetType()
    Write-Host "$fahrenheit Farenheit"
}

$c = Read-Host 'Input a temperature in Celcius'
ConvertCelciusToFahrenheit $c
