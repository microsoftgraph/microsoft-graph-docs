---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{id | userPrincipalName}"].Authentication.PasswordMethods["{id}"]
	.ResetPassword(null,null)
	.Request()
	.PostAsync();

```