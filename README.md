powershell-utils
================

Various utility functions written in powershell.

To load the utility functions in this repo place the following in your profile or at the begining of your script.

    ##-------------------------------------------
    ## Load Script Libraries
    ##-------------------------------------------
    $libPath = "D:\Documents\GitHub\powershell-utils"
    Clear-Host
    Get-ChildItem -LiteralPath $libPath -Filter "*.ps1" | ForEach-Object {. (Join-Path $libPath $_.Name)} | Out-Null