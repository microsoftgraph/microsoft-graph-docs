# defaultDeviceEnrollmentWindowsHelloForBusinessSettings resource type

Device Enrollment Windows Hello for Business settings
### Properties
|Property|Type|Description|
|---|---|---|
|pinMinimumLength|Int32|Controls the minimum number of characters required for the Windows Hello for Business PIN.  This value must be between 4 and 127, inclusive, and less than or equal to the value set for the maximum PIN.|
|pinMaximumLength|Int32|Controls the maximum number of characters allowed for the Windows Hello for Business PIN. This value must be between 4 and 127, inclusive. This value must be greater than or equal to the value set for the minimum PIN.|
|pinUppercaseLettersUsage|String|Controls the ability to use uppercase letters in the Windows Hello for Business PIN.  Allowed permits the use of uppercase letter(s), whereas Required ensures they are present. If set to Not Allowed, uppercase letters will not be permitted. Possible values are: `allowed`, `required`, `disallowed`.|
|pinLowercaseLettersUsage|String|Controls the ability to use lowercase letters in the Windows Hello for Business PIN.  Allowed permits the use of lowercase letter(s), whereas Required ensures they are present. If set to Not Allowed, lowercase letters will not be permitted. Possible values are: `allowed`, `required`, `disallowed`.|
|pinSpecialCharactersUsage|String|Controls the ability to use special characters in the Windows Hello for Business PIN.  Allowed permits the use of special character(s), whereas Required ensures they are present. If set to Not Allowed, special character(s) will not be permitted. Possible values are: `allowed`, `required`, `disallowed`.|
|windowsHelloForBusiness|String|Controls whether to allow the device to be configured for Windows Hello for Business. If set to disabled, the user cannot provision Windows Hello for Business except on Azure Active Directory joined mobile phones if otherwise required. If set to Not Configured, Intune will not override client defaults. Possible values are: `disabled`, `enabled`, `notConfigured`.|
|securityDeviceRequired|Boolean|Controls whether to require a Trusted Platform Module (TPM) for provisioning Windows Hello for Business. A TPM provides an additional security benefit in that data stored on it cannot be used on other devices. If set to False, all devices can provision Windows Hello for Business even if there is not a usable TPM.|
|unlockWithBiometricsEnabled|Boolean|Controls the use of biometric gestures, such as face and fingerprint, as an alternative to the Windows Hello for Business PIN.  If set to False, biometric gestures are not allowed. Users must still configure a PIN as a backup in case of failures.|
|mobilePinSignInEnabled|Boolean|Controls the use of Remote Windows Hello for Business. Remote Windows Hello for Business provides the ability for a portable, registered device to be usable as a companion for desktop authentication. The desktop must be Azure AD joined and the companion device must have a Windows Hello for Business PIN.|
|pinPreviousBlockCount|Int32|Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset.|
|pinExpirationInDays|Int32|Controls the period of time (in days) that a PIN can be used before the system requires the user to change it. This must be set between 0 and 730, inclusive. If set to 0, the user’s PIN will never expire|
|enhancedBiometrics|String|Controls the ability to use the anti-spoofing features for facial recognition on devices which support it. If set to disabled, anti-spoofing features are not allowed. If set to Not Configured, the user can choose whether they want to use anti-spoofing. Possible values are: `disabled`, `enabled`, `notConfigured`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultDeviceEnrollmentWindowsHelloForBusinessSettings"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.defaultDeviceEnrollmentWindowsHelloForBusinessSettings",
  "pinMinimumLength": 1024,
  "pinMaximumLength": 1024,
  "pinUppercaseLettersUsage": "String",
  "pinLowercaseLettersUsage": "String",
  "pinSpecialCharactersUsage": "String",
  "windowsHelloForBusiness": "String",
  "securityDeviceRequired": true,
  "unlockWithBiometricsEnabled": true,
  "mobilePinSignInEnabled": true,
  "pinPreviousBlockCount": 1024,
  "pinExpirationInDays": 1024,
  "enhancedBiometrics": "String"
}
```


