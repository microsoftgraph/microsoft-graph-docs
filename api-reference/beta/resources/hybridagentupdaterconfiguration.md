---
title: "hybridAgentUpdaterConfiguration resource type"
description: "hybridAgentUpdaterConfiguration resource type."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# hybridAgentUpdaterConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A tenant admin can configure for each onPremisesPublishingProfile the time window during which agents can receive updates or defer updates to the agents. The hybridAgentUpdaterConfiguration specified for an onPremisesPublishingProfile is applicable to all the agents within that onPremisesPublishingProfile.

For example, for the agents in onPremisesPublishingProfile of type "provisioning" the steps could be as below.

1) Tenant administrator can configure to not receive any updates to the Provisioning agents for the next n days.
2) Tenant administrator can configure an update window(start and end time) during which the agents can recive updates.
3) Tenant administrator can enable allowUpdateConfigurationOverride which overrides the updater configutration for Provisioning agents and alows them to receive the next available update.

The DateTime/Time information specified in the updater configuration will be converted to the local timezone reported by the agent during evaluvation.

The update of the agent will follow the below priority list

1) If allowUpdateConfigurationOverride is set to true the updater configuration set by the tenant will be skipped and the agent will receive an update when the next version of the agent is available (priority 1).
2) If the defer update is set, the agent will not be updated until the defer update date time (priority 2).
3) If the update window is set, the agent will be updated only during that time window in a 24 hour day (priority 3).
4) If no valid updater configuration is set by the tenant, the agent will receive an update when the next version of the agent is available

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowUpdateConfigurationOverride|Boolean|Indicates if updater configuration will be skipped and the agent will receive an update when the next version of the agent is available.|
|deferUpdateDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|updateWindow|[updateWindow](updatewindow.md)||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.hybridAgentUpdaterConfiguration",
  "baseType": null
}-->

```json
{
  "allowUpdateConfigurationOverride": true,
  "deferUpdateDateTime": "String (timestamp)",
  "updateWindow": {"@odata.type": "microsoft.graph.updateWindow"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "hybridAgentUpdaterConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


