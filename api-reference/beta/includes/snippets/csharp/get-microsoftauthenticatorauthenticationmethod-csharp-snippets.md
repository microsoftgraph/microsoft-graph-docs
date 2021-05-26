---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoftAuthenticatorAuthenticationMethod = await graphClient.Users["{user-id}"].Authentication.MicrosoftAuthenticatorMethods["{microsoftAuthenticatorAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```