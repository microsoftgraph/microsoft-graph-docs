---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Contoso IWA App";

await graphClient.ApplicationTemplates["8adf8e6e-67b2-4cf2-a259-e3dc5476c621"]
	.Instantiate(displayName)
	.Request()
	.PostAsync();

```