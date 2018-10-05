# termsAndConditionsGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A termsAndConditionsGroupAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List termsAndConditionsGroupAssignments](../api/intune_companyterms_termsandconditionsgroupassignment_list.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) collection|List properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) objects.|
|[Get termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_get.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Read properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|
|[Create termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_create.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Create a new [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|
|[Delete termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_delete.md)|None|Deletes a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md).|
|[Update termsAndConditionsGroupAssignment](../api/intune_companyterms_termsandconditionsgroupassignment_update.md)|[termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md)|Update the properties of a [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity.|
|targetGroupId|String|Unique identifier of a group that the T&C policy is assigned to.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Navigation link to the terms and conditions that are assigned.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditionsGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termsAndConditionsGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String"
}
```



