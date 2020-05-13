---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var phoneMethods = await graphClient.Me.Authentication.PhoneMethods
	.Request()
	.GetAsync();

```