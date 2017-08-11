# Accessing shared DriveItems

Access a shared [DriveItem](../resources/driveitem.md) or a collection of shared items by using a **shareId** or sharing URL.

To use a sharing URL with this API, your app needs to [transform the URL into a sharing token](#transform-a-sharing-url).

## Prerequisites

One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /shares/{sharingIdOrUrl}
```

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [sharedDriveItem](../resources/shareddriveitem.md) resource in the response body.

## Example

##### Request

Here is an example of the request to retrieve a shared item:

<!-- {
  "blockType": "request",
  "name": "get_shares_by_url"
}-->
```http
GET https://graph.microsoft.com/v1.0/shares/{shareIdOrUrl}
```
##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharedDriveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "B64397C8-07AE-43E4-920E-32BFB4331A5B",
  "name": "contoso project.docx",
  "owner": {
    "user": {
      "id": "98E88F1C-F8DC-47CC-A406-C090248B30E5",
      "displayName": "Ryan Gregg"
    }
  }
}
```

## Access the shared item directly

While the [**SharedDriveItem**](../resources/shareddriveitem.md) contains some useful information, most apps will want to directly access the shared [DriveItem](../resources/driveitem.md).
The **SharedDriveItem** resource includes a **root** and **items** relationships which can access content within the scope of the shared item.

## Example (single file)

##### Request

By requesting the **root** relationship, the **DriveItem** that was shared will be returned.

```http
GET https://graph.microsoft.com/v1.0/shares/{shareIdOrUrl}/root
```

##### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "9FFFDB3C-5B87-4062-9606-1B008CA88E44",
  "name": "contoso project.docx",
  "eTag": "2246BD2D-7811-4660-BD0F-1CF36133677B,1",
  "file": {},
  "size": 109112
}
```

## Example (shared folder)

##### Request

By requesting the **root** relationship and expanding the **children** collection, the **DriveItem** that was shared will be returned along with the files within the shared folder.

```http
GET https://graph.microsoft.com/v1.0/shares/{shareIdOrUrl}/root?$expand=children
```

##### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "9FFFDB3C-5B87-4062-9606-1B008CA88E44",
  "name": "Contoso Project",
  "eTag": "2246BD2D-7811-4660-BD0F-1CF36133677B,1",
  "folder": {}
  "size": 10911212,
  "children": [
    {
      "id": "AFBBDD79-868E-452D-AD4D-24697D4A4044",
      "name": "Propsoal.docx",
      "file": {},
      "size": 19001
    },
    {
      "id": "A91FE90A-2F2C-4EE6-B412-C4FFBA3F71A6",
      "name": "Update to Proposal.docx",
      "file": {},
      "size": 91001
    }
  ]
}
```

## Transform a sharing URL

To access a sharing URL using the **shares** API, the URL needs to be transformed into a sharing token.

To transform a URL into a sharing token:

1. Base64 encode the sharing URL.
2. Convert the base64 encoded data to [unpadded base64url format](https://en.wikipedia.org/wiki/Base64) by:
  1. Trim trailing `=` characters from the string
  2. Replace unsafe URL characters with an equivalent character; replace `/` with `_` and `+` with `-`.
3. Append `u!` to the beginning of the string.

For example, the following C# method transforms an input string into a sharing token:

```csharp
string UrlToSharingToken(string inputUrl) {
  var base64Value = System.Convert.ToBase64String(System.Text.Encoding.UTF8.GetBytes(inputUrl));
  return "u!" + base64Value.TrimEnd('=').Replace('/','_').Replace('+','-');
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update permission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Update permission"
}-->
