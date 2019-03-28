
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var appointments = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKnAAA="]
	.Request()
	.GetAsync();

```