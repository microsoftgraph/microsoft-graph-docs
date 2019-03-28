
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var teachers = await graphClient.Education.Classes["{class-id}"].Teachers
	.Request()
	.GetAsync();

```