function Get-ScriptDirectory
{
	$invocation = (Get-Variable MyInvocation -Scope 1).Value
	Split-Path $invocation.MyCommand.Path
}

function Deploy-Files($sourceDir, $destinationDir, $filter)
{
	Write-Host "Searching in: " $sourceDir
	$files = Get-ChildItem -LiteralPath $sourceDir -Filter $filter
	ForEach($file in $files)
	{
		Write-Host "Copying file: " $file
		Copy-Item -LiteralPath (Join-Path $sourceDir $file) -Destination $destinationDir
	}
}

function IE-OpenUrls($inputFile)
{
	$iexplore = "iexplore.exe"
	$urls = Get-Content $inputFile
	foreach($url in $urls)
	{
    	start-process $iexplore $url
	}
}