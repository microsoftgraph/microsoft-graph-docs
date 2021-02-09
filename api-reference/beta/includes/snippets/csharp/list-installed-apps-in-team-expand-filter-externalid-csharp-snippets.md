---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Teams["acda442c-78d2-491b-8204-4ef5019c0193"].InstalledApps
	.Request()
	.Filter("teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.Expand("teamsAppDefinition")
	.GetAsync();

```