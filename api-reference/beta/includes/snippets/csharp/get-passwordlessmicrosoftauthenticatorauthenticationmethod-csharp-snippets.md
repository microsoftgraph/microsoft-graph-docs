---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var passwordlessMicrosoftAuthenticatorAuthenticationMethod = await graphClient.Me.Authentication.PasswordlessMicrosoftAuthenticatorMethods["R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1"]
	.Request()
	.GetAsync();

```