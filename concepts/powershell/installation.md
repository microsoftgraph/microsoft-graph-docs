---
title: "Install the Microsoft Graph PowerShell SDK"
description: "Provides instructions for installing the Microsoft Graph PowerShell SDK."
localization_priority: Normal
author: jasonjoh
---

# Install the Microsoft Graph PowerShell SDK

The Microsoft Graph PowerShell SDK is published on the [PowerShell Gallery](https://www.powershellgallery.com/packages/Microsoft.Graph). You can install the SDK in PowerShell Core or Windows PowerShell using the following command.

```powershell
Install-Module Microsoft.Graph
```

Optionally, you can change the default scope of the installation using the `-Scope` parameter. This requires admin permissions.

```powershell
Install-Module Microsoft.Graph -Scope AllUsers
```

> [!IMPORTANT]
> Installing the SDK in one version of PowerShell does not install it for the other. Be sure to run the installation command inside the version of PowerShell you intend to use it in.

## Verify installation

After the installation completes, you can verify the installed version with the following command.

```powershell
Get-InstalledModule Microsoft.Graph
```

The version in the output should match the latest version published on the PowerShell Gallery. Now you're ready to use the SDK.

> [!div class="nextstepaction"]
> [Get started with the Microsoft Graph PowerShell SDK](get-started.md)

## Updating the SDK

You can update the SDK and all of its dependencies using the following command.

```powershell
Update-Module Microsoft.Graph
```

## Uninstalling the SDK

First, use the following command to uninstall the main module.

```powershell
Uninstall-Module Microsoft.Graph
```

Then, remove all of the dependency modules by running the following commands.

```powershell
Get-InstalledModule Microsoft.Graph.* | %{ if($_.Name -ne "Microsoft.Graph.Authentication"){ Uninstall-Module $_.Name } }
Uninstall-Module Microsoft.Graph.Authentication
```

## Provide feedback

We welcome feedback! Please provide any feedback or report any problems on the [SDK GitHub repository](https://github.com/microsoftgraph/msgraph-sdk-powershell/issues).
