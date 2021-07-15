---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var currentPassword = "xWwvJ]6NMw+bWH-d";

var newPassword = "0eM85N54wFxWwvJ]";

await graphClient.Me
	.ChangePassword(currentPassword,newPassword)
	.Request()
	.PostAsync();

```