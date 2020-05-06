---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var allowedUsers = await graphClient.Print.PrinterShares["{id}"].AllowedUsers
	.Request()
	.GetAsync();

```