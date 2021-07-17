---
title: "Update qna"
description: "Update the properties of a qna object."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Update qna
Namespace: microsoft.graph.search

Update the properties of a [qna](../resources/qna.md) object.

## Permissions
One of the following permissions is required to call this api. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| Global administrator, search administrator, search editor. |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /qna/{qnaId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [qna](../resources/qna.md) object.

The following table shows the properties that are required when you update the [qna](../resources/qna.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Guid id of the qna. Inherited from [entity](../resources/entity.md).|
|displayName|String|Question displayed in search results. Inherited from [searchAnswer](../resources/searchanswer.md).|
|description|String|Answer displayed in search results. Inherited from [searchAnswer](../resources/searchanswer.md).|
|webUrl|String|Qna url link. When users click this qna in search results they will go to this url. Inherited from [searchAnswer](../resources/searchanswer.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the qna. Inherited from [searchAnswer](../resources/searchanswer.md). Read only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the qna is created or edited. Inherited from [searchAnswer](../resources/searchanswer.md). Read only.|
|availabilityStartDateTime|DateTimeOffset|Date qna will start to appear as a search result. Set as null for always available.|
|availabilityEndDateTime|DateTimeOffset|Date qna will stop appearing as a search result. Set as null for always available.|
|languageTags|String collection|List of countries or regions able to view this qna.|
|platforms|microsoft.graph.platform collection|List of devices and OS able to view this qna. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/answerVariant.md) collection|Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/answerkeyword.md)|Keywords that trigger this qna to appear in search results.|
|state|String|State of the qna. Possible values are: `published`, `draft`, `excluded`.|
|isSuggested|Boolean|True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read only.|
|groupIds|String collection|List of security groups able to view this qna.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_qna"
}-->
``` http
PATCH https://graph.microsoft.com/beta/qna/{qnaId}
Content-Type: application/json

{
    "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend."
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}-->
``` http
HTTP/1.1 204 No Content
```

