# conditionalAccessPolicy resource type
Indicates the attributes related a conditional access policy or policies that's triggered by the corresponding sign-in activity



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Refers to the Name of the conditional access policy (example: “Require MFA for Salesforce”).|
|enforcedGrantControls|String collection|Refers to the grant controls enforced by the conditional access policy (example: “Require multi-factor authentication”).|
|enforcedSessionControls|String collection|Refers to the session controls enforced by the conditional access policy (example: “Require app enforced controls”).|
|id|String|Unique GUID of the conditional access policy|
|result|String| Indicates the result of the CA policy that was triggered.Possible values are:<br/> `success` <br/> `failure` <br/> `notApplied` - Policy isn't applied because policy conditions were not met. <br/> `notEnabled` - This is due to the policy in disabled state.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
}-->

```json
{
  "displayName": "String",
  "enforcedGrantControls": ["String"],
  "enforcedSessionControls": ["String"],
  "id": "String",
  "result": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->