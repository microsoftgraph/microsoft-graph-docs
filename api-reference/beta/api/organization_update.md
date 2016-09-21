# Update organization

Update the properties of the currently authenticated organization.
## Prerequisites
One of the following **scopes** is required to execute this API:

*Directory.AccessAsUser.All*

**NOTE:** The user needs to be a global administrator.
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /organization/<id>

```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|marketingNotificationEmails|String collection|                                        **Notes**: not nullable.            |
|technicalNotificationMails|String collection|                                        **Notes**: not nullable.            |

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organization"
}-->
```http
PATCH https://graph.microsoft.com/beta/organization/<id>
Content-type: application/json

{
  "marketingNotificationEmails": [
    "marketingNotificationEmail-value1",
    "marketingNotificationEmail-value2"
  ],
  "technicalNotificationMails": [
    "technicalNotificationMail-value1",
    "technicalNotificationMail-value2"
  ]
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organization"
} -->
```http
HTTP/1.1 204 No Content
Content-type: application/json

""
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
