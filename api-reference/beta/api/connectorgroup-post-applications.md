---
title: "Add an application to a connectorGroup"
description: "Use this API to assign an app to a connector group"
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---
# Add an application to a connectorGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an [application](../resources/application.md) to a [connectorGroup](../resources/connectorgroup.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}/applications

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. Required|

## Request body
In the request body, supply a JSON representation of [application](../resources/application.md) object.

## Response

If successful, this method returns `201 Created` response code and [application](../resources/application.md) object in the response body.

## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_application_from_connectorgroup"
}-->
```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}/applications
Content-type: application/json
Content-length: 329

{
  "@odata.id": "https://graph.microsoft.com/beta/applications/{id}"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-application-from-connectorgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-application-from-connectorgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-application-from-connectorgroup-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of [application](../resources/application.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 355

{
  "appId": "appId-value",
  "onPremisesPublishing": {
    "externalUrl": "externalUrl-value",
    "internalUrl": "internalUrl-value",
    "externalAuthenticationType": "externalAuthenticationType-value",
    "customDomainCertificate": "customDomainCertificate-value",
    "isTranslateHostHeaderEnabled": true,
    "isOnPremPublishingEnabled": true
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create application",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
