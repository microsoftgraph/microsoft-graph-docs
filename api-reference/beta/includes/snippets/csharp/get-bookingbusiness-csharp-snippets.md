---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = await graphClient.BookingBusinesses["Fabrikam@M365B489948.onmicrosoft.com"]
	.Request()
	.GetAsync();

```