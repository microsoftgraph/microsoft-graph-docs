
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365GroupsActivityFileCounts = await graphClient.Reports.GetOffice365GroupsActivityFileCounts('D7')
	.Request()
	.GetAsync();

```