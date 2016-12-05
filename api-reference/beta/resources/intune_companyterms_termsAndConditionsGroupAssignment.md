# termsAndConditionsGroupAssignment resource type

An assignment of a terms and conditions to a group.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List termsAndConditionsGroupAssignments](../api/intune_companyterms_termsAndConditionsGroupAssignment_list.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md) collection|List properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md) objects.|
|[Get termsAndConditionsGroupAssignment](../api/intune_companyterms_termsAndConditionsGroupAssignment_get.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md)|Read properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md) object.|
|[Create termsAndConditionsGroupAssignment](../api/intune_companyterms_termsAndConditionsGroupAssignment_create.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md)|Create a new [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md) object.|
|[Delete termsAndConditionsGroupAssignment](../api/intune_companyterms_termsAndConditionsGroupAssignment_delete.md)|None|Deletes a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md).|
|[Update termsAndConditionsGroupAssignment](../api/intune_companyterms_termsAndConditionsGroupAssignment_update.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md)|Update the properties of a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsAndConditionsGroupAssignment.md) object.|
|[Get termsAndConditions](../api/intune_companyterms_termsAndConditionsGroupAssignment_get_termsAndConditions.md)|[termsAndConditions](../resources/intune_companyterms_termsAndConditions.md)|Get the [termsAndConditions](../resources/intune_companyterms_termsAndConditions.md) from the termsAndConditions navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|targetGroupId|String|The identifier of the group that are assigned the terms and conditions.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsAndConditions.md)|Navigation link to the terms and conditions that are assigned.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditionsGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.termsAndConditionsGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String"
}
```


