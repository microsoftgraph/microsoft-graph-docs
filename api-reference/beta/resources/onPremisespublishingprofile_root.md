# On-premises Publishing Profiles

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Various Azure services (AAD Connect Passthrough Authentication, Workday to AAD users provisioning, etc.) allow a conditional access to various on-premises resources  from outside of corp network. [On-premises agents](onpremisesagent.md) installed by tenant administrator could be configured to access/handle requests to a particular ["published" resource](onpremisespublishedresource.md).
[Agent groups](onpremisesagentgroup.md) enable a tenant admin to assign specific agents to serve specific published on-premises resources. Tenant admin can group a number of agents together, and then assign each published resource to a group. The entire set of entities of the same on-premises publishing type is represented by [onPremisesPublishingProfile](onpremisespublishingprofile.md) .

A tenant admin can configure for each onPremisesPublishingProfile the [time window](onpremisesupdatewindow.md) during which agents can receive updates or defer updates to the agents . The [updater configuration](onpremiseshybridagentupdaterconfiguration.md) specified for an onPremisesPublishingProfile is applicable to all the agents within that onPremisesPublishingProfile.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesPublishingProfile](../api/onpremisespublishingprofile_get.md) | [onPremisesPublishingProfile](onpremisespublishingprofile.md) | Read properties and relationships of onPremisesPublishingProfile object. |
| [Update onPremisesPublishingProfile](../api/onpremisespublishingprofile_update.md) | None | Update [hybridAgentUpdaterConfiguration](onpremiseshybridagentupdaterconfiguration.md) object properties.
| [Get onPremisesAgent](../api/onpremisesagent_get.md) | [onPremisesAgent](onpremisesagent.md) | Read properties and relationships of onPremisesAgent object. |
| [List onPremisesAgents](../api/onpremisesagent_list.md) | [onPremisesAgent](onpremisesagent.md) collection | Get an onPremisesAgents object collection. |
| [Assign onPremisesAgent to onPremisesAgentGroup](../api/onpremisesagent_post_agentgroups.md) | None |  |
| [Remove onpremisesAgent from an onPremisesAgentGroup](../api/onpremisesagent_delete_agentgroups.md) | None |  |
| [Get onPremisesAgentGroup](../api/onpremisesagentgroup_get.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Read properties and relationships of onPremisesAgentGroup object. |
| [Create onPremisesAgentGroup](../api/oonpremisesagentgroup_create.md)  | [onPremisesAgentGroup](onpremisesagentgroup.md) | Create a new onPremisesAgentGroup. |
| [List onPremisesAgentGroups](../api/onpremisesagentgroup_list.md) | onPremisesAgentGroups collection | Get a onPremisesAgentGroup objects collection. |
| [Update onPremisesAgentGroup](../api/onpremisesagentgroup_update.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Update onPremisesAgentGroup object. |
| [Delete  onPremisesAgentGroup](../api/onpremisesagentgroup_delete.md) | None | Delete onPremisesAgentGroup object. |
| [Get publishedResource](../api/onpremisespublishedresource_get.md) | [publishedResource](onpremisespublishedresource.md) | Read properties and relationships of publishedResource object. |
| [Create publishedResource](../api/onpremisespublishedresource_create.md) |  [publishedResource](onpremisespublishedresource.md)  | Create a new publishedResource. |
| [Update publishedResource](../api/onpremisespublishedresource_update.md) | [publishedResource](onpremisespublishedresource.md) | Update publishedResource object. |
| [Delete  publishedResource](../api/onpremisespublishedresource_delete.md) | None | Delete publishedResource object. |
| [List publishedResources](../api/onpremisespublishedresource_list.md) | [publishedResource](onpremisespublishedresource.md) objects collection | Get publishedResources object collection. |
| [Assign publishedResource to onPremisesAgentGroup](../api/onpremisespublishedresource_post_agentgroups.md) | None |  |
| [Remove publishedResource from onPremisesAgentGroup](../api/onpremisespublishedresource_delete_agentgroups.md) | None |  |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->