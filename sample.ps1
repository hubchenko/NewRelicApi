
#Generate Key Header - for Generate-NewRelicHeader
$ApiKey_encom_project = '5e9757cb8b3b42c7575d69fa57eef950c9de9c4356f8f7e'

#get a list of Servers/IID back based on search - Get-NewRelicServerInfo
$labelFilter = @{"filter[labels]"="NSG:hammerdb" }
$labelName = @{"filter[name]"="hammerdb" }

#List of metrics to be queried against; also give to/from, and polling period for sampling
$NewRelicArrayMetrics = @('ProcessSamples/ad_mhubchen/wish86t','ProcessSamples/SQLAgent$HAMMERDB/SQLAGENT','ProcessSamples/MSSQL$HAMMERDB/sqlservr', "ProcessSamples/SYSTEM/Scan64","ProcessSamples/SYSTEM/ruby","ProcessSamples/SYSTEM/BESClient","ProcessSamples/SYSTEM/powershell","ProcessSamples/SYSTEM/mcshield","ProcessSamples/SYSTEM/TrustedInstaller")
$FromDate = "2016-04-19T03:23:59+00:00"
$ToDate =   "2016-04-20T10:52:40+00:00"
$Period = "60"



Generate-NewRelicHeader -ApiKey $ApiKey_encom_project

Get-NewRelicServerInfo -NRFilter @{"filter[name]"="ssd"}