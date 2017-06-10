# Create inferenceClassificationOverride

Create a [Focused Inbox](../resources/manage_focused_inbox.md) override for a sender identified by an SMTP address. Future messages from that SMTP address will be consistently classified 
as specified in the override.

**Note**

- If an override already exists with the same STMP address, then the **classifyAs** and **name** fields of that override are updated with the provided values.
- The maximum number of overrides supported for a mailbox is 1000, based on unique sender SMTP addresses.
- The POST operation supports creating only one override at a time.

## Prerequisites
The following **scopes** are required to execute this API: *Mail.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/inferenceClassification/overrides
POST /users/{id}/inferenceClassification/overrides
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

## Request body
In the request body, supply a JSON representation of [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object.


## Response
If successful, this method returns `201, Created` response code and an [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_inferenceclassificationoverride_from_inferenceclassification"
}-->
```http
POST https://graph.microsoft.com/beta/me/inferenceClassification/overrides
Content-type: application/json

{
  "classifyAs": "focused",
  "senderEmailAddress": {
    "name": "Fanny Downs",
    "address": "fannyd@adatum.onmicrosoft.com"
  }
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inferenceClassificationOverride"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "classifyAs": "focused",
  "senderEmailAddress": {
    "name": "Fanny Downs",
    "address": "fannyd@adatum.onmicrosoft.com"
  },
  "id": "98f5bdef-576a-404d-a2ea-07a3cf11a9b9"
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