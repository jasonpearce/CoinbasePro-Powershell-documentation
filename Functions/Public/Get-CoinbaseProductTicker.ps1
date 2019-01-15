function Get-CoinbaseProductTicker {
        
    Param(
    [Parameter(Mandatory=$false)] $APIKey,
    [Parameter(Mandatory=$false)] $APISecret,
    [Parameter(Mandatory=$false)] $APIPhrase, 
    [parameter(Mandatory=$true)][ValidateSet("BTC-GBP","BTC-EUR","ETH-BTC","ETH-EUR","LTC-BTC","LTC-EUR","LTC-USD","ETH-USD","BTC-USD","BCH-USD")]$ProductID,
    [parameter()] [switch] $SandboxAPI
    )

    $api = Get-BlankAPI -SanAPI:$SandboxAPIPI      
    $api.key = "$APIKey"
    $api.secret = "$APISecret"
    $api.passphrase = "$APIPhrase"

    $ProductID = $ProductID.toLower()

    $api.url = "/products/$ProductID/ticker"
    $api.method = 'GET'
    $response = Invoke-CoinbaseRequest $api

    Write-Output $response
}