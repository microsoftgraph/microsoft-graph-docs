---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailMethods = await graphClient.Me.Authentication.EmailMethods
	.Request()
	.GetAsync();

```