# device resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a device registered in the directory. Devices are created in the cloud using the Device Registration Service or by Intune. They're used by conditional access policies for multi-factor authentication. These devices can range from desktop and laptop machines to phones and tablets. Inherits from [directoryObject](directoryobject.md).

This resource lets you add your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get device](../api/device_get.md) | [device](device.md) |Read properties and relationships of device object.|
|[List devices](../api/device_list.md) | [device](device.md) collection| Retrieve a list of devices registered in the directory. |
|[Update device](../api/device_update.md) | [device](device.md)  |Update the properties of the device object. |
|[Delete device](../api/device_delete.md) | None |Delete the device object. |
|[List registeredOwners](../api/device_list_registeredowners.md) |[directoryObject](directoryobject.md) collection| Get the users that are registered owners of the device from the registeredOwners navigation property.|
|[List registeredUsers](../api/device_list_registeredusers.md) |[directoryObject](directoryobject.md) collection| Get the registered users of the device from the registeredUsers navigation property.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| **true** if the account is enabled; otherwise, **false**. default is true.|
|alternativeSecurityIds|alternativeSecurityId collection| For internal use only. Not nullable. |
|approximateLastSignInDateTime|DateTimeOffset| The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
|deviceId|Guid| Unique identifier set by Azure Device Registration Service at the time of registration. |
|deviceMetadata|String| For internal use only. Set to null. |
|deviceVersion|Int32| For internal use only. |
|displayName|String| The display name for the device. Required. |
|id|String|The unique identifier for the device. Inherited from [directoryObject](directoryobject.md). Key, Not nullable. Read-only.|
|isCompliant|Boolean|**true** if the device complies with Mobile Device Management (MDM) policies; otherwise, **false**. Read-only. This can only be updated by Intune for any device OS type or by an [approved MDM app](https://docs.microsoft.com/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices.|
|isManaged|Boolean|**true** if the device is managed by a Mobile Device Management (MDM) app; otherwise, **false**. This can only be updated by Intune for any device OS type or by an [approved MDM app](https://docs.microsoft.com/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices. |
|onPremisesLastSyncDateTime|DateTimeOffset|The last time at which the object was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` Read-only. |
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only.|
|operatingSystem|String| The type of operating system on the device. Required. |
|operatingSystemVersion|String| Operating system version of the device. Required. |
|physicalIds|String collection| For internal use only. Not nullable. |
|trustType|String| Type of trust for the joined device. Read-only. Possible values: <br />**Workplace** - indicates *bring your own personal devices*<br />**AzureAd** - Cloud only joined devices<br />**ServerAd** - on-premises domain joined devices joined to Azure AD. For more details, see [Introduction to device management in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/device-management-introduction) |
|Name| String | Friendly name of a device. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|Status | String| Device is online or offline. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|Platform |String|Platform of device. Only returned if user signs in with a Microsoft account as part of Project Rome. Only returned if user signs in with a Microsoft account as part of Project Rome.|
|Kind| String| Form factor of device. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|Model| String| Model of device. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|Manufacturer| String| Manufacturer of device. Only returned if user signs in with a Microsoft account as part of Project Rome. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the device. Read-only. Nullable.|
|registeredOwners|[directoryObject](directoryobject.md) collection| The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable.|
|registeredUsers|[directoryObject](directoryobject.md) collection| Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the device. Nullable.|
|registeredOwners|[directoryObject](directoryobject.md) collection|Users that are registered owners of the device. Read-only. Nullable.|
|registeredUsers|[directoryObject](directoryobject.md) collection|Users that are registered users of the device. Read-only. Nullable.|
|commands | Collection(microsoft.graph.command) | Set of commands sent to this device|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "extensions",
    "registeredOwners",
    "registeredUsers"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.device"
}-->

```json
{
  "accountEnabled": true,
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
  "trustType": "string",
  "Name": "string",
  "Status": "string",
  "Platform": "string",
  "Kind": "string",
  "Model": "string",
  "Manufacturer": "string"
}
```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "device resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
