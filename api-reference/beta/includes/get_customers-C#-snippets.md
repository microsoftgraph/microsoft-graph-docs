
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var customers = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Customers
	.Request()
	.GetAsync();

```