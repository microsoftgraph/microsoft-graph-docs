# Create inferenceClassificationOverride

Use this API to create a new inferenceClassificationOverride.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/inferenceClassification/overrides
POST /users/<id>/inferenceClassification/overrides
POST /drive/root/createdByUser/inferenceClassification/overrides

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object.


### Response
If successful, this method returns `201, Created` response code and [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_inferenceclassificationoverride_from_inferenceclassification"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/inferenceClassification/overrides
Content-type: application/json
Content-length: 126

{
  "classifyAs": "classifyAs-value",
  "senderEmailAddress": {
    "name": "name-value",
    "address": "address-value"
  }
}
```
In the request body, supply a JSON representation of [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inferenceclassificationoverride"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 146

{
  "classifyAs": "classifyAs-value",
  "senderEmailAddress": {
    "name": "name-value",
    "address": "address-value"
  },
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create inferenceClassificationOverride",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->