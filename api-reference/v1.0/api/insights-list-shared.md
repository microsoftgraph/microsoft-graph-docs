---
title: "List shared"
description: "Calculated insight that returns the list of files shared with a user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List shared

Namespace: microsoft.graph

Calculated insight that includes the list of documents shared with a user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request
Get a list of documents shared with the signed-in user.

>**Note**: Only the user can make requests using the user's id or principal name.

```http
GET /me/insights/shared
GET /users/{id | userPrincipalName}/insights/shared
```

Expand the resource referenced by a **shared** insight:
```http
GET https://graph.microsoft.com/v1.0/me/insights/shared/{id}/resource
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

You can use the `$filter` query parameter to filter shared items. For example, based on **type**:

`https://graph.microsoft.com/v1.0/me/insights/shared?$filter=ResourceVisualization/Type eq 'PowerPoint'`

See the available container types and types you can filter by in [resourceVisualization](../resources/insights-resourcevisualization.md).

You can also retrieve files shared by a specific user. For example, by specifying the `lastshared/sharedby/address` property:

`https://graph.microsoft.com/v1.0/me/insights/shared?$filter=lastshared/sharedby/address eq 'kellygraham@contoso.com'`

See the [sharingDetail](../resources/insights-sharingdetail.md) complex type.


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [shared](../resources/insights-shared.md) items in the response body.
## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/v1.0/me/insights/shared
```

##### Response

Here is an example of the response. Note: The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "AWb0Qy4TEA1KhLW-k1L5mSjtxZAcxDFkTKiTNA-2kZDTXzrMX_4FhECOU0bKZVj1uReivYoYYoJNqTeuC-x1Agtm9EMuExANSoS1vpNS-ZkoBA",
            "lastShared": {
                "sharedDateTime": "2021-03-23T08:41:05Z",
                "sharingType": "Direct",
                "sharedBy": {
                    "displayName": "Megan Bowen",
                    "address": "MeganB@contoso.com",
                    "id": "3e0c9f05-b9b8-4cf5-9b35-a4e11b24b5b7"
                },
                "sharingReference": {}
            },
            "resourceVisualization": {
                "title": "CE Annual Report",
                "type": "Word",
                "mediaType": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                "previewImageUrl": "https://contoso-my.sharepoint.com/_api/v2.0/drives/b!ZvRDLhMQDUqEtb6TUvmZKO3FkBzEMWRMqJM0D7aRkNNfOsxf_gWEQI5TRsplWPW5/items/01K6ZMU4QXUK6YUGDCQJG2SN5OBPWHKAQL/thumbnails/0/small/thumbnailContent",
                "previewText": "Contoso Annual Report Anne Wallace Sales Contoso today announced financial results for its most recent fi",
                "containerWebUrl": "https://contoso-my.sharepoint.com/personal/meganb_m365x841051_onmicrosoft_com/Documents/Forms/All.aspx",
                "containerDisplayName": "Megan Bowen",
                "containerType": "OneDriveBusiness"
            },
            "resourceReference": {
                "webUrl": "https://contoso-my.sharepoint.com/personal/meganb_m365x841051_onmicrosoft_com/_layouts/15/Doc.aspx?sourcedoc=%7B8ABDA217-6218-4D82-A937-AE0BEC75020B%7D&file=CE%20Annual%20Report.docx&action=default&mobileredirect=true&DefaultItemOpen=1",
                "id": "drives/b!ZvRDLhMQDUqEtb6TUvmZKO3FkBzEMWRMqJM0D7aRkNNfOsxf_gWEQI5TRsplWPW5/items/01K6ZMU4QXUK6YUGDCQJG2SN5OBPWHKAQL",
                "type": "microsoft.graph.driveItem"
            }
        }
    ]
}
```
