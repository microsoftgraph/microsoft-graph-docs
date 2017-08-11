# groupLifecyclePolicy: addGroup

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Adds a group to a lifecycle policy.

## Prerequisites

The following **scopes** are required to execute this API: *Directory.ReadWrite.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupLifecyclePolicies/{id}/addGroup
```

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---------------|:--------|:----------|
|groupId|Guid| The id of the group to add to the policy. |

## Response

If successful, this method returns `200, OK` response code. If the group is added to the policy, a **true** value is returned in the response body. Otherwise, a **false** value is returned in the reponse body.

## Example

##### Request

<!-- {
  "blockType": "request",
  "name": "grouplifecyclepolicy_addgroup"
}-->
```http
POST https://graph.microsoft.com/beta/groupLifecyclePolicies/{id}/addGroup
Content-type: application/json
Content-length: 57

{
  "groupId": "ffffffff-ffff-ffff-ffff-ffffffffffff"
}
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 21

{
  "value": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy: addgroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->