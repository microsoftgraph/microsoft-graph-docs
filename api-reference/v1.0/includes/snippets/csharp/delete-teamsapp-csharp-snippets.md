---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.AppCatalogs.TeamsApps["06805b9e-77e3-4b93-ac81-525eb87513b8"]
	.Request()
	.DeleteAsync();

```