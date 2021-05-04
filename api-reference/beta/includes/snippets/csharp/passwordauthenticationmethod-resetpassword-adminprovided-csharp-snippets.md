---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var newPassword = "newPassword-value";

await graphClient.Users["{user-id}"].Authentication.PasswordMethods["{passwordAuthenticationMethod-id}"]
	.ResetPassword(newPassword,null)
	.Request()
	.PostAsync();

```