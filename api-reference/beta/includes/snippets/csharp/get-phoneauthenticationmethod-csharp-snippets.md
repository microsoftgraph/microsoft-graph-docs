---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var phoneAuthenticationMethod = await graphClient.Me.Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```