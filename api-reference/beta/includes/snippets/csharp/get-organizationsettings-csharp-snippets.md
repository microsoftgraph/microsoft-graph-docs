---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organization = await graphClient.Organization["settings"]
	.Request()
	.GetAsync();

```