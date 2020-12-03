---
title: "resultantAppStateDetail enum type"
description: "Enum indicating additional details regarding why an application has a particular install state."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# resultantAppStateDetail enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum indicating additional details regarding why an application has a particular install state.

## Members
|Member|Value|Description|
|:---|:---|:---|
|noAdditionalDetails|0|No additional details are available.|
|dependencyFailedToInstall|1|One or more of the application's dependencies failed to install.|
|dependencyWithRequirementsNotMet|2|One or more of the application's dependencies have requirements which are not met.|
|dependencyPendingReboot|3|One or more of the application's dependencies require a device reboot to complete installation.|
|dependencyWithAutoInstallDisabled|4|One or more of the application's dependencies are configured to not automatically install.|
|iosAppStoreUpdateFailedToInstall|1000|The latest version of the app failed to update from an earlier version.|
|vppAppHasUpdateAvailable|1001|An update is available.|
|userRejectedUpdate|1002|The user rejected the app update. |
|seeInstallErrorCode|2000|Application failed to install. See error code property for more details.|
|autoInstallDisabled|3000|Application is configured to not be automatically installed.|
|managedAppNoLongerPresent|3001|The app is managed but no longer installed.|
|userRejectedInstall|3002|The user rejected the app install.|
|userIsNotLoggedIntoAppStore|3003|The user must log into the App Store to install app.|
|seeUninstallErrorCode|4000|Application failed to uninstall. See error code property for more details.|
|pendingReboot|5000|Device must be rebooted to complete installation of the application.|
|installingDependencies|5001|One or more of the application's dependencies are installing.|
|contentDownloaded|5002|Application content was downloaded to the device.|
|powerShellScriptRequirementNotMet|-1013|PowerShell script requirement rule is not met|
|registryRequirementNotMet|-1012|Registry requirement rule is not met|
|fileSystemRequirementNotMet|-1011|File system requirement rule is not met|
|platformNotApplicable|-1006|Application is not applicable to this platform. (e.g. Android app targeted to IOS)|
|minimumCpuSpeedNotMet|-1005|CPU speed on the target device is less than the configured minimum.|
|minimumLogicalProcessorCountNotMet|-1004|Count of logical processors on the target device is less than the configured minimum.|
|minimumPhysicalMemoryNotMet|-1003|Amount of RAM on the target device is less than the configured minimum.|
|minimumOsVersionNotMet|-1002|OS version on the target device is less than the configured minimum.|
|minimumDiskSpaceNotMet|-1001|Available disk space on the target device is less than the configured minimum.|
|processorArchitectureNotApplicable|-1000|Device architecture (e.g. x86/amd64) is not applicable for the application.|




