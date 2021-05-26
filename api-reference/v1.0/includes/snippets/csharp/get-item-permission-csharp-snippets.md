---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permission = await graphClient.Me.Drive.Items["{driveItem-id}"].Permissions["{permission-id}"]
	.Request()
	.GetAsync();

```