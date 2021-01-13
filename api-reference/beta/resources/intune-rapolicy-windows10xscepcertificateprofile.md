---
title: "windows10XSCEPCertificateProfile resource type"
description: "Windows X SCEP Certificate configuration profile"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windows10XSCEPCertificateProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows X SCEP Certificate configuration profile


Inherits from [windows10XCertificateProfile](../resources/intune-rapolicy-windows10xcertificateprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10XSCEPCertificateProfiles](../api/intune-rapolicy-windows10xscepcertificateprofile-list.md)|[windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) collection|List properties and relationships of the [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) objects.|
|[Get windows10XSCEPCertificateProfile](../api/intune-rapolicy-windows10xscepcertificateprofile-get.md)|[windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md)|Read properties and relationships of the [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object.|
|[Create windows10XSCEPCertificateProfile](../api/intune-rapolicy-windows10xscepcertificateprofile-create.md)|[windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md)|Create a new [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object.|
|[Delete windows10XSCEPCertificateProfile](../api/intune-rapolicy-windows10xscepcertificateprofile-delete.md)|None|Deletes a [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md).|
|[Update windows10XSCEPCertificateProfile](../api/intune-rapolicy-windows10xscepcertificateprofile-update.md)|[windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md)|Update the properties of a [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object.|

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
|certificateStore|[certificateStore](../resources/intune-shared-certificatestore.md)|Target store certificate. Possible values are: `user`, `machine`.|
|certificateValidityPeriodScale|[certificateValidityPeriodScale](../resources/intune-shared-certificatevalidityperiodscale.md)|Scale for the Certificate Validity Period. Possible values are: `days`, `months`, `years`.|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune-shared-extendedkeyusage.md) collection|Extended Key Usage (EKU) settings.|
|hashAlgorithm|[hashAlgorithms](../resources/intune-shared-hashalgorithms.md) collection|SCEP Hash Algorithm.|
|keySize|[keySize](../resources/intune-shared-keysize.md)|SCEP Key Size. Possible values are: `size1024`, `size2048`, `size4096`.|
|keyStorageProvider|[keyStorageProviderOption](../resources/intune-shared-keystorageprovideroption.md)|Key Storage Provider (KSP). Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|keyUsage|[keyUsages](../resources/intune-shared-keyusages.md)|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage|
|rootCertificateId|Guid|Trusted Root Certificate ID|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectAlternativeNameFormats|[windows10XCustomSubjectAlternativeName](../resources/intune-rapolicy-windows10xcustomsubjectalternativename.md) collection|Custom AAD Attributes.|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceManagementResourceAccessProfileAssignment](../resources/intune-rapolicy-devicemanagementresourceaccessprofileassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10XSCEPCertificateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10XSCEPCertificateProfile",
  "id": "String (identifier)",
  "version": 1024,
  "displayName": "String",
  "description": "String",
  "creationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "certificateStore": "String",
  "certificateValidityPeriodScale": "String",
  "certificateValidityPeriodValue": 1024,
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ],
  "hashAlgorithm": [
    "String"
  ],
  "keySize": "String",
  "keyStorageProvider": "String",
  "keyUsage": "String",
  "renewalThresholdPercentage": 1024,
  "rootCertificateId": "Guid",
  "scepServerUrls": [
    "String"
  ],
  "subjectAlternativeNameFormats": [
    {
      "@odata.type": "microsoft.graph.windows10XCustomSubjectAlternativeName",
      "sanType": "String",
      "name": "String"
    }
  ],
  "subjectNameFormatString": "String"
}
```




