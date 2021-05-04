---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var windowsHelloForBusinessMethods = await graphClient.Users["{user-id}"].Authentication.WindowsHelloForBusinessMethods
	.Request()
	.GetAsync();

```