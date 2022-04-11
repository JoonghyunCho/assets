#
# Copyright (c) Samsung Electronics. All rights reserved.
# Licensed under the MIT license. See LICENSE file in the project root for full license information.
#

<#
.SYNOPSIS
Installs Tizen workload manifest.
.DESCRIPTION
Installs the WorkloadManifest.json and WorkloadManifest.targets files for Tizen to the dotnet sdk.
.PARAMETER Version
Use specific VERSION
.PARAMETER DotnetInstallDir
Dotnet SDK Location installed
#>


function Get-LatestVersion([string]$Id) {
    try {
        Write-Host "Id: $Id"
        Write-Host "Invoke: https://api.nuget.org/v3-flatcontainer/$Id/index.json"
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $Response = Invoke-WebRequest -Uri https://api.nuget.org/v3-flatcontainer/$Id/index.json  | ConvertFrom-Json
    } catch {
        Write-Error "Wrong Id: $Id"
    }
    return $Response.versions | Select-Object -Last 1
}

$ManifestBaseName = "Samsung.NET.Sdk.Tizen.Manifest"
# $DotnetVersionBand = @(
#     '200'
#     '201'
#     '300'
# )
$SupportedDotnetVersion = '6'

$DotnetVersion = '6.0.200'
$VersionSplitSymbol = '.'
$SplitVersion = $DotnetVersion.Split($VersionSplitSymbol);
if ($SplitVersion[0] -ne $SupportedDotnetVersion)
{
    Write-Host "Current .NET version is $DotnetVersion. .NET 6.0 SDK is required."
    Exit 0
}
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$ManifestName = "$ManifestBaseName-$DotnetVersionBand"

$Version = Get-LatestVersion -Id $ManifestName
Write-Host "Latest Version $Version"

$DotnetVersion = '6.0.201'
$VersionSplitSymbol = '.'
$SplitVersion = $DotnetVersion.Split($VersionSplitSymbol);
if ($SplitVersion[0] -ne $SupportedDotnetVersion)
{
    Write-Host "Current .NET version is $DotnetVersion. .NET 6.0 SDK is required."
    Exit 0
}
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$ManifestName = "$ManifestBaseName-$DotnetVersionBand"

$Version = Get-LatestVersion -Id $ManifestName
Write-Host "Latest Version $Version"


$DotnetVersion = '6.0.300'
$VersionSplitSymbol = '.'
$SplitVersion = $DotnetVersion.Split($VersionSplitSymbol);
if ($SplitVersion[0] -ne $SupportedDotnetVersion)
{
    Write-Host "Current .NET version is $DotnetVersion. .NET 6.0 SDK is required."
    Exit 0
}
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$DotnetVersionBand = $SplitVersion[0] + $VersionSplitSymbol + $SplitVersion[1] + $VersionSplitSymbol + $SplitVersion[2][0] + "00"
$ManifestName = "$ManifestBaseName-$DotnetVersionBand"

$Version = Get-LatestVersion -Id $ManifestName
Write-Host "Latest Version $Version"