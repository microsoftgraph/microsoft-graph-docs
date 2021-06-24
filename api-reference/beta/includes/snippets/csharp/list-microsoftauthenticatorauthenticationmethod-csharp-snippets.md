---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoftAuthenticatorMethods = await graphClient.Users["{user-id}"].Authentication.MicrosoftAuthenticatorMethods
	.Request()
	.GetAsync();

```