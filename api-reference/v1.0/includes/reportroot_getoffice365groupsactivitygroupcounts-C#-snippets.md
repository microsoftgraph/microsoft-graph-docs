
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365GroupsActivityGroupCounts = await graphClient.Reports.GetOffice365GroupsActivityGroupCounts('D7')
	.Request()
	.GetAsync();

```