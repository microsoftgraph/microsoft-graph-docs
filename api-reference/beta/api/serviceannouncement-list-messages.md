---
title: "List messages"
description: "Retrieve the serviceUpdateMessage resources from the messages navigation property."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: apiPageType
---

# List messages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [serviceUpdateMessage](../resources/serviceupdatemessage.md) resources from the **messages** navigation property.

This operation retrieves all service update messages that exist for the tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ServiceMessage.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ServiceMessage.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/serviceAnnouncement/messages
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [serviceUpdateMessage](../resources/serviceupdatemessage.md) objects in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_serviceupdatemessage"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceupdatemessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceupdatemessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-serviceupdatemessage-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceupdatemessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceUpdateMessage",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/serviceAnnouncement/messages",
  "value": [
    {
      "startDateTime": "2019-02-01T18:51:00Z",
      "endDateTime": "2019-06-01T08:00:00Z",
      "lastModifiedDateTime": "2021-01-08T01:10:06.843Z",
      "title": "(Updated) New feature: Changes to PowerPoint and Word to open files faster",
      "id": "MC172851",
      "category": "StayInformed",
      "severity": "Normal",
      "tags": [
        "Updated message"
      ],
      "isMajorChange": true,
      "actionRequiredByDateTime": null,
      "services": [
        "SharePoint Online",
        "OneDrive for Business"
      ],
      "details": [
        {
          "name": "ExternalLink",
          "value": "https://support.office.com/article/office-document-cache-settings-4b497318-ae4f-4a99-be42-b242b2e8b692"
        }
      ],
      "body": {
        "contentType": "Text",
        "content": "Updated January 07, 2021: Based on learnings from our early rings, we have made the decision to make additional changes to the code before we proceed with the rollout. We will update the Message center post once we re-start the rollout......"
      },
      "viewPoint": null
    }
  ]
}
```

