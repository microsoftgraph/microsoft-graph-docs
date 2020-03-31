---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = await graphClient.Users["AlexW@contoso.OnMicrosoft.com"].Calendar
	.Request()
	.GetAsync();

```