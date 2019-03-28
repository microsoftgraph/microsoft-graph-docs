
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of SynchronizationTemplate
var templates = new SynchronizationTemplate
{
	Id = "SCIM-Test1",
	ApplicationId = "{id}",
	FactoryTag = "CustomSCIM",
};

await graphClient.Applications["{id}"].Synchronization.Templates
	.Request()
	.AddAsync(templates);

```