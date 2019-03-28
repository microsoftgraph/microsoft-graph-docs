
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Program
var programs = new Program
{
	DisplayName = "testprogram3",
	Description = "test description",
};

await graphClient.Programs
	.Request()
	.AddAsync(programs);

```