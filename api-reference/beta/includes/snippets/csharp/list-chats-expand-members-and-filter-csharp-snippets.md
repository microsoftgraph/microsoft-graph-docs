---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chats = await graphClient.Users["8b081ef6-4792-4def-b2c9-c363a1bf41d5"].Chats
	.Request()
	.Filter("members/any(o: o/displayname eq 'Peter Parker')")
	.Expand("members")
	.GetAsync();

```