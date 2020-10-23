---
title: "chatMessagePolicyViolation resource type"
description: "Represents policy violation on a chat message. Policy violations are typically set by a data loss prevention (DLP) application."
author: "laujan"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# chatMessagePolicyViolation resource type

Represents a policy violation on a chat message. Policy violations are typically set by a data loss prevention (DLP) application. DLP applications monitor chats for messages that contain data that users aren't supposed to send.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|dlpAction|**chatMessagePolicyViolationDlpActionType**|The action taken by the DLP provider on the message with sensitive content. Supported values are: <li>None</li><li>NotifySender -- Inform the sender of the violation but allow readers to read the message.</li><li>BlockAccess -- Block readers from reading the message.</li><li>BlockAccessExternal -- Block users outside the organization from reading the message, while allowing users within the organization to read the message.</li>|
|justificationText|string|Justification text provided by the sender of the message when overriding a policy violation.|
|policyTip|[chatMessagePolicyViolationPolicyTip](chatmessagepolicyviolationpolicytip.md)|Information to display to the message sender about why the message was flagged as a violation. |
|userAction|**chatMessagePolicyViolationUserActionType**|Indicates the action taken by the user on a message blocked by the DLP provider. Supported values are: <li>None</li><li>Override</li><li>ReportFalsePositive</li>When the DLP provider is updating the message for blocking sensitive content, userAction is not required.|
|verdictDetails|**chatMessagePolicyViolationVerdictDetailsType**|Indicates what actions the sender may take in response to the policy violation. Supported values are: <li>None</li><li>AllowFalsePositiveOverride -- Allows the sender to declare the policyViolation to be an error in the DLP app and its rules, and allow readers to see the message again if the dlpAction had hidden it.</li><li>AllowOverrideWithoutJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, without needing to provide an explanation for doing so. </li><li>AllowOverrideWithJustification -- Allows the sender to overriide the DLP violation and allow readers to see the message again if the dlpAction had hidden it, after providing an explanation for doing so.</li>AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userAction",
    "justificationText"
  ],
  "@odata.type": "microsoft.graph.chatMessagePolicyViolation"
}-->

```json
{
  "dlpAction": "string",
  "justificationText": "string",
  "policyTip": {"@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"},
  "userAction": "string",
  "verdictDetails": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chat message policy violation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
