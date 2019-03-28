
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"]
	.unpublish(bookingBusiness);
	.Request()
	.PostAsync()

```