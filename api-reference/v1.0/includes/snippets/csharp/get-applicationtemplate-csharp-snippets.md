---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applicationTemplate = await graphClient.ApplicationTemplates["{applicationTemplate-id}"]
	.Request()
	.GetAsync();

```