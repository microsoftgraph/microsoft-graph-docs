---
title: "onPremisesPublishingProfile resource type"
description: "onPremisesPublishingProfile resource type."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesPublishingProfile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Various Azure services (for example, Azure Active Directory Connect Passthrough Authentication, Workday to Azure AD users provisioning) allow a conditional access to various on-premises resources from outside the corporate network. [On-premises agents](onpremisesagent.md) installed by a tenant administrator can be configured to access/handle requests to a particular [published resource](publishedresource.md).
[Agent groups](onpremisesagentgroup.md) enable a tenant admin to assign specific agents to serve specific published on-premises resources. Tenant admins can group a number of agents together, and then assign each published resource to a group. The entire set of entities of the same on-premises publishing type is represented by **onPremisesPublishingProfile**.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesPublishingProfile](../api/onpremisespublishingprofile-get.md) | [onPremisesPublishingProfile](onpremisespublishingprofile.md) | Read the properties and relationships of an **onPremisesPublishingProfile** object. |
| [Update onPremisesPublishingProfile](../api/onpremisespublishingprofile-update.md) | None | Update an [onPremisesPublishingProfile](onpremisespublishingprofile.md) object.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hybridAgentUpdaterConfiguration|[hybridAgentUpdaterConfiguration](hybridagentupdaterconfiguration.md)| Represents a **hybridAgentUpdaterConfiguration** object.|
|id|String| Represents a publishing type. Possible values are: `appProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of existing **onPremisesAgentGroup** objects. Read-only. Nullable.|
|agents|[onPremisesAgent](onpremisesagent.md) collection| List of existed **onPremisesAgent** objects. Read-only. Nullable.|
|publishedResources|[publishedResource](publishedresource.md) collection| List of existing **publishedResource** objects. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "hybridAgentUpdaterConfiguration": {"@odata.type": "microsoft.graph.hybridAgentUpdaterConfiguration"},
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishingProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
