---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTask = await graphClient.Print.TaskDefinitions["3203656e-6069-4e10-8147-d25290b00a3c"].Tasks["d036638b-1272-4bba-9227-732463823ed3"]
	.Request()
	.GetAsync();

```