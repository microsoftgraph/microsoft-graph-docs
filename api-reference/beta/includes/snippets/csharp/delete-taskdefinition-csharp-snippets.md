---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.TaskDefinitions["4c6a0f26-8e5d-4bf6-91e6-4a5731adec19"]
	.Request()
	.DeleteAsync();

```