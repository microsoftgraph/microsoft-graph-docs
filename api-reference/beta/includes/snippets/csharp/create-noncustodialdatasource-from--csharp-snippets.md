---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var noncustodialDataSource = new Microsoft.Graph.Ediscovery.NoncustodialDataSource
{
	ApplyHoldToSource = true,
	DataSource = new UserSource
	{
		Email = "adelev@contoso.com"
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].NoncustodialDataSources
	.Request()
	.AddAsync(noncustodialDataSource);

```