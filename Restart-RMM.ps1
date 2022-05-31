if ((Get-Service LTService -ErrorAction SilentlyContinue) -ne $null)
{
	if ((Get-Service LTService).status -ne "Running") 
	{
	    Start-Service LTService -ErrorAction SilentlyContinue
	    Restart-Service LTSvcMon -ErrorAction SilentlyContinue
	    write-Host "Error"
	}
	else
	{
	    Write-Host "Ok"
	}
}
else
{
	Write-Host "Error"
}