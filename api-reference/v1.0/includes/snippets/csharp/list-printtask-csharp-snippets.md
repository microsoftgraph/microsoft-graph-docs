---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Print.TaskDefinitions["{printTaskDefinition-id}"].Tasks
	.Request()
	.GetAsync();

```