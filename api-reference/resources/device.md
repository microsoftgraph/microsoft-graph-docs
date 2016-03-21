# device resource type

Represents a device registered in the directory. Inherits from [directoryObject](directoryobject.md).

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get device](../api/device_get.md) | [device](device.md) |Read properties and relationships of device object.|
|[Create registeredOwner](../api/device_post_registeredowners.md) |[directoryObject](directoryobject.md)| Add a user as a new owner of the device by posting to the registeredOwners navigation property.|
|[List registeredOwners](../api/device_list_registeredowners.md) |[directoryObject](directoryobject.md) collection| Get the users that are registered owners of the device from the registeredOwners navigation property.|
|[Create registeredUser](../api/device_post_registeredusers.md) |[directoryObject](directoryobject.md)| Add a registered user for the device by posting to the registeredUsers navigation property.|
|[List registeredUsers](../api/device_list_registeredusers.md) |[directoryObject](directoryobject.md) collection| Get the registered users of the device from the registeredUsers navigation property.|
|[Update](../api/device_update.md) | [device](device.md)  |Update the properties of the device object. |
|[Delete](../api/device_delete.md) | None |Delete the device object. |



### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| **true** if the account is enabled; otherwise, **false**. |
|alternativeSecurityIds|[alternativeSecurityId](alternativesecurityid.md) collection| The **any** operator is required for filter expressions on multi-valued properties. Not nullable.           |
|approximateLastSignInDateTime|DateTimeOffset|            The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|deviceId|Guid|            |
|deviceMetadata|String||
|operatingSystem|String|The type of operating system on the device.|
|operatingSystemVersion|String|The version of the operating system on the device|
|deviceVersion|Int32|            |
|physicalIds|String collection| Not nullable.            |
|trustType|String||
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).|
|displayName|String|The display name for the device.|
|isCompliant|Boolean|**true** if the device complies with Mobile Device Management (MDM) policies; otherwise, **false**.|
|isManaged|Boolean|**true** if the device is managed by a Mobile Device Management (MDM) app such as Intune; otherwise, **false**.|
|onPremisesLastSyncDateTime|DateTimeOffset|The last time at which the object was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|The unique identifier for the device. Inherited from [directoryObject](directoryobject.md). Key, Not nullable. Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|registeredOwners|[directoryObject](directoryobject.md) collection|Users that are registered owners of the device. Read-only. Nullable.|
|registeredUsers|[directoryObject](directoryobject.md) collection|Users that are registered users of the device. Read-only. Nullable.|



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "registeredOwners",
    "registeredUsers"
  ],
  "keyProperty": "id",
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
