---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deployments = await graphClient.Admin.Windows.Updates.Deployments
	.Request()
	.GetAsync();

```