# device resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get device](../api/device_get.md) | [device](device.md) |Read properties and relationships of device object.|
|[Create registeredOwner](../api/device_post_registeredowners.md) |[directoryObject](directoryobject.md)| Create a new registeredOwner by posting to the registeredOwners collection.|
|[List registeredOwners](../api/device_list_registeredowners.md) |[directoryObject](directoryobject.md) collection| Get a registeredOwner object collection.|
|[Create registeredUser](../api/device_post_registeredusers.md) |[directoryObject](directoryobject.md)| Create a new registeredUser by posting to the registeredUsers collection.|
|[List registeredUsers](../api/device_list_registeredusers.md) |[directoryObject](directoryobject.md) collection| Get a registeredUser object collection.|
|[Update](../api/device_update.md) | [device](device.md)	|Update device object. |
|[Delete](../api/device_delete.md) | None |Delete device object. |
|[Checkmembergroups](../api/device_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/device_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/device_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|boolean||
|alternativeSecurityIds|[alternativeSecurityId](alternativesecurityid.md) collection||
|approximateLastSignInDateTime|[dateTimeOffset](datetimeoffset.md)||
|deviceId|string||
|deviceMetadata|string||
|deviceVersion|int32||
|displayName|string||
|id|string| Read-only.|
|isCompliant|boolean||
|isManaged|boolean||
|onPremisesLastSyncDateTime|[dateTimeOffset](datetimeoffset.md)||
|onPremisesSyncEnabled|boolean||
|operatingSystem|string||
|operatingSystemVersion|string||
|physicalIds|string collection||
|trustType|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|registeredOwners|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|registeredUsers|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.device"
}-->

```json
{
  "accountEnabled": true,
  "alternativeSecurityIds": [{"@odata.type": "microsoft.graph.alternativeSecurityId"}],
  "approximateLastSignInDateTime": "String (timestamp)",
  "deviceId": "string",
  "deviceMetadata": "string",
  "deviceVersion": 1024,
  "displayName": "string",
  "id": "string (identifier)",
  "isCompliant": true,
  "isManaged": true,
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": true,
  "operatingSystem": "string",
  "operatingSystemVersion": "string",
  "physicalIds": ["string"],
  "trustType": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "device resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->