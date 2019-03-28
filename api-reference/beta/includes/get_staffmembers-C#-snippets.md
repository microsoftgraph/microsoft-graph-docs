
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var staffMembers = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].StaffMembers
	.Request()
	.GetAsync();

```