---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedGroupSource = new Microsoft.Graph.Ediscovery.UnifiedGroupSource
{
	IncludedSources = Microsoft.Graph.Ediscovery.SourceType.Mailbox | Microsoft.Graph.Ediscovery.SourceType.Site,
	AdditionalData = new Dictionary<string, object>()
	{
		{"group@odata.bind", "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Custodians["{ediscovery.custodian-id}"].UnifiedGroupSources
	.Request()
	.AddAsync(unifiedGroupSource);

```