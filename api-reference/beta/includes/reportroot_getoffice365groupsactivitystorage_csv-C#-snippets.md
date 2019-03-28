
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365GroupsActivityStorage = await graphClient.Reports.GetOffice365GroupsActivityStorage('D7')
	.Request()
	.GetAsync();

```