---
title: "Create microsoftTunnelServer"
description: "Create a new microsoftTunnelServer object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create microsoftTunnelServer

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, MicrosoftTunnelGateway.Read.All, MicrosoftTunnelGateway.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MicrosoftTunnelGateway.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/microsoftTunnelSites/{microsoftTunnelSiteId}/microsoftTunnelServers
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the microsoftTunnelServer object.

The following table shows the properties that are required when you create the microsoftTunnelServer.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The MicrosoftTunnelServer's Id|
|displayName|String|The MicrosoftTunnelServer's display name|
|tunnelServerHealthStatus|[microsoftTunnelServerHealthStatus](../resources/intune-mstunnel-microsofttunnelserverhealthstatus.md)|The MicrosoftTunnelServer's health status. Possible values are: `unknown`, `healthy`, `unhealthy`, `warning`, `offline`, `upgradeInProgress`, `upgradeFailed`.|
|lastCheckinDateTime|DateTimeOffset|When the MicrosoftTunnelServer last checked in|



## Response
If successful, this method returns a `201 Created` response code and a [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelSites/{microsoftTunnelSiteId}/microsoftTunnelServers
Content-type: application/json
Content-length: 208

{
  "@odata.type": "#microsoft.graph.microsoftTunnelServer",
  "displayName": "Display Name value",
  "tunnelServerHealthStatus": "healthy",
  "lastCheckinDateTime": "2017-01-01T00:02:46.0431416-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 257

{
  "@odata.type": "#microsoft.graph.microsoftTunnelServer",
  "id": "b5cf0aee-0aee-b5cf-ee0a-cfb5ee0acfb5",
  "displayName": "Display Name value",
  "tunnelServerHealthStatus": "healthy",
  "lastCheckinDateTime": "2017-01-01T00:02:46.0431416-08:00"
}
```




