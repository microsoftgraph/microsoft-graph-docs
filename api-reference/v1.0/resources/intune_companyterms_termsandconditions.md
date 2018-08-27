# termsAndConditions resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List termsAndConditionses](../api/intune_companyterms_termsandconditions_list.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|List properties and relationships of the [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) objects.|
|[Get termsAndConditions](../api/intune_companyterms_termsandconditions_get.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Read properties and relationships of the [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) object.|
|[Create termsAndConditions](../api/intune_companyterms_termsandconditions_create.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Create a new [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) object.|
|[Delete termsAndConditions](../api/intune_companyterms_termsandconditions_delete.md)|None|Deletes a [termsAndConditions](../resources/intune_companyterms_termsandconditions.md).|
|[Update termsAndConditions](../api/intune_companyterms_termsandconditions_update.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Update the properties of a [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the T&C policy.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Administrator-supplied name for the T&C policy. |
|description|String|Administrator-supplied description of the T&C policy.|
|title|String|Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.|
|bodyText|String|Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.|
|acceptanceStatement|String|Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.|
|version|Int32|Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[termsAndConditionsAssignment](../resources/intune_companyterms_termsandconditionsassignment.md) collection|The list of assignments for this T&C policy.|
|acceptanceStatuses|[termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) collection|The list of acceptance statuses for this T&C policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.termsAndConditions"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.termsAndConditions",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "title": "String",
  "bodyText": "String",
  "acceptanceStatement": "String",
  "version": 1024
}
```



