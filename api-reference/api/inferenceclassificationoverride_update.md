# Update inferenceclassificationoverride

Update the properties of inferenceclassificationoverride object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /users/<id | userPrincipalName>/inferenceClassification/overrides/<id>
PATCH /drive/root/createdByUser/inferenceClassification/overrides/<id>
PATCH /drive/root/lastModifiedByUser/inferenceClassification/overrides/<id>
```
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classifyAs|String| Possible values are: `Focused`, `Other`.|
|senderEmailAddress|EmailAddress||

### Response
If successful, this method returns a `200 OK` response code and updated [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_inferenceclassificationoverride"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/inferenceClassification/overrides/<id>
Content-type: application/json
Content-length: 113

{
  "classifyAs": {
  },
  "senderEmailAddress": {
    "name": "name-value",
    "address": "address-value"
  }
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inferenceclassificationoverride"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 133

{
  "classifyAs": {
  },
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
  "description": "Update inferenceclassificationoverride",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->