# applePushNotificationCertificate resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Apple push notification certificate.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get applePushNotificationCertificate](../api/intune_devicefe_applepushnotificationcertificate_get.md)|[applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md)|Read properties and relationships of the [applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md) object.|
|[Update applePushNotificationCertificate](../api/intune_devicefe_applepushnotificationcertificate_update.md)|[applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md)|Update the properties of a [applePushNotificationCertificate](../resources/intune_devicefe_applepushnotificationcertificate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|appleIdentifier|String|Apple Id of the account used to create the MDM push certificate.|
|topicIdentifier|String|Topic Id.|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time for Apple push notification certificate.|
|expirationDateTime|DateTimeOffset|The expiration date and time for Apple push notification certificate.|
|certificateUploadStatus|String|The certificate upload status.|
|certificateUploadFailureReason|String|The reason the certificate upload failed.|
|certificate|String|Not yet documented|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.applePushNotificationCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.applePushNotificationCertificate",
  "id": "String (identifier)",
  "appleIdentifier": "String",
  "topicIdentifier": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "certificateUploadStatus": "String",
  "certificateUploadFailureReason": "String",
  "certificate": "String"
}
```



