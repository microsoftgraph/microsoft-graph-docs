---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var role = ScreenSharingRole.Viewer;

await graphClient.Communications.Calls["{id}"]
	.ChangeScreenSharingRole(role)
	.Request()
	.PostAsync();

```