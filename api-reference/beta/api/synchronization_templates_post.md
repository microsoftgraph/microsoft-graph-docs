## Create synchorniztion template

Create new template for a given application

### HTTP Request

```http
POST /applications/{id}/synchronization/templates/
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply the [synchronizationTemplate](../resources/synchronization_template.md) object to be created. `id`, `applicationId` and `factoryTag` properties are required. When no `schema` is provided with the template, default schema associated with `factoryTag` will be used.

### Response

If successful, this method returns a `201 Created` response code and created [synchronizationTemplate](../resources/synchronization_template.md) object in the response body.

### Example

##### Request
The following is an example of a request.

```http
POST https://graph.microsoft.com/testSynchronization/applications/{id}/synchronization/templates
Content-type: application/json
{ 
    "id": "SCIM-Test1",
    "applicationId": "{id}",
    "factoryTag: "CustomSCIM"
}
```

##### Response
The following is an example of a response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned in an actual call.

```http
HTTP/1.1 201 Created
{
    "id": "SCIM-Test1",
    "applicationId": "{id}",
    "factoryTag": "CustomSCIM",
    "schema": {
        "directories": [...],
        "synchronizationRules": [...]
    }
}
```
