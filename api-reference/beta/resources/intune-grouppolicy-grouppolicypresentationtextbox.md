---
title: "groupPolicyPresentationTextBox resource type"
description: "Represents an ADMX textBox element and an ADMX text element."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyPresentationTextBox resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an ADMX textBox element and an ADMX text element.


Inherits from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyPresentationTextBoxes](../api/intune-grouppolicy-grouppolicypresentationtextbox-list.md)|[groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md) collection|List properties and relationships of the [groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md) objects.|
|[Get groupPolicyPresentationTextBox](../api/intune-grouppolicy-grouppolicypresentationtextbox-get.md)|[groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md)|Read properties and relationships of the [groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md) object.|
|[Create groupPolicyPresentationTextBox](../api/intune-grouppolicy-grouppolicypresentationtextbox-create.md)|[groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md)|Create a new [groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md) object.|
|[Delete groupPolicyPresentationTextBox](../api/intune-grouppolicy-grouppolicypresentationtextbox-delete.md)|None|Deletes a [groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md).|
|[Update groupPolicyPresentationTextBox](../api/intune-grouppolicy-grouppolicypresentationtextbox-update.md)|[groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md)|Update the properties of a [groupPolicyPresentationTextBox](../resources/intune-grouppolicy-grouppolicypresentationtextbox.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|label|String|Localized text label for any presentation entity. The default value is empty. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|id|String|Key of the entity. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|
|defaultValue|String|Localized default string displayed in the text box. The default value is empty.|
|required|Boolean|Requirement to enter a value in the text box. Default value is false.|
|maxLength|Int64|An unsigned integer that specifies the maximum number of text characters. Default value is 1023.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|The group policy definition associated with the presentation. Inherited from [groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyPresentationTextBox"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyPresentationTextBox",
  "label": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "defaultValue": "String",
  "required": true,
  "maxLength": 1024
}
```




