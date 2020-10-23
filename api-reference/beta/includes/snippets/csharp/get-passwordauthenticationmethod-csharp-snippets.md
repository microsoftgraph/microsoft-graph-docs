---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var passwordAuthenticationMethod = await graphClient.Me.Authentication.PasswordMethods["{id}"]
	.Request()
	.GetAsync();

```