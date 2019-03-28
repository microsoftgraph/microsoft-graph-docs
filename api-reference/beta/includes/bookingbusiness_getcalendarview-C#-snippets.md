
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calendarView = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].CalendarView
	.Request()
	.GetAsync();

```