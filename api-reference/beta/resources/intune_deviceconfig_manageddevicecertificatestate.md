---
apiDocType: resourcePageType
---
# managedDeviceCertificateState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceCertificateStates](../api/intune_deviceconfig_manageddevicecertificatestate_list.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) collection|List properties and relationships of the [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) objects.|
|[Get managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_get.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Read properties and relationships of the [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|
|[Create managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_create.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Create a new [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|
|[Delete managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_delete.md)|None|Deletes a [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md).|
|[Update managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_update.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Update the properties of a [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|devicePlatform|[devicePlatformType](../resources/intune_shared_deviceplatformtype.md)|Device platform. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`.|
|certificateKeyUsage|[keyUsages](../resources/intune_deviceconfig_keyusages.md)|Key usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|certificateValidityPeriodUnits|[certificateValidityPeriodScale](../resources/intune_deviceconfig_certificatevalidityperiodscale.md)|Validity period units. Possible values are: `days`, `months`, `years`.|
|certificateIssuanceState|[certificateIssuanceStates](../resources/intune_deviceconfig_certificateissuancestates.md)|Issuance State. Possible values are: `unknown`, `challengeIssued`, `challengeIssueFailed`, `requestCreationFailed`, `requestSubmitFailed`, `challengeValidationSucceeded`, `challengeValidationFailed`, `issueFailed`, `issuePending`, `issued`, `responseProcessingFailed`, `responsePending`, `enrollmentSucceeded`, `enrollmentNotNeeded`, `revoked`, `removedFromCollection`, `renewVerified`, `installFailed`, `installed`, `deleteFailed`, `deleted`, `renewalRequested`, `requested`.|
|certificateKeyStorageProvider|[keyStorageProviderOption](../resources/intune_deviceconfig_keystorageprovideroption.md)|Key Storage Provider. Possible values are: `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp`.|
|certificateSubjectNameFormat|[subjectNameFormat](../resources/intune_deviceconfig_subjectnameformat.md)|Subject name format. Possible values are: `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`, `custom`, `commonNameAsIMEI`, `commonNameAsSerialNumber`, `commonNameAsAadDeviceId`, `commonNameAsIntuneDeviceId`, `commonNameAsDurableDeviceId`.|
|certificateSubjectAlternativeNameFormat|[subjectAlternativeNameType](../resources/intune_deviceconfig_subjectalternativenametype.md)|Subject alternative name format. Possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`, `domainNameService`.|
|certificateRevokeStatus|[certificateRevocationStatus](../resources/intune_deviceconfig_certificaterevocationstatus.md)|Revoke status. Possible values are: `none`, `pending`, `issued`, `failed`, `revoked`.|
|certificateProfileDisplayName|String|Certificate profile display name|
|deviceDisplayName|String|Device display name|
|userDisplayName|String|User display name|
|certificateExpirationDateTime|DateTimeOffset|Certificate expiry date|
|certificateLastIssuanceStateChangedDateTime|DateTimeOffset|Last certificate issuance state change|
|lastCertificateStateChangeDateTime|DateTimeOffset|Last certificate issuance state change|
|certificateIssuer|String|Issuer|
|certificateThumbprint|String|Thumbprint|
|certificateSerialNumber|String|Serial number|
|certificateKeyLength|Int32|Key length|
|certificateEnhancedKeyUsage|String|Extended key usage|
|certificateValidityPeriod|Int32|Validity period|
|certificateSubjectNameFormatString|String|Subject name format string for custom subject name formats|
|certificateSubjectAlternativeNameFormatString|String|Subject alternative name format string for custom formats|
|certificateIssuanceDateTime|DateTimeOffset|Issuance date|
|certificateErrorCode|Int32|Error code|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceCertificateState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceCertificateState",
  "id": "String (identifier)",
  "devicePlatform": "String",
  "certificateKeyUsage": "String",
  "certificateValidityPeriodUnits": "String",
  "certificateIssuanceState": "String",
  "certificateKeyStorageProvider": "String",
  "certificateSubjectNameFormat": "String",
  "certificateSubjectAlternativeNameFormat": "String",
  "certificateRevokeStatus": "String",
  "certificateProfileDisplayName": "String",
  "deviceDisplayName": "String",
  "userDisplayName": "String",
  "certificateExpirationDateTime": "String (timestamp)",
  "certificateLastIssuanceStateChangedDateTime": "String (timestamp)",
  "lastCertificateStateChangeDateTime": "String (timestamp)",
  "certificateIssuer": "String",
  "certificateThumbprint": "String",
  "certificateSerialNumber": "String",
  "certificateKeyLength": 1024,
  "certificateEnhancedKeyUsage": "String",
  "certificateValidityPeriod": 1024,
  "certificateSubjectNameFormatString": "String",
  "certificateSubjectAlternativeNameFormatString": "String",
  "certificateIssuanceDateTime": "String (timestamp)",
  "certificateErrorCode": 1024
}
```





