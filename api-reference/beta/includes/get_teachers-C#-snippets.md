
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var teachers = await graphClient.Education.Classes["11023"].Teachers
	.Request()
	.GetAsync();

```