---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domain = await graphClient.Domains["{domain-id}"]
	.Request()
	.GetAsync();

```