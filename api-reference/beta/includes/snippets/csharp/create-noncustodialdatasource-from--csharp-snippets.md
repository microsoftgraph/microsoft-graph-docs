---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var noncustodialDataSource = new Microsoft.Graph.Ediscovery.NoncustodialDataSource
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://canary.graph.microsoft.com/testprodbetancsdsaslist/compliance/ediscovery/cases/06d52284-ed81-49b8-904a-b863d3164731/noncustodialDataSources/39383530323537383742433232433246"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].SourceCollections["{ediscovery.sourceCollection-id}"].NoncustodialSources.References
	.Request()
	.AddAsync(noncustodialDataSource);

```