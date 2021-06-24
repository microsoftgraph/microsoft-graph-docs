---
author: swapnil1993
title: "Update contentType"
description: "Update a content type"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# Update contentType
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Update a [content type][contentType].
  

## Permissions

  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application |Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /sites/{site-id}/contentTypes/{contentType-id}
PATCH /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [contentType][] resource to update.  

## Response

If successful, this method returns a `200 OK` response code and an updated [contentType][] object in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_contenttype"
}
-->

```http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/contentTypes/{contentType-id}
Content-Type: application/json

{
    "name": "updatedCt",
	"documentSet": {
		"shouldPrefixNameToFile": true,
		"allowedContentTypes": [{
			"id": "0x0101",
			"name": "Document"
		}],
		"defaultContents": [{
				"fileName": "a.txt",
				"contentType": {
					"id": "0x0101"
				}
			},
			{
				"fileName": "b.txt",
				"contentType": {
					"id": "0x0101"
				}
			}
		],
		"sharedColumns": [{
				"name": "Description",
				"id": "cbb92da4-fd46-4c7d-af6c-3128c2a5576e"
			},
			{
				"name": "Address",
				"id": "fc2e188e-ba91-48c9-9dd3-16431afddd50"
			}
		],
		"welcomePageColumns": [{
			"name": "Address",
			"id": "fc2e188e-ba91-48c9-9dd3-16431afddd50"
		}]
	}
}

```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-contenttype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-contenttype-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "truncated": true} -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "0x0101009B237E76EF94DC49B4E58139041E7C60",
    "description": "",
    "eTag": "\"7\"",
    "group": "Custom Content Types",
    "hidden": false,
    "name": "testdoc",
    "parentId": "0x0101",
    "base": {
        "id": "0x0101",
        "name": "Document"
    }
}

```

[contentType]: ../resources/contentType.md
