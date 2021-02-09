---
title: "windows10XTrustedRootCertificate resource type"
description: "Windows X Trusted Root Certificate configuration profile"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windows10XTrustedRootCertificate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows X Trusted Root Certificate configuration profile


Inherits from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10XTrustedRootCertificates](../api/intune-rapolicy-windows10xtrustedrootcertificate-list.md)|[windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md) collection|List properties and relationships of the [windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md) objects.|
|[Get windows10XTrustedRootCertificate](../api/intune-rapolicy-windows10xtrustedrootcertificate-get.md)|[windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md)|Read properties and relationships of the [windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md) object.|
|[Create windows10XTrustedRootCertificate](../api/intune-rapolicy-windows10xtrustedrootcertificate-create.md)|[windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md)|Create a new [windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md) object.|
|[Delete windows10XTrustedRootCertificate](../api/intune-rapolicy-windows10xtrustedrootcertificate-delete.md)|None|Deletes a [windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md).|
|[Update windows10XTrustedRootCertificate](../api/intune-rapolicy-windows10xtrustedrootcertificate-update.md)|[windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md)|Update the properties of a [windows10XTrustedRootCertificate](../resources/intune-rapolicy-windows10xtrustedrootcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile identifier Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|version|Int32|Version of the profile Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|displayName|String|Profile display name Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|description|String|Profile description Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|creationDateTime|DateTimeOffset|DateTime profile was created Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime profile was last modified Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|roleScopeTagIds|String collection|Scope Tags Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|trustedRootCertificate|Binary|Trusted Root Certificate|
|certFileName|String|File name to display in UI.|
|destinationStore|[certificateDestinationStore](../resources/intune-shared-certificatedestinationstore.md)|Destination store location for the Trusted Root Certificate. Possible values are: `computerCertStoreRoot`, `computerCertStoreIntermediate`, `userCertStoreIntermediate`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceManagementResourceAccessProfileAssignment](../resources/intune-rapolicy-devicemanagementresourceaccessprofileassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10XTrustedRootCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10XTrustedRootCertificate",
  "id": "String (identifier)",
  "version": 1024,
  "displayName": "String",
  "description": "String",
  "creationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "trustedRootCertificate": "binary",
  "certFileName": "String",
  "destinationStore": "String"
}
```




