---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Users["{user-id}"].Teamwork.InstalledApps
	.Request()
	.GetAsync();

```