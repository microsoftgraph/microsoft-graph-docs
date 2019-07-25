---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Drive.Root.Items.{item-id}.Permissions.{perm-id}
	.Request()
	.DeleteAsync();

```