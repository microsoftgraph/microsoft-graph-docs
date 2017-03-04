# Update schemaextension

Update the properties of a schema extension definition by updating the [schemaExtension](../resources/schemaextension.md) resource.

## Prerequisites
The following **scope** is required to execute this API: *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /schemaExtensions/{id}
```
### Optional request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer &lt;token&gt;. Required. |
| Content-Type   | application/json | 

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|properties|[ExtensionSchemaProperty](../resources/extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition. Only additive changes are permitted. |
|status|String|The lifecycle state of the schema extension. Possible states transitions are from *InDevelopment* to *Available*, *Available* to *Deprecated* and *Deprecated* to *Available*.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to.  Only additive changes are permitted.|

## Response
If successful, this method returns a `200 OK` response code and updated [schemaExtension](../resources/schemaextension.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_schemaextension"
}-->
```http
PATCH https://graph.microsoft.com/beta/schemaExtensions/{id}
Content-type: application/json
Content-length: 201

{
  "properties": [
    {
      "name":"new-name-value",
      "type":"new-type-value"
    },
    {
      "name":"additional-name-value",
      "type":"additional-type-value"
    }
  ],
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 201

{
  "id": "id-value",
  "description": "description-value",
  "targetTypes": [
    "targetTypes-value"
  ],
  "properties": [
    {
      "name":"name-value",
      "type":"type-value"
    },
    {
      "name":"new-name-value",
      "type":"new-type-value"
    },
    {
      "name":"additional-name-value",
      "type":"additional-type-value"
    }  
  ],
  "status": "status-value",
  "owner": "owner-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update schemaextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->