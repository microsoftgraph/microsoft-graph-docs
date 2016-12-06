# termsAndConditionsGroupAssignment resource type

An assignment of a terms and conditions to a group.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List termsAndConditionsGroupAssignments](../api/intune_companyterms_termsandconditionsgroupassignment_list.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) collection|List properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) objects.|
|[Get termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_get.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Read properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|
|[Create termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_create.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Create a new [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|
|[Delete termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_delete.md)|None|Deletes a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md).|
|[Update termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_update.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Update the properties of a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|
|[Get termsAndConditions](../api/intune_companyterms_termsandconditionsgroupassignment_get_termsandconditions.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Get the [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) from the termsAndConditions navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|targetGroupId|String|The identifier of the group that are assigned the terms and conditions.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Navigation link to the terms and conditions that are assigned.|

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



