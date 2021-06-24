---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chats = await graphClient.Users["{user-id}"].Chats
	.Request()
	.Filter("members/any(o: o/displayname eq 'Peter Parker')")
	.Expand("members")
	.GetAsync();

```