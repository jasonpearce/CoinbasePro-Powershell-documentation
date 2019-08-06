function Get-CoinbaseAccounts { 

<#

.SYNOPSIS

Gets a list of your Coinbase accounts.

.DESCRIPTION

Gets a list of your Coinbase accounts; including cryptocurrency wallets, fiat currency accounts, and vaults.
API permission must be either View or Trade.

.PARAMETER APIKey
Your Coinbase API Key. 
Looks like "eszc7n7p7qeca9uye6cntpgrx7ph2zd3".

.PARAMETER APISecret
Your Coinbase API Secret. 
Looks like "m3j=xupg7++4s8n37fa+36n2kubx4d9+73sz=na++kdjw=u3w+rybpx62st+sxqwwyxy9hz9juu8/ccfu4fjhw6c".

.PARAMETER APIPhrase
Your Coinbase API Phrase. 
Looks like "nuczu6gsh32".

.EXAMPLE

PS> Get-CoinbaseAccounts -APIKey "eszc7n7p7qeca9uye6cntpgrx7ph2zd3" -APISecret "m3j=xupg7++4s8n37fa+36n2kubx4d9+73sz=na++kdjw=u3w+rybpx62st+sxqwwyxy9hz9juu8/ccfu4fjhw6c" -APIPhrase "nuczu6gsh32"

id            : 4ecfb945-db25-7bc7-8b52-795c07e17862
name          : BTC Wallet
balance       : 0.01543210
currency      : BTC
type          : wallet
primary       : True
active        : True
hold_balance  : 0.00
hold_currency : USD

id            : edf928f7-52b8-0f91-4638-3efd26994f0e
name          : ETH Wallet
balance       : 0.15432100
currency      : ETH
type          : wallet
primary       : False
active        : True
hold_balance  : 0.00
hold_currency : USD

id            : ad7ac687-b4a3-f888-3e77-36adf3664e00
name          : LTC Wallet
balance       : 1.54321000
currency      : LTC
type          : wallet
primary       : False
active        : True
hold_balance  : 0.00
hold_currency : USD

id                        : 992029b0-9053-5b04-172e-4928abea2f01
name                      : USD Wallet
balance                   : 50.00
currency                  : USD
type                      : fiat
primary                   : False
active                    : True
wire_deposit_information  : @{account_number=7821507869; routing_number=047928793; 
							bank_name=Metropolitan Commercial Bank; 
							bank_address=99 Park Ave 4th Fl New York, NY 10016; 
							bank_country=; account_name=Coinbase Inc;
                            account_address=548 Market Street, #23008, San Francisco, CA 94104; 
							reference=USLZUDZNYHL}
swift_deposit_information :
hold_balance              : 0.00
hold_currency             : USD

.EXAMPLE

PS> Get-CoinbaseAccounts -APIKey "eszc7n7p7qeca9uye6cntpgrx7ph2zd3" -APISecret "m3j=xupg7++4s8n37fa+36n2kubx4d9+73sz=na++kdjw=u3w+rybpx62st+sxqwwyxy9hz9juu8/ccfu4fjhw6c" -APIPhrase "nuczu6gsh32" | Sort-Object Name | Format-Table -AutoSize

id                                   name        balance     currency type   primary active hold_balance hold_currency
--                                   ----        -------     -------- ----   ------- ------ ------------ -------------
1711fd78-4164-4e2c-e77e-d6321260b78f BAT Wallet  0.00000000  BAT      wallet   False   True 0.00         USD
3f6516ce-38ae-684f-6c95-4c67b8d09292 BCH Wallet  0.00000000  BCH      wallet   False   True 0.00         USD
4ecfb945-db25-7bc7-8b52-795c07e17862 BTC Wallet  0.01543210  BTC      wallet    True   True 0.00         USD
25f0abaa-1e65-6517-27fd-82b1a6a97a92 CVC Wallet  0.00000000  CVC      wallet   False   True 0.00         USD
0ca8b171-caca-516e-3167-605c9268030b DAI Wallet  0.00000000  DAI      wallet   False   True 0.00         USD
68986bbb-cec1-596c-05b1-6408f00f4939 DNT Wallet  0.00000000  DNT      wallet   False   True 0.00         USD
a4e5b8d9-e972-1c92-9dd0-5a2da5f8c155 EOS Wallet  0.0000      EOS      wallet   False   True 0.00         USD
e9c263b4-2f47-6456-fd6d-3a666d33628b ETC Wallet  0.00000000  ETC      wallet   False   True 0.00         USD
edf928f7-52b8-0f91-4638-3efd26994f0e ETH Wallet  0.15432100  ETH      wallet   False   True 0.00         USD
cad09b14-371f-cb11-d3a1-8e58a11c2455 GNT Wallet  0.00000000  GNT      wallet   False   True 0.00         USD
9085adce-19cd-207f-261d-58384dac3873 LINK Wallet 0.00000000  LINK     wallet   False   True 0.00         USD
e223eccb-8352-1469-2e1e-89c39ba768c7 LOOM Wallet 0.00000000  LOOM     wallet   False   True 0.00         USD
ad7ac687-b4a3-f888-3e77-36adf3664e00 LTC Wallet  1.54321000  LTC      wallet   False   True 0.00         USD
01ed7525-a85a-d9a4-674c-9b4c928e12fb MANA Wallet 0.00000000  MANA     wallet   False   True 0.00         USD
718c2ef1-6b4a-f3cf-21ac-c7fa9922a5dd REP Wallet  0.00000000  REP      wallet   False   True 0.00         USD
992029b0-9053-5b04-172e-4928abea2f01 USD Wallet  50.00       USD      fiat     False   True 0.00         USD
1387278e-2a42-da05-f284-2bdf6c7babfa USDC Wallet 0.000000    USDC     wallet   False   True 0.00         USD
6a699974-e601-f9f2-cd4c-970d58b167e6 XLM Wallet  0.0000000   XLM      wallet   False   True 0.00         USD
61bb5a78-6d32-d077-70a3-4d1f1e7bc369 XRP Wallet  0.000000    XRP      wallet   False   True 0.00         USD
5869fc6d-0d8d-72fd-2de6-ec61419075c7 ZEC Wallet  0.00000000  ZEC      wallet   False   True 0.00         USD
d4e7102d-67a6-b17b-df51-1a2c5758de46 ZRX Wallet  0.00000000  ZRX      wallet   False   True 0.00         USD

.EXAMPLE

PS C:\> Get-CoinbaseAccounts -APIKey "eszc7n7p7qeca9uye6cntpgrx7ph2zd3" -APISecret "m3j=xupg7++4s8n37fa+36n2kubx4d9+73sz=na++kdjw=u3w+rybpx62st+sxqwwyxy9hz9juu8/ccfu4fjhw6c" -APIPhrase "nuczu6gsh32" | Where-Object {$_.balance -notlike "0.000*"} | Sort-Object Name | Format-Table -AutoSize

id                                   name        balance     currency type   primary active hold_balance hold_currency
--                                   ----        -------     -------- ----   ------- ------ ------------ -------------
4ecfb945-db25-7bc7-8b52-795c07e17862 BTC Wallet  0.01543210  BTC      wallet    True   True 0.00         USD
edf928f7-52b8-0f91-4638-3efd26994f0e ETH Wallet  0.15432100  ETH      wallet   False   True 0.00         USD
ad7ac687-b4a3-f888-3e77-36adf3664e00 LTC Wallet  1.54321000  LTC      wallet   False   True 0.00         USD
992029b0-9053-5b04-172e-4928abea2f01 USD Wallet  50.00       USD      fiat     False   True 0.00         USD

.LINK

https://support.pro.coinbase.com/customer/en/portal/articles/2945320-how-do-i-create-an-api-key-for-coinbase-pro-

.LINK

https://docs.pro.coinbase.com/

.LINK

https://github.com/Invertee/CoinbasePro-Powershell

#>

    Param(
    [Parameter(Mandatory=$true)] $APIKey,
    [Parameter(Mandatory=$true)] $APISecret,
    [Parameter(Mandatory=$true)] $APIPhrase,
    [parameter()] [switch] $SandboxAPI
    )
    
    $api = Get-BlankAPI -SandboxAPI:$SandboxAPI
    $api.key = "$APIKey"
    $api.secret = "$APISecret"
    $api.passphrase = "$APIPhrase"

    $api.method = 'GET'
    $api.url = '/coinbase-accounts'
    $response = Invoke-CoinbaseProRequest $api
    Write-Output $response

}
