
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of SynchronizationJob
var jobs = new SynchronizationJob
{
	TemplateId = "BoxOutDelta",
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs
	.Request()
	.AddAsync(jobs);

```