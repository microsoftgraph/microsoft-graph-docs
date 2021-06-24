---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var windowsHelloForBusinessAuthenticationMethod = await graphClient.Users["{user-id}"].Authentication.WindowsHelloForBusinessMethods["{windowsHelloForBusinessAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```