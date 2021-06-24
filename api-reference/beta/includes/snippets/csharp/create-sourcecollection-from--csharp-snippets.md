---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceCollection = new Microsoft.Graph.Ediscovery.SourceCollection
{
	DisplayName = "Quarterly Financials search",
	ContentQuery = "subject:'Quarterly Financials'",
	AdditionalData = new Dictionary<string, object>()
	{
		{"custodianSources@odata.bind", "[\"https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735\"]"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].SourceCollections
	.Request()
	.AddAsync(sourceCollection);

```