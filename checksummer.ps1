$filenames = (Get-Content checksumfiles.txt)
foreach ($filename in $filenames)
{
	Write-Host "Getting SHA256 checksum from $filename" -ForegroundColor Yellow
	Get-FileHash -Algorithm SHA256 $filename
	Get-FileHash -Algorithm SHA256 $filename | Out-File \tmp\checkedfiles.txt -Append
	'--------------------------------------------------'

}
