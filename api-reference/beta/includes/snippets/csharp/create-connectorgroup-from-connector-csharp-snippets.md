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

await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].Connectors["{connector-id}"].MemberOf.References
	.Request()
	.AddAsync(connectorGroup);

```