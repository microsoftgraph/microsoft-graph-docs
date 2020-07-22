---
title: "Create linkedResources"
description: "Create a new linkedResources object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create linkedResources
Namespace: microsoft.graph

Create a new linkedResources object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /linkedResources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [linkedResource](../resources/linkedresource.md) object.

The following table shows the properties that are required when you create the [linkedResource](../resources/linkedresource.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Server generated Id for the linked entity Inherited from [entity](../resources/entity.md)|
|webUrl|String|Deeplink to the linked entity |
|applicationName|String|Field indicating app name of the source that is sending the linked entity |
|displayName|String|Field indicating title of the linked entity. |
|externalId|String|Id of the object that is associated with this task on the third-party/partner system |



## Response

If successful, this method returns a `201 Created` response code and a [linkedResource](../resources/linkedresource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_linkedresource_from_linkedresources"
}
-->
``` http
POST https://graph.microsoft.com/beta/linkedResources
Content-Type: application/json
Content-length: 166

{
  "@odata.type": "#microsoft.graph.linkedResource",
  "webUrl": "String",
  "webUrl": "http:://microsoft.com",
  "applicationName": "Microsoft",
  "displayName": "Microsoft",
  "externalId": "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.linkedresource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.linkedResource",
  "id": "f9cddce2-dce2-f9cd-e2dc-cdf9e2dccdf9",
  "webUrl": "http:://microsoft.com",
  "applicationName": "Microsoft",
  "displayName": "Microsoft",
  "externalId": "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"
}
```

