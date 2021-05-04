---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userSource = new Microsoft.Graph.Ediscovery.UserSource
{
	Email = "adelev@contoso.com",
	IncludedSources = Microsoft.Graph.Ediscovery.SourceType.Mailbox
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].LegalHolds["{ediscovery.legalHold-id}"].UserSources
	.Request()
	.AddAsync(userSource);

```