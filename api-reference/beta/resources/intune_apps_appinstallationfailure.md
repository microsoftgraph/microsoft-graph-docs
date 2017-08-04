# appInstallationFailure resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Class for reporting status of a single mobile app.
## Properties
|Property|Type|Description|
|---|---|---|
|applicationId|String|Key of the entity.|
|appName|String|The name of the App|
|platformId|Int64|The platform ID for the App|
|userFailures|Int64|The number of users in failure for this App.|
|deviceFailures|Int64|The number of devices in failure for this App.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appInstallationFailure"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.appInstallationFailure",
  "applicationId": "String",
  "appName": "String",
  "platformId": 1024,
  "userFailures": 1024,
  "deviceFailures": 1024
}
```



