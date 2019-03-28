
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getOffice365GroupsActivityDetail = await graphClient.Reports.GetOffice365GroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```