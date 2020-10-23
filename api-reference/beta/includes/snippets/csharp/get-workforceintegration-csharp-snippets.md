---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workforceIntegration = await graphClient.Teamwork.WorkforceIntegrations["{workforceintegrationid}"]
	.Request()
	.GetAsync();

```