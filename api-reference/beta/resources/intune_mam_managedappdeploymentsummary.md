# managedAppDeploymentSummary resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Represent the summary of app deployments.

Inherits from [managedAppSummary](../resources/intune_mam_managedappsummary.md)

### Properties
|Property|Type|Description|
|---|---|---|
|numberOfDeployedPolicies|Int32|Number of deployed policies.|
|numberOfFlaggedUsers|Int32|Number of flagged users.|
|numberOfSyncedUsersWithPolicies|Int32|Number of users with policies synced.|
|numberOfSyncedUsersWithoutPolicy|Int32|Not yet documented|
|numberOfPendingAppWipes|Int32|Number of apps with pending wipe requests.|
|numberOfFailedAppWipes|Int32|Number of apps with failed wipe requests.|
|numberOfSucceededAppWipes|Int32|Number of apps with succeeded wipe requests.|
|lastModifiedDateTime|DateTimeOffset|The last time an app registration has modified.|
|numberOfIosSyncedUsersWithoutPolicies|Int32|Number of iOS users synced, and with no policies.|
|numberOfIosSyncedUsersWithPolicies|Int32|Number of iOS users synced, and with policies applied.|
|numberOfAndroidSyncedUsersWithoutPolicies|Int32|Number of android users synced, and with no policies.|
|numberOfAndroidSyncedUsersWithPolicies|Int32|NUmber of android users synced, and with policies applied.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppDeploymentSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppDeploymentSummary",
  "numberOfDeployedPolicies": 1024,
  "numberOfFlaggedUsers": 1024,
  "numberOfSyncedUsersWithPolicies": 1024,
  "numberOfSyncedUsersWithoutPolicy": 1024,
  "numberOfPendingAppWipes": 1024,
  "numberOfFailedAppWipes": 1024,
  "numberOfSucceededAppWipes": 1024,
  "lastModifiedDateTime": "String (timestamp)",
  "numberOfIosSyncedUsersWithoutPolicies": 1024,
  "numberOfIosSyncedUsersWithPolicies": 1024,
  "numberOfAndroidSyncedUsersWithoutPolicies": 1024,
  "numberOfAndroidSyncedUsersWithPolicies": 1024
}
```



