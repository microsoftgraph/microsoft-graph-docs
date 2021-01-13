---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedGroupSource = new UnifiedGroupSource
{
	IncludedSources = SourceType.Mailbox | SourceType.Site,
	AdditionalData = new Dictionary<string, object>()
	{
		{"group@odata.bind", "/groups/000044f9-47c8-4a87-bccf-291fbf006a54"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscoveryCaseId}"].Custodians["{custodianId}"].UnifiedGroupSources
	.Request()
	.AddAsync(unifiedGroupSource);

```