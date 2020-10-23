---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Me.Drive.Items["{item-id}"].Versions["{version-id}"].Content
	.Request()
	.GetAsync();

```