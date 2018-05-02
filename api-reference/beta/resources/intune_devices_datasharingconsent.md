# dataSharingConsent resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Data sharing consent information.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List dataSharingConsents](../api/intune_devices_datasharingconsent_list.md)|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md) collection|List properties and relationships of the [dataSharingConsent](../resources/intune_devices_datasharingconsent.md) objects.|
|[Get dataSharingConsent](../api/intune_devices_datasharingconsent_get.md)|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md)|Read properties and relationships of the [dataSharingConsent](../resources/intune_devices_datasharingconsent.md) object.|
|[Create dataSharingConsent](../api/intune_devices_datasharingconsent_create.md)|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md)|Create a new [dataSharingConsent](../resources/intune_devices_datasharingconsent.md) object.|
|[Delete dataSharingConsent](../api/intune_devices_datasharingconsent_delete.md)|None|Deletes a [dataSharingConsent](../resources/intune_devices_datasharingconsent.md).|
|[Update dataSharingConsent](../api/intune_devices_datasharingconsent_update.md)|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md)|Update the properties of a [dataSharingConsent](../resources/intune_devices_datasharingconsent.md) object.|
|[consentToDataSharing action](../api/intune_devices_datasharingconsent_consenttodatasharing.md)|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The data sharing consent Id|
|serviceDisplayName|String|The display name of the service work flow|
|termsUrl|String|The TermsUrl for the data sharing consent|
|granted|Boolean|The granted state for the data sharing consent|
|grantDateTime|DateTimeOffset|The time consent was granted for this account|
|grantedByUpn|String|The Upn of the user that granted consent for this account|
|grantedByUserId|String|The UserId of the user that granted consent for this account|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataSharingConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSharingConsent",
  "id": "String (identifier)",
  "serviceDisplayName": "String",
  "termsUrl": "String",
  "granted": true,
  "grantDateTime": "String (timestamp)",
  "grantedByUpn": "String",
  "grantedByUserId": "String"
}
```



