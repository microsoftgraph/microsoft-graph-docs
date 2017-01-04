# Create Application

Use this API to create a new Application.
## Prerequisites
One of the following **permissions** is required to execute this API: *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications
```

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [application](../resources/application.md) object.


## Response
If successful, this method returns `201, Created` response code and [application](../resources/application.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_application_from_applications"
}-->
```http
POST https://graph.microsoft.com/beta/applications
Content-type: application/json
Content-length: 717

{
  "addIns": [
      {
        "id": "id-value",
        "type": "type-value",
        "properties": [
          {
            "key": "key-value",
            "value": "value-value"
          }
        ]
      }
    ],
    "appRoles": [
      {
        "allowedMemberTypes": [
          "allowedMemberTypes-value"
        ],
        "description": "description-value",
        "displayName": "displayName-value",
        "id": "id-value",
        "isEnabled": true,
        "origin": "origin-value",
        "value": "value-value"
      }
    ],
    "availableToOtherOrganizations": true,
    "displayName": "displayName-value",
    "errorUrl": "errorUrl-value"
}
```
In the request body, supply a JSON representation of [application](../resources/application.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 717

{
  "application": {
    "addIns": [
      {
        "id": "id-value",
        "type": "type-value",
        "properties": [
          {
            "key": "key-value",
            "value": "value-value"
          }
        ]
      }
    ],
    "appId": "appId-value",
    "appRoles": [
      {
        "allowedMemberTypes": [
          "allowedMemberTypes-value"
        ],
        "description": "description-value",
        "displayName": "displayName-value",
        "id": "id-value",
        "isEnabled": true,
        "origin": "origin-value",
        "value": "value-value"
      }
    ],
    "availableToOtherOrganizations": true,
    "displayName": "displayName-value",
    "errorUrl": "errorUrl-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Application",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
