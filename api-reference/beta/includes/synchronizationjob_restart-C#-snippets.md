
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of SynchronizationJobRestartCriteria
var criteria = new SynchronizationJobRestartCriteria
{
	ResetScope = "ConnectorDataStore, Escrows, QuarantineState",
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"]
	.restart(criteria);
	.Request()
	.PostAsync()

```