---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectorGroup = new ConnectorGroup
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}"}
	}
};

await graphClient.OnPremisesPublishingProfiles["applicationProxy"].Connectors["{id}"].MemberOf.References
	.Request()
	.AddAsync(connectorGroup);

```