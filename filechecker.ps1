<#
.Synopsis
   Check checksum of files
.DESCRIPTION
   Check MD5, SHA256 or SHA512 checksum of files 
.EXAMPLE
   filechecker.ps1 -Filename example.file -Algorithmtype SHA256
#>

param	(
		[Parameter(Mandatory=$true,HelpMessage="Write filename")]
		[string[]]$Filename,
		[string]$Algorithmtype = 'SHA256'
	)

foreach ($filenames in $filename)
{
	Write-Host "Getting checksum from $filenames" -ForegroundColor Yellow
	Get-FileHash -Algorithm $Algorithmtype $filenames	
	'--------------------------------------------------'

}
