---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var endpoints = await graphClient.Print.Services["{printService-id}"].Endpoints
	.Request()
	.GetAsync();

```