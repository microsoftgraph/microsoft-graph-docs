# Update synchronization template

Update (override) synchronization template associated with a given application

### HTTP Request

```http
PUT application/{id}/synchronization/templates/{templateId}
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply the [synchronizationTemplate](../resources/synchronization_template.md) object to replace the existing template. Make sure all properties are provided, as missing properties will be erased.

### Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

### Examples

##### Request
The following is an example of a request.

```http
PUT https://graph.microsoft.com/testSynchronization/applications/{id}/synchronization/templates/{templateId}
Authorization: Bearer <token>
Content-type: application/json

{
    "id": "Slack",
    "applicationId": "{id}",
    "factoryTag": "CustomSCIM",
    "schema": {
        "directories": [...],
        "synchronizationRules": [...]
    }
}
```

##### Response
The following is an example of a response.

```http
HTTP/1.1 204 No Content
```