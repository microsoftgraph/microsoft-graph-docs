---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = await graphClient.Users["meganb@contoso.OnMicrosoft.com"].Calendars["AAMkADlAABhbftjAAA="]
	.Request()
	.GetAsync();

```