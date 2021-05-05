---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAuthenticationMethod = await graphClient.Me.Authentication.EmailMethods["{emailAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```