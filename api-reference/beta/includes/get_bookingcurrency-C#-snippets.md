
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var bookingCurrencies = await graphClient.BookingCurrencies["USD"]
	.Request()
	.GetAsync();

```