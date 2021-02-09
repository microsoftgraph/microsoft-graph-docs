---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMemberOf = await graphClient.Me.ScopedRoleMemberOf
	.Request()
	.GetAsync();

```