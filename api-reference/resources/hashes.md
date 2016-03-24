# hashes resource type

The **hashes** facet groups different types of hashes into a single structure,
for an item.


### Properties

| Property      | Type                   | Description                                                       |
|:--------------|:-----------------------|:------------------------------------------------------------------|
| **sha1Hash**  | String (hex formatted) | SHA1 hash for the contents of the file (if available). Read-only. |
| **crc32Hash** | String (hex formatted) | The CRC32 value of the file (if available). Read-only.            |


**Note:** In some cases hash values may not be available. If this is the case,
the hash values on an item will be updated after the item is downloaded.

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.hashes"
}-->

```json
{
  "crc32Hash": "string",
  "sha1Hash": "string"
}
```

## Remarks

In OneDrive for Business hash values are not available.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "hashes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
