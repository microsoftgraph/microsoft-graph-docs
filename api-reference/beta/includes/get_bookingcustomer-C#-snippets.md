
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var customers = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Customers["8bb19078-0f45-4efb-b2c5-da78b860f73a"]
	.Request()
	.GetAsync();

```