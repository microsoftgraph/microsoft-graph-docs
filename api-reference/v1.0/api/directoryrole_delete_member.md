# Remove directory role member

Use this API to create a new directory role member.

## Prerequisites

The following **scope** is required to execute this API: *Directory.AccessAsUser.All*

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /directoryroles/{id}/members/{id}/$ref
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer &lt;token&gt; *Required* |

## Request body

In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_directoryobject_from_directoryrole"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/directoryroles/{id}/members/{id}/$ref
```

In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->