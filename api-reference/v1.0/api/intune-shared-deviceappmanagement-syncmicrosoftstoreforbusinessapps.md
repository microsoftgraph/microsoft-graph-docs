---
title: "syncMicrosoftStoreForBusinessApps action"
description: "Syncs Intune account with Microsoft Store For Business"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# syncMicrosoftStoreForBusinessApps action

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Syncs Intune account with Microsoft Store For Business
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| 
| &nbsp; &nbsp; _Onboarding_ | DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/syncMicrosoftStoreForBusinessApps
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `204 No Content` response code.

## Example request

``` http
POST https://graph.microsoft.com/v1.0/deviceAppManagement/syncMicrosoftStoreForBusinessApps
```

### Response

The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 204 No Content
```



