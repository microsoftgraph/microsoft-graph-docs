---
title: "applePushNotificationCertificate resource type"
description: "Apple push notification certificate."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# applePushNotificationCertificate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Apple push notification certificate.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get applePushNotificationCertificate](../api/intune-devices-applepushnotificationcertificate-get.md)|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Read properties and relationships of the [applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md) object.|
|[Update applePushNotificationCertificate](../api/intune-devices-applepushnotificationcertificate-update.md)|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Update the properties of a [applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md) object.|
|[downloadApplePushNotificationCertificateSigningRequest function](../api/intune-devices-applepushnotificationcertificate-downloadapplepushnotificationcertificatesigningrequest.md)|String|Download Apple push notification certificate signing request|
|[generateApplePushNotificationCertificateSigningRequest action](../api/intune-devices-applepushnotificationcertificate-generateapplepushnotificationcertificatesigningrequest.md)|String|Download Apple push notification certificate signing request|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the certificate|
|appleIdentifier|String|Apple Id of the account used to create the MDM push certificate.|
|topicIdentifier|String|Topic Id.|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time for Apple push notification certificate.|
|expirationDateTime|DateTimeOffset|The expiration date and time for Apple push notification certificate.|
|certificateUploadStatus|String|The certificate upload status.|
|certificateUploadFailureReason|String|The reason the certificate upload failed.|
|certificateSerialNumber|String|Certificate serial number. This property is read-only.|
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
``` json
{
  "@odata.type": "#microsoft.graph.applePushNotificationCertificate",
  "id": "String (identifier)",
  "appleIdentifier": "String",
  "topicIdentifier": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "certificateUploadStatus": "String",
  "certificateUploadFailureReason": "String",
  "certificateSerialNumber": "String",
  "certificate": "String"
}
```




