---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectorGroup = new ConnectorGroup
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"}
	}
};

await graphClient.Applications["bf21f7e9-9d25-4da2-82ab-7fdd85049f83"].ConnectorGroup.Reference
	.Request()
	.PutAsync(connectorGroup);

```