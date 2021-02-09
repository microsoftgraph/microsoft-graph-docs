---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Teams["6903fa93-605b-43ef-920e-77c4729f8258"].InstalledApps
	.Request()
	.GetAsync();

```