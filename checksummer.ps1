param	(
		[Parameter(Mandatory=$true,HelpMessage="Write filename")]
		[string[]]$filenames,
		[string]$Algorithmtype = 'SHA256'
	)

foreach ($filename in $filenames)
{
	Write-Host "Getting checksum from $filename" -ForegroundColor Yellow
	Get-FileHash -Algorithm $Algorithmtype $filename
	Get-FileHash -Algorithm $Algorithmtype $filename | Out-File \tmp\checkedfiles.txt -Append
	'--------------------------------------------------'

}
