
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var bookingBusinesses = await graphClient.BookingBusinesses["Fabrikam@M365B489948.onmicrosoft.com"]
	.Request()
	.GetAsync();

```