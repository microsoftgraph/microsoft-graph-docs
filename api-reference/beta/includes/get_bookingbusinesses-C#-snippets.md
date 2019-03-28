
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var bookingBusinesses = await graphClient.BookingBusinesses
	.Request()
	.GetAsync();

```