---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var devices = await graphClient.Devices
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Android")
	.GetAsync();

```