
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365GroupsActivityCounts = await graphClient.Reports.GetOffice365GroupsActivityCounts('D7')
	.Request()
	.GetAsync();

```