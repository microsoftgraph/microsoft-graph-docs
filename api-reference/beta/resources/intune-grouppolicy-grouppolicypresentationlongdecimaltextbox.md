---
title: "groupPolicyPresentationLongDecimalTextBox resource type"
description: "Represents an ADMX longDecimalTextBox element and an ADMX longDecimal element."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyPresentationLongDecimalTextBox resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an ADMX longDecimalTextBox element and an ADMX longDecimal element.


Inherits from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyPresentationLongDecimalTextBoxes](../api/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox-list.md)|[groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md) collection|List properties and relationships of the [groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md) objects.|
|[Get groupPolicyPresentationLongDecimalTextBox](../api/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox-get.md)|[groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md)|Read properties and relationships of the [groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md) object.|
|[Create groupPolicyPresentationLongDecimalTextBox](../api/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox-create.md)|[groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md)|Create a new [groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md) object.|
|[Delete groupPolicyPresentationLongDecimalTextBox](../api/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox-delete.md)|None|Deletes a [groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md).|
|[Update groupPolicyPresentationLongDecimalTextBox](../api/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox-update.md)|[groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md)|Update the properties of a [groupPolicyPresentationLongDecimalTextBox](../resources/intune-grouppolicy-grouppolicypresentationlongdecimaltextbox.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|label|String|Localized text label for any presentation entity. The default value is empty. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|id|String|Key of the entity. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|defaultValue|Int64|An unsigned integer that specifies the initial value for the decimal text box. The default value is 1.|
|spin|Boolean|If true, create a spin control; otherwise, create a text box for numeric entry. The default value is true.|
|spinStep|Int64|An unsigned integer that specifies the increment of change for the spin control. The default value is 1.|
|required|Boolean|Requirement to enter a value in the parameter box. The default value is false.|
|minValue|Int64|An unsigned long that specifies the minimum allowed value. The default value is 0.|
|maxValue|Int64|An unsigned long that specifies the maximum allowed value. The default value is 9999.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|The group policy definition associated with the presentation. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyPresentationLongDecimalTextBox"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyPresentationLongDecimalTextBox",
  "label": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "defaultValue": 1024,
  "spin": true,
  "spinStep": 1024,
  "required": true,
  "minValue": 1024,
  "maxValue": 1024
}
```




