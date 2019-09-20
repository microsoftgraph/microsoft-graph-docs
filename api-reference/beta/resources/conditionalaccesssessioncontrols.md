 ---
title: "conditionalAccessSessionControls resource type"
description: "Represents a complex type of session controls that is enforced after sign-in."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# conditionalAccessSessionControls resource type

Represents a complex type of session controls that is enforced after sign-in.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `applicationEnforcedRestrictions` | [applicationEnforcedRestrictionsSessionControl](applicationenforcedrestrictionssessioncontrol.md) | Session control to enforce application restrictions. Only Exchange Online and Sharepoint Online support this session control. |
| `persistentBrowser` | [persistentBrowserSessionControl](persistentbrowsersessioncontrol.md) | Session control to define whether to persist cookies or not. All apps should be selected for this session control to work correctly. |
| `cloudAppSecurity` | [cloudAppSecuritySessionControl](cloudappsecuritysessioncontrol.md) | Session control to apply cloud app security.|
| `signInFrequency` | [signInFrequencySessionControl](signinfrequencysessioncontrol.md)| Session control to enforce signin frequency.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "applicationEnforcedRestrictions",
    "persistentBrowser",
    "cloudAppSecurity",
    "signInFrequency"
  ],
  "@odata.type": "microsoft.graph.conditionalaccesssessioncontrols"
}-->

```json
{
  "applicationEnforcedRestrictions": { "@odata.type": "microsoft.graph.applicationenforcedrestrictionssessioncontrol" },
  "persistentBrowser": { "@odata.type": "microsoft.graph.persistentbrowsersessioncontrol" },
  "cloudAppSecurity": { "@odata.type": "microsoft.graph.cloudappsecuritysessioncontrol" },
  "signInFrequency": { "@odata.type": "microsoft.graph.signinfrequencysessioncontrol" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditionalaccesssessioncontrols resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->