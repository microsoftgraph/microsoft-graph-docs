---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var temporaryAccessPassAuthenticationMethod = await graphClient.Users["{user-id}"].Authentication.TemporaryAccessPassMethods["{temporaryAccessPassAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```