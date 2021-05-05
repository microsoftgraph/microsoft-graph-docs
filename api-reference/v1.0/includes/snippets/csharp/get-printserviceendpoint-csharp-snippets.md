---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printServiceEndpoint = await graphClient.Print.Services["{printService-id}"].Endpoints["{printServiceEndpoint-id}"]
	.Request()
	.GetAsync();

```