---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Chats["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"].InstalledApps
	.Request()
	.Filter("teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.Expand("teamsAppDefinition")
	.GetAsync();

```