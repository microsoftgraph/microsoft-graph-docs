---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @string = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Operations["{ediscovery.caseOperation-id}"]
	.GetDownloadUrl()
	.Request()
	.GetAsync();

```