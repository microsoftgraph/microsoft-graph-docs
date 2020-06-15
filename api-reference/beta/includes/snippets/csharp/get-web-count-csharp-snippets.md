---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applications = await graphClient.Applications
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Web")
	.GetAsync();

```