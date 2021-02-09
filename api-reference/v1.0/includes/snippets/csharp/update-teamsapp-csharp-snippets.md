---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

using var teamsApp = new System.IO.MemoryStream(Encoding.UTF8.GetBytes("[Zip file containing a Teams app package]"));

await graphClient.AppCatalogs.TeamsApps["06805b9e-77e3-4b93-ac81-525eb87513b8"]
	.Request()
	.PutAsync(teamsApp);

```