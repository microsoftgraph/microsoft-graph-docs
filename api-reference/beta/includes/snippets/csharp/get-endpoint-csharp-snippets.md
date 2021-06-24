---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var endpoint = await graphClient.Groups["{group-id}"].Endpoints["{endpoint-id}"]
	.Request()
	.GetAsync();

```