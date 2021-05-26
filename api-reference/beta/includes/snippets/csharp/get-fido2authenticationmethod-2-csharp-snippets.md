---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fido2Methods = await graphClient.Me.Authentication.Fido2Methods
	.Request()
	.GetAsync();

```