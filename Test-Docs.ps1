Param(
    [switch]$cleanUp,
    [string]$file
)
$repoPath = (Get-Location).Path
$downloadedApiDoctor = $false
$downloadedNuGet = $false

Write-Host "Repository location: ", $repoPath

# Check for ApiDoctor in path
$apidoc = $null
if (Get-Command "apidoc.exe" -ErrorAction SilentlyContinue) {
    $apidoc = (Get-Command "apidoc.exe").Source
} else {
    $nugetPath = $null
    if (Get-Command "nuget.exe" -ErrorAction SilentlyContinue) {
        # Use the existing nuget.exe from the path
        $nugetPath = (Get-Command "nuget.exe").Source
    }
    else
    {
        # Download nuget.exe from the nuget server if required
        $nugetPath = Join-Path $repoPath -ChildPath "nuget.exe"
        $nugetExists = Test-Path $nugetPath
        if ($nugetExists -eq $false) {
            Write-Host "nuget.exe not found. Downloading from dist.nuget.org"
            Invoke-WebRequest -Uri "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile $nugetPath
        }
        $downloadedNuGet = $true
    }

    $packagesPath = Join-Path $repoPath -ChildPath "apidoctor"
    $result = New-Item -ItemType Directory -Force -Path $packagesPath

    # install apidoctor from nuget
    Write-Host "Running nuget.exe from ", $nugetPath
    $nugetParams = "install", "ApiDoctor", "-OutputDirectory", $packagesPath, "-NonInteractive", "-DisableParallelProcessing"
    & $nugetPath $nugetParams

    if ($LastExitCode -ne 0) { 
        # nuget error, so we can't proceed
        Write-Host "Error installing Api Doctor from NuGet. Aborting."
        Remove-Item $nugetPath
        exit $LastExitCode
    }

    # get the path to the Api Doctor exe
    $pkgfolder = Get-ChildItem -LiteralPath $packagesPath -Directory | Where-Object {$_.name -match "ApiDoctor"}
    $apidoc = [System.IO.Path]::Combine($packagesPath, $pkgfolder.Name, "tools\apidoc.exe")
    $downloadedApiDoctor = $true
}

$lastResultCode = 0

# run validation at the root of the repository
$appVeyorUrl = $env:APPVEYOR_API_URL

$parms = "check-all", "--path", $repoPath
if ($appVeyorUrl -ne $null)
{
    $parms = $parms += "--appveyor-url", $appVeyorUrl
}

& $apidoc $parms

if ($LastExitCode -ne 0) { 
    $lastResultCode = $LastExitCode
}

# Clean up the stuff we downloaded
if ($cleanUp -eq $true) {
    if ($downloadedNuGet -eq $true) {
        Remove-Item $nugetPath 
    }
    if ($downloadedApiDoctor -eq $true) {
        Remove-Item $packagesPath -Recurse
    }
}

if ($lastResultCode -ne 0) {
    Write-Host "Errors were detected. This build failed."
    exit $lastResultCode
}