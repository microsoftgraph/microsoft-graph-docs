---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var labels = await graphClient.Me.InformationProtection.Policy.Labels
	.Request()
	.GetAsync();

```