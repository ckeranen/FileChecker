param	(
		[Parameter(Mandatory=$true,HelpMessage="Write filename")]
		[string[]]$filename,
		[string]$Algorithmtype = 'SHA256'
	)

foreach ($filenames in $filename)
{
	Write-Host "Getting checksum from $filenames" -ForegroundColor Yellow
	Get-FileHash -Algorithm $Algorithmtype $filenames
	Get-FileHash -Algorithm $Algorithmtype $filenames | Out-File \tmp\checkedfiles.txt -Append
	'--------------------------------------------------'

}
