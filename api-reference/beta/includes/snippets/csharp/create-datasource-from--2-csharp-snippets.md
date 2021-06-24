---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dataSource = new Microsoft.Graph.Ediscovery.DataSource
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/ab3a628a383045eba344b3caecba3104/userSources/31423539-3846-4333-4136-353644383531"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].SourceCollections["{ediscovery.sourceCollection-id}"].CustodianSources.References
	.Request()
	.AddAsync(dataSource);

```