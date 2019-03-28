
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var services = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services
	.Request()
	.GetAsync();

```