---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cancellationMessage = "Your appointment has been successfully cancelled. Please call us again.";

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKoAAA="]
	.Cancel(cancellationMessage)
	.Request()
	.PostAsync();

```