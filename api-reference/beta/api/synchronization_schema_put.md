# Update synchronization schema

Updates synchronization schema for a given job or template. Fully replaces current schema with the one provided in the request. To update schema of a template, call must be made on the application object, and caller must be the owner of the application.

## HTTP Request

```http
PUT /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
PUT /applications/{id}/synchronization/templates/{templateId}/schema
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply the [synchronizationSchema](../resources/synchronization_schema.md) object to replace existing schema with.

## Response

If successful, returns a `204 No Content` response code. It does not return anything in the response body.

## Example

##### Request
The following is an example of a request.
>**Note:** The request object shown here is be shortened for readability. All the properties should be supplied in an actual call


```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema

{
    "directories": [
        {
            "name": "Azure Active Directory",
            "objects": [
                {
                    "name": "User",
                    "attributes": [
                        {
                            "name": "userPrincipalName",
                            "type": "string"
                        },
                        {...}
                    ]
                },
                {...}
            ]
        },
        {
            "name": "Salesforce",
            "objects": [...]
        }
    ],
    "synchronizationRules":[
        {
            "name": "USER_TO_USER",
            "sourceDirectoryName": "Azure Active Directory",
            "targetDirectoryName": "Salesforce",
            "objectMappings": [
                {
                    "sourceObjectName": "User",
                    "targetObjectName": "User",
                    "attributeMappings": [
                        {
                            "source": {...},
                            "targetAttributeName": "userName"
                        },
                        {...}
                    ]
                },
                {...}
            ]
        },
        { ... }
    ]
}

```

##### Response
The following is an example of a response.

```http
HTTP/1.1 204 No Content
```
