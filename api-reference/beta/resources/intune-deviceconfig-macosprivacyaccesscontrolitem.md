---
title: "macOSPrivacyAccessControlItem resource type"
description: "Represents per-process privacy preferences."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSPrivacyAccessControlItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents per-process privacy preferences.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the app, process, or executable.|
|identifier|String|The bundle ID or path of the app, process, or executable.|
|identifierType|[macOSProcessIdentifierType](../resources/intune-deviceconfig-macosprocessidentifiertype.md)|A bundle ID is used to identify an app. A path is used to identify a process or executable. Possible values are: `bundleID`, `path`.|
|codeRequirement|String|Enter the code requirement, which can be obtained with the command 'codesign –display -r –' in the Terminal app. Include everything after '=>'.|
|staticCodeValidation|Boolean|Statically validates the code requirement. Use this setting if the process invalidates its dynamic code signature.|
|blockCamera|Boolean|Block access to camera app.|
|blockMicrophone|Boolean|Block access to microphone.|
|blockScreenCapture|Boolean|Block app from capturing contents of system display. Requires macOS 10.15 or later.|
|blockListenEvent|Boolean|Block the app or process from listening to events from input devices such as mouse, keyboard, and trackpad.Requires macOS 10.15 or later.|
|speechRecognition|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to system speech recognition facility. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|accessibility|[enablement](../resources/intune-shared-enablement.md)|Allow the app or process to control the Mac via the Accessibility subsystem. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|addressBook|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to contact information managed by Contacts. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|calendar|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to event information managed by Calendar. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|reminders|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to information managed by Reminders. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|photos|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to images managed by Photos. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|mediaLibrary|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to music and the media library. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|fileProviderPresence|[enablement](../resources/intune-shared-enablement.md)|Allow the app or process to access files managed by another app’s file provider extension. Requires macOS 10.15 or later. . Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyAllFiles|[enablement](../resources/intune-shared-enablement.md)|Control access to all protected files on a device. Files might be in locations such as emails, messages, apps, and administrative settings. Apply this setting with caution. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicySystemAdminFiles|[enablement](../resources/intune-shared-enablement.md)|Allow app or process to access files used in system administration. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyDesktopFolder|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to Desktop folder. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyDocumentsFolder|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to Documents folder. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyDownloadsFolder|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to Downloads folder. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyNetworkVolumes|[enablement](../resources/intune-shared-enablement.md)|Allow or block access to network volumes. Requires macOS 10.15 or later. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|systemPolicyRemovableVolumes|[enablement](../resources/intune-shared-enablement.md)|Control access to removable  volumes on the device, such as an external hard drive. Requires macOS 10.15 or later. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|postEvent|[enablement](../resources/intune-shared-enablement.md)|Control access to CoreGraphics APIs, which are used to send CGEvents to the system event stream. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|appleEventsAllowedReceivers|[macOSAppleEventReceiver](../resources/intune-deviceconfig-macosappleeventreceiver.md) collection|Allow or deny the app or process to send a restricted Apple event to another app or process. You will need to know the identifier, identifier type, and code requirement of the receiving app or process. This collection can contain a maximum of 500 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSPrivacyAccessControlItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSPrivacyAccessControlItem",
  "displayName": "String",
  "identifier": "String",
  "identifierType": "String",
  "codeRequirement": "String",
  "staticCodeValidation": true,
  "blockCamera": true,
  "blockMicrophone": true,
  "blockScreenCapture": true,
  "blockListenEvent": true,
  "speechRecognition": "String",
  "accessibility": "String",
  "addressBook": "String",
  "calendar": "String",
  "reminders": "String",
  "photos": "String",
  "mediaLibrary": "String",
  "fileProviderPresence": "String",
  "systemPolicyAllFiles": "String",
  "systemPolicySystemAdminFiles": "String",
  "systemPolicyDesktopFolder": "String",
  "systemPolicyDocumentsFolder": "String",
  "systemPolicyDownloadsFolder": "String",
  "systemPolicyNetworkVolumes": "String",
  "systemPolicyRemovableVolumes": "String",
  "postEvent": "String",
  "appleEventsAllowedReceivers": [
    {
      "@odata.type": "microsoft.graph.macOSAppleEventReceiver",
      "codeRequirement": "String",
      "identifier": "String",
      "identifierType": "String",
      "allowed": true
    }
  ]
}
```




