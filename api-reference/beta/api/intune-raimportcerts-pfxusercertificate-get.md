---
title: "Get pfxUserCertificate"
description: "Read properties and relationships of the pfxUserCertificate object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get pfxUserCertificate

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /pfxUserCertificates/{pfxUserCertificatesId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [pfxUserCertificate](../resources/intune-raimportcerts-pfxusercertificate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/pfxUserCertificates/{pfxUserCertificatesId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 844

{
  "value": {
    "@odata.type": "#microsoft.graph.pfxUserCertificate",
    "tenantId": "f9882bcd-2bcd-f988-cd2b-88f9cd2b88f9",
    "userId": "a991071c-071c-a991-1c07-91a91c0791a9",
    "thumbprint": "Thumbprint value",
    "userUpn": "User Upn value",
    "encryptedPfxBlob": "Encrypted Pfx Blob value",
    "encryptedPfxPassword": "Encrypted Pfx Password value",
    "certStartDate": "2017-01-01T00:01:48.7697664-08:00",
    "certExpirationDate": "2016-12-31T23:56:39.3841403-08:00",
    "providerName": "Provider Name value",
    "encryptionKeyName": "Encryption Key Name value",
    "paddingScheme": 13,
    "status": 6,
    "intendedPurpose": 15,
    "createdTime": "2017-01-01T00:03:18.9597073-08:00",
    "isDeleted": true,
    "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
    "eTag": "ETag value"
  }
}
```




