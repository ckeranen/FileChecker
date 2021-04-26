$filenames = (Get-Content checksumfiles.txt)
foreach ($filename in $filenames)
{
	Write-Host "$filename" -ForegroundColor Yellow
	Get-FileHash -Algorithm SHA256 $filename
	'--------------------------------------------------'

}
