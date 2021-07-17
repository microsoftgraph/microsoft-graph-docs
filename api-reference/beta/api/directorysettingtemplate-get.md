---
title: "Get a directory setting template"
description: "Allows retrieval of the properties of the directorySettingTemplate object, including the available settings and their defaults."
localization_priority: Normal
author: "adimitui"
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get a directory setting template

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A directory setting template represents a template of settings from which settings may be created within a tenant. This operation allows retrieval of the properties of the **directorySettingTemplate** object, including the available settings and their defaults.

> **Note**: The /beta version of this API is only applies to groups. The /v1.0 version of this API has been renamed to *Get groupSettingTemplate*.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.Read.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /directorySettingTemplates/{id}
```
## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [directorySettingTemplate](../resources/directorysettingtemplate.md) object in the response body.
## Example
### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_directorysettingtemplate"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directorySettingTemplates/08d542b9-071f-4e16-94b0-74abb372e3d9
```

##### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directorySettingTemplate"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directorySettingTemplates/$entity",
  "id": "08d542b9-071f-4e16-94b0-74abb372e3d9",
  "deletedDateTime": null,
  "displayName": "Group.Unified.Guest",
  "description": "Settings for a specific Unified Group",
  "values": [
    {
      "name": "AllowToAddGuests",
      "type": "System.Boolean",
      "defaultValue": "true",
      "description": "Flag indicating if guests are allowed in a specific Unified Group."
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get directorySettingTemplate",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


