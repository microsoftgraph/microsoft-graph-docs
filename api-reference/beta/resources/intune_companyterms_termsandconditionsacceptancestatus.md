# termsAndConditionsAcceptanceStatus resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user. Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List termsAndConditionsAcceptanceStatuses](../api/intune_companyterms_termsandconditionsacceptancestatus_list.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) collection|List properties and relationships of the [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) objects.|
|[Get termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsandconditionsacceptancestatus_get.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md)|Read properties and relationships of the [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) object.|
|[Create termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsandconditionsacceptancestatus_create.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md)|Create a new [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) object.|
|[Delete termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsandconditionsacceptancestatus_delete.md)|None|Deletes a [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md).|
|[Update termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsandconditionsacceptancestatus_update.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md)|Update the properties of a [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity.|
|userDisplayName|String|Display name of the user whose acceptance the entity represents.|
|acceptedVersion|Int32|Most recent version number of the T&C accepted by the user.|
|acceptedDateTime|DateTimeOffset|DateTime when the terms were last accepted by the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Navigation link to the terms and conditions that are assigned.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditionsAcceptanceStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termsAndConditionsAcceptanceStatus",
  "id": "String (identifier)",
  "userDisplayName": "String",
  "acceptedVersion": 1024,
  "acceptedDateTime": "String (timestamp)"
}
```



