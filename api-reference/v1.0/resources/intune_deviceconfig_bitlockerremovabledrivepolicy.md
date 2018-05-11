# bitLockerRemovableDrivePolicy resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

BitLocker Removable Drive Policies.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptionMethod|[bitLockerEncryptionMethod](../resources/intune_deviceconfig_bitlockerencryptionmethod.md)|Select the encryption method for removable  drives. Possible values are: `aesCbc128`, `aesCbc256`, `xtsAes128`, `xtsAes256`.|
|requireEncryptionForWriteAccess|Boolean|Indicates whether to block write access to devices configured in another organization.  If requireEncryptionForWriteAccess is false, this value does not affect.|
|blockCrossOrganizationWriteAccess|Boolean|This policy setting determines whether BitLocker protection is required for removable data drives to be writable on a computer.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitLockerRemovableDrivePolicy",
  "encryptionMethod": "String",
  "requireEncryptionForWriteAccess": true,
  "blockCrossOrganizationWriteAccess": true
}
```



