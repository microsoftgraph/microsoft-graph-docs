# bitLockerSystemDrivePolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

BitLocker Encryption Base Policies.
## Properties
|Property|Type|Description|
|---|---|---|
|minimumPinLength|Int32|Indicates the minimum length of startup pin. Valid values 4 to 20|
|prebootRecoveryMessage|String|Defines a custom recovery message.|
|prebootRecoveryUrl|String|Defines a custom recovery URL.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bitLockerSystemDrivePolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.bitLockerSystemDrivePolicy",
  "minimumPinLength": 1024,
  "prebootRecoveryMessage": "String",
  "prebootRecoveryUrl": "String"
}
```



