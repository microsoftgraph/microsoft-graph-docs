## List existing synchronization templates

List templates associated with a given application or service principal

### HTTP Request

```http
GET servicePrincipals/{id}/synchronization/templates
GET applications/{id}/synchronization/templates
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

### Response

If successful, this method returns a `200 OK` response code and collection of [synchronizationTemplate](../resources/synchronization_template.md) objects in the response body.

### Example

##### Request
The following is an example of a request.

```http
GET https://graph.microsoft.com/testSynchronization/servicePrincipals/{id}/synchronization/templates
```

##### Response
The following is an example of a response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned in an actual call.

```javascript
HTTP/1.1 200 OK
{
    "value": [
        {
            "id": "Slack",
            "factoryTag": "CustomSCIM",
            "schema": {
                    "directories": [...],
                    "synchronizationRules": [...]
                    }
        }
    ]
}
```