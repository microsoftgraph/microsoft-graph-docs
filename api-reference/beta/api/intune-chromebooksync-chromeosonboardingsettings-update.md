---
title: "Update chromeOSOnboardingSettings"
description: "Update the properties of a chromeOSOnboardingSettings object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update chromeOSOnboardingSettings

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/chromeOSOnboardingSettings/{chromeOSOnboardingSettingsId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.

The following table shows the properties that are required when you create the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ChromebookTenant's Id|
|ownerUserPrincipalName|String|The ChromebookTenant's OwnerUserPrincipalName|
|onboardingStatus|[onboardingStatus](../resources/intune-chromebooksync-onboardingstatus.md)|The ChromebookTenant's OnboardingStatus. Possible values are: `unknown`, `inprogress`, `onboarded`, `failed`.|
|lastModifiedDateTime|DateTimeOffset|The ChromebookTenant's LastModifiedDateTime|
|lastDirectorySyncDateTime|DateTimeOffset|The ChromebookTenant's LastDirectorySyncDateTime|



## Response
If successful, this method returns a `200 OK` response code and an updated [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/chromeOSOnboardingSettings/{chromeOSOnboardingSettingsId}
Content-type: application/json
Content-length: 238

{
  "@odata.type": "#microsoft.graph.chromeOSOnboardingSettings",
  "ownerUserPrincipalName": "Owner User Principal Name value",
  "onboardingStatus": "inprogress",
  "lastDirectorySyncDateTime": "2016-12-31T23:57:56.1183185-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 351

{
  "@odata.type": "#microsoft.graph.chromeOSOnboardingSettings",
  "id": "0344255d-255d-0344-5d25-44035d254403",
  "ownerUserPrincipalName": "Owner User Principal Name value",
  "onboardingStatus": "inprogress",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastDirectorySyncDateTime": "2016-12-31T23:57:56.1183185-08:00"
}
```




