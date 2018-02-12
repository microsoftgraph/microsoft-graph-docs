Param(
    [switch]$cleanUp,
    [string]$file
)
$repoPath = (Get-Location).Path
$downloadedApiDocs = $false
$downloadedNuGet = $false

Write-Host "Repository location: ", $repoPath

# Check for Markdown Scanner in path
$apidocs = $null
if (Get-Command "apidocs.exe" -ErrorAction SilentlyContinue) {
    $apidocs = (Get-Command "apidocs.exe").Source
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

    $packagesPath = Join-Path $repoPath -ChildPath "markdown-scanner"
    $result = New-Item -ItemType Directory -Force -Path $packagesPath

    # install markdown scanner from nuget
    Write-Host "Running nuget.exe from ", $nugetPath
    $nugetParams = "install", "MarkdownScanner.BinaryTools", "-OutputDirectory", $packagesPath, "-NonInteractive"
    & $nugetPath $nugetParams

    if ($LastExitCode -ne 0) { 
        # nuget error, so we can't proceed
        Write-Host "Error installing Markdown Scanner from NuGet. Aborting."
        Remove-Item $nugetPath
        exit $LastExitCode
    }

    # get the path to the markdown-scanner exe
    $pkgfolder = Get-ChildItem -LiteralPath $packagesPath -Directory | Where-Object {$_.name -match "MarkdownScanner.BinaryTools."}
    $apidocs = [System.IO.Path]::Combine($packagesPath, $pkgfolder.Name, "tools\apidocs.exe")
    $downloadedApiDocs = $true
}

$lastResultCode = 0

# check links at the root of the repository
$appVeyorUrl = $env:APPVEYOR_API_URL

$parms = "check-links", "--path", $repoPath, "--ignore-warnings"
if ($appVeyorUrl -ne $null)
{
    $parms = $parms += "--appveyor-url", $appVeyorUrl
}

& $apidocs $parms

if ($LastExitCode -ne 0) { 
    $lastResultCode = $LastExitCode
}

# check documents in each api reference set

$path = Join-Path $repoPath -ChildPath "api-reference"
$reference_paths = [System.IO.Directory]::GetDirectories($path)
ForEach($reference in $reference_paths)
{
        # Run the checks on all files
        $parms = "check-docs", "--path", $reference, "--ignore-warnings", "--relax-string-validation", "--print-failures-only"
        if ($appVeyorUrl -ne $null)
        {
            $parms = $parms += "--appveyor-url", $appVeyorUrl
        }
        if ($file -ne "")
        {
            $parms = $parms += "--file", $file
        }


    & $apidocs $parms    
    if ($LastExitCode -ne 0) { 
        $lastResultCode = $LastExitCode
    }
}

# Clean up the stuff we downloaded
if ($cleanUp -eq $true) {
    if ($downloadedNuGet -eq $true) {
        Remove-Item $nugetPath 
    }
    if ($downloadedApiDocs -eq $true) {
        Remove-Item $packagesPath -Recurse
    }
}

if ($lastResultCode -ne 0) {
    Write-Host "Errors were detected. This build failed."
    exit $lastResultCode
}