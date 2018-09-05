# chatMessagePolicyViolationPolicyTip resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the properties of policy tip on a chat message policy violation object.

An entity of type `chatMessagePolicyViolationPolicyTip` is a part of the [chatMessagePolicyViolation](chatMessagePolicyViolation.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|complianceUrl|string|General policy tip text.|
|generalText|string|Optional URL that provides additionalhelp on the policy tip.|
|matchedConditionDescriptions|string collection|An array that contains a description of each sensitive data condiation that has been matached in the given message.|

## JSON representation
The following is a JSON representation of the resource.

```json
{
  "complianceUrl": "string",
  "generalText": "string",
  "matchedConditionDescriptions": ["string 1", "string 2"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chat message policy violation policy tip resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
