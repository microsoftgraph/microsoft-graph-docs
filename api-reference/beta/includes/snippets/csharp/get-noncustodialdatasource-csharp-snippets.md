---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var noncustodialDataSource = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].NoncustodialDataSources["{ediscovery.noncustodialDataSource-id}"]
	.Request()
	.GetAsync();

```