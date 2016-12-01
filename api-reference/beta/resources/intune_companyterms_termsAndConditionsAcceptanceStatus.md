# termsAndConditionsAcceptanceStatus resource type

The acceptance status for a user targeted a terms and conditions.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List termsAndConditionsAcceptanceStatuss](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_list.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md) collection|List properties and relationships of the [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md) objects.|
|[Get termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_get.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md)|Read properties and relationships of the [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md) object.|
|[Create termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_create.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md)|Create a new [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md) object.|
|[Delete termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_delete.md)|None|Deletes a [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md).|
|[Update termsAndConditionsAcceptanceStatus](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_update.md)|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md)|Update the properties of a [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsAndConditionsAcceptanceStatus.md) object.|
|[Get termsAndConditions](../api/intune_companyterms_termsAndConditionsAcceptanceStatus_get_termsAndConditions.md)|[termsAndConditions](../resources/intune_companyterms_termsAndConditions.md)|Get the [termsAndConditions](../resources/intune_companyterms_termsAndConditions.md) from the termsAndConditions navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userDisplayName|String|The name of the user that this acceptance status is for.|
|acceptedVersion|Int32|The version of the terms that were accepted. 0 if never accepted.|
|acceptedDateTime|DateTimeOffset|The date and time that the terms were accepted.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsAndConditions.md)|Navigation link to the terms and conditions that are assigned.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditionsAcceptanceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.termsAndConditionsAcceptanceStatus",
  "id": "String (identifier)",
  "userDisplayName": "String",
  "acceptedVersion": 1024,
  "acceptedDateTime": "String (timestamp)"
}
```


