---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTask = await graphClient.Print.TaskDefinitions["{printTaskDefinition-id}"].Tasks["{printTask-id}"]
	.Request()
	.GetAsync();

```