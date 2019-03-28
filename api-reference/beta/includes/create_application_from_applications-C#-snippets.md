
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Application
var applications = new Application
{
	AllowPublicClient = true,
	DisplayName = "Display name",
};

await graphClient.Applications
	.Request()
	.AddAsync(applications);

```