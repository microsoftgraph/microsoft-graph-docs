---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrants = await graphClient.Chats["{chat-id}"].PermissionGrants
	.Request()
	.GetAsync();

```