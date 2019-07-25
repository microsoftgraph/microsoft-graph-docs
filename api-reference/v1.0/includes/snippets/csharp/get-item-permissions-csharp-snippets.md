---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissions = await graphClient.Me.Drive.Items["{item-id}"].Permissions
	.Request()
	.GetAsync();

```