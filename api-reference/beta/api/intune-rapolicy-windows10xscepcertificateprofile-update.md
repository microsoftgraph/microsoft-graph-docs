---
title: "Update windows10XSCEPCertificateProfile"
description: "Update the properties of a windows10XSCEPCertificateProfile object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update windows10XSCEPCertificateProfile

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/resourceAccessProfiles/{deviceManagementResourceAccessProfileBaseId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object.

The following table shows the properties that are required when you create the [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md).

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
|hashAlgorithm|[hashAlgorithms](../resources/intune-shared-hashalgorithms.md) collection|SCEP Hash Algorithm. Possible values are: `sha1`, `sha2`.|
|keySize|[keySize](../resources/intune-shared-keysize.md)|SCEP Key Size. Possible values are: `size1024`, `size2048`, `size4096`.|
|keyStorageProvider|[keyStorageProviderOption](../resources/intune-shared-keystorageprovideroption.md)|Key Storage Provider (KSP). Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|keyUsage|[keyUsages](../resources/intune-shared-keyusages.md)|SCEP Key Usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage|
|rootCertificateId|Guid|Trusted Root Certificate ID|
|scepServerUrls|String collection|SCEP Server Url(s).|
|subjectAlternativeNameFormats|[windows10XCustomSubjectAlternativeName](../resources/intune-rapolicy-windows10xcustomsubjectalternativename.md) collection|Custom AAD Attributes.|
|subjectNameFormatString|String|Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US|



## Response
If successful, this method returns a `200 OK` response code and an updated [windows10XSCEPCertificateProfile](../resources/intune-rapolicy-windows10xscepcertificateprofile.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/resourceAccessProfiles/{deviceManagementResourceAccessProfileBaseId}
Content-type: application/json
Content-length: 1178

{
  "@odata.type": "#microsoft.graph.windows10XSCEPCertificateProfile",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "creationDateTime": "2017-01-01T00:00:43.1365422-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "certificateStore": "machine",
  "certificateValidityPeriodScale": "months",
  "certificateValidityPeriodValue": 14,
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ],
  "hashAlgorithm": [
    "sha2"
  ],
  "keySize": "size2048",
  "keyStorageProvider": "useTpmKspOtherwiseFail",
  "keyUsage": "digitalSignature",
  "renewalThresholdPercentage": 10,
  "rootCertificateId": "ed919bbc-9bbc-ed91-bc9b-91edbc9b91ed",
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "subjectAlternativeNameFormats": [
    {
      "@odata.type": "microsoft.graph.windows10XCustomSubjectAlternativeName",
      "sanType": "emailAddress",
      "name": "Name value"
    }
  ],
  "subjectNameFormatString": "Subject Name Format String value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1291

{
  "@odata.type": "#microsoft.graph.windows10XSCEPCertificateProfile",
  "id": "d174d58e-d58e-d174-8ed5-74d18ed574d1",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "creationDateTime": "2017-01-01T00:00:43.1365422-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "certificateStore": "machine",
  "certificateValidityPeriodScale": "months",
  "certificateValidityPeriodValue": 14,
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "Name value",
      "objectIdentifier": "Object Identifier value"
    }
  ],
  "hashAlgorithm": [
    "sha2"
  ],
  "keySize": "size2048",
  "keyStorageProvider": "useTpmKspOtherwiseFail",
  "keyUsage": "digitalSignature",
  "renewalThresholdPercentage": 10,
  "rootCertificateId": "ed919bbc-9bbc-ed91-bc9b-91edbc9b91ed",
  "scepServerUrls": [
    "Scep Server Urls value"
  ],
  "subjectAlternativeNameFormats": [
    {
      "@odata.type": "microsoft.graph.windows10XCustomSubjectAlternativeName",
      "sanType": "emailAddress",
      "name": "Name value"
    }
  ],
  "subjectNameFormatString": "Subject Name Format String value"
}
```




