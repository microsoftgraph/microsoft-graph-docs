---
title: "groupPolicyUploadedDefinitionFile resource type"
description: "The entity represents an ADMX (Administrative Template) XML file uploaded by Administrator. The ADMX file contains a collection of group policy definitions and their locations by category path. The group policy definition file also contains the languages supported as determined by the language dependent ADML (Administrative Template) language files."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyUploadedDefinitionFile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The entity represents an ADMX (Administrative Template) XML file uploaded by Administrator. The ADMX file contains a collection of group policy definitions and their locations by category path. The group policy definition file also contains the languages supported as determined by the language dependent ADML (Administrative Template) language files.


Inherits from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyUploadedDefinitionFiles](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-list.md)|[groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) collection|List properties and relationships of the [groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) objects.|
|[Get groupPolicyUploadedDefinitionFile](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-get.md)|[groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md)|Read properties and relationships of the [groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) object.|
|[Create groupPolicyUploadedDefinitionFile](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-create.md)|[groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md)|Create a new [groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) object.|
|[Delete groupPolicyUploadedDefinitionFile](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-delete.md)|None|Deletes a [groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md).|
|[Update groupPolicyUploadedDefinitionFile](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-update.md)|[groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md)|Update the properties of a [groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) object.|
|[addLanguageFiles action](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-addlanguagefiles.md)|None|Not yet documented|
|[removeLanguageFiles action](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-removelanguagefiles.md)|None|Not yet documented|
|[updateLanguageFiles action](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-updatelanguagefiles.md)|None|Not yet documented|
|[uploadNewVersion action](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-uploadnewversion.md)|None|Not yet documented|
|[remove action](../api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-remove.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The localized friendly name of the ADMX file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|description|String|The localized description of the policy settings in the ADMX file. The default value is empty. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|languageCodes|String collection|The supported language codes for the ADMX file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|targetPrefix|String|Specifies the logical name that refers to the namespace within the ADMX file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|targetNamespace|String|Specifies the URI used to identify the namespace within the ADMX file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|policyType|[groupPolicyType](../resources/intune-grouppolicy-grouppolicytype.md)|Specifies the type of group policy. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md). Possible values are: `admxBacked`, `admxIngested`.|
|revision|String|The revision version associated with the file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|id|String|Key of the entity. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|fileName|String|The file name of the uploaded ADML file.|
|status|[groupPolicyUploadedDefinitionFileStatus](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfilestatus.md)|The upload status of the uploaded ADMX file. Possible values are: `none`, `uploadInProgress`, `available`, `assigned`, `removalInProgress`, `uploadFailed`, `removalFailed`.|
|content|Binary|The contents of the uploaded ADMX file.|
|uploadDateTime|DateTimeOffset|The uploaded time of the uploaded ADMX file.|
|defaultLanguageCode|String|The default language of the uploaded ADMX file.|
|groupPolicyUploadedLanguageFiles|[groupPolicyUploadedLanguageFile](../resources/intune-grouppolicy-grouppolicyuploadedlanguagefile.md) collection|The list of ADML files associated with the uploaded ADMX file.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitions|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md) collection|The group policy definitions associated with the file. Inherited from [groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|
|groupPolicyOperations|[groupPolicyOperation](../resources/intune-grouppolicy-grouppolicyoperation.md) collection|The list of operations on the uploaded ADMX file.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyUploadedDefinitionFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedDefinitionFile",
  "displayName": "String",
  "description": "String",
  "languageCodes": [
    "String"
  ],
  "targetPrefix": "String",
  "targetNamespace": "String",
  "policyType": "String",
  "revision": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "fileName": "String",
  "status": "String",
  "content": "binary",
  "uploadDateTime": "String (timestamp)",
  "defaultLanguageCode": "String",
  "groupPolicyUploadedLanguageFiles": [
    {
      "@odata.type": "microsoft.graph.groupPolicyUploadedLanguageFile",
      "fileName": "String",
      "languageCode": "String",
      "content": "binary",
      "id": "String",
      "lastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```




