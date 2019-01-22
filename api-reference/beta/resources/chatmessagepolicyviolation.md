# chatMessagePolicyViolation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a policy violation on a chatMessage. Policy Violations are typically set by a Data Loss Prevention (DLP) application or provider.

An entity of type `chatMessagePolicyViolation` is a part of the [chatMessage](chatMessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|dlpAction|bitwise enum|Indicates the action taken by the DLP provider on the message with sensitive content. Possible values are: <li>None</li><li>NotifySender</li><li>BlockAccess</li><li>BlockAccessExternal</li>|
|justificationText|string|Justification text provided by the sender of the message. Typical usage: When the messages first sent there is no justificationtext. Then the DLP app flags the violation and sends it back to the sender, who then provides the justificationText if required by the policy that caused the verdict.|
|policyTip|chatMessagePolicyViolationPolicyTip|The policy tip for the DLP Violation is text to explain to the sender why the message was flagged as a violation or was blocked. This contains:<li>generaltext: This is the explanatory text shown to the sender of the message that got flagged.</li><li>complianceurl: This is the URL that represents the DLP policies of the organization or a page the admin chooses to configure to provide more information about DLP policies in the organization.</li><li>matchedconditiondescription: This is the set of sensitive types that were a match during classification of the given message. Examples are: Credit Card Number, Social Security Number, etc.</li>|
|userAction|bitwise enum|Indicates the action taken by the user on a message blocked by the DLP provider. Possible values are: <li>None</li><li>Override</li><li>ReportFalsePositive</li>When the DLP provider is updating the message for blocking sensitive content, userAction is not required.|
|verdictDetails|bitwise enum|Indicates the details of the allowed sender actions based on the verdict of the DLP provider for the message processed. Possible values include: <li>None</li><li>AllowFalsePositiveOverride</li><li>AllowOverridewithoutJustification</li><li>AllowOverridewithJustification</li>AllowOverridewithoutJustification and AllowOverridewithJustification are mutually exclusive.|

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
  "dlpAction": "NotifySender,BlockAccess",
  "justificationText": "string",
  "policyTip": {"@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"},
  "userAction": "Override",
  "verdictDetails": "AllowFalsePositiveOverride,AllowOverridewithoutJustification"
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
