---
title: "Discover directoryDefinition"
description: "Describes the Discover directoryDefinition MS Grph API"
localization_priority: Normal
author: arvinh-msft"
ms.prod: "microsoft-identity-platform"
---
# Discover directoryDefinition

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Discover the latest schema definition for provisioning to an application. 

## Permissions

|Permission Type |Permissions (from least to most privileged)|
|-|-|
|Delegated (work or school account)|`Directory.ReadWrite.All`|
|Delegated (personal Microsoft account)|Not supported.|
|Application-only|Not supported.|

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/synchronization/jobs/{jobId}/start
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method. 

## Response

If successful, returns a `200 OK` response, with discovered directory.

## Example

##### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_start"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/start
```

##### Response
The following is an example of a response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 204 No Content
## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

```json
{
  "discoverabilities": "AttributeNames", "AttributeDataTypes"
  "discoveryDateTime": "2019-03-20T15:47:50.4707552Z",
  "id": "directoryDefinitionId",
  "objects": : [{
        "name": "User",
        "attributes": [{
                "name": "Id",
                "type": "String"
            }, {
                "name": "FirstName",
                "type": "String"
            },
            // Remaining base attributes
            {
                "name": "CustomExendedAttribute",
                "type": "String"
            },
            // Remaining discovered attributes
        ]
    }],
  "version": "bf8c03ac-d45e-47fe-b3a1-711a9418b2b1"
}
