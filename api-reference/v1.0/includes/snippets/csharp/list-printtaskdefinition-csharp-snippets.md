---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskDefinitions = await graphClient.Print.TaskDefinitions
	.Request()
	.GetAsync();

```