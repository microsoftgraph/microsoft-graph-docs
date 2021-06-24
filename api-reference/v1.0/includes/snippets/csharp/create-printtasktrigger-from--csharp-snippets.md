---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTaskTrigger = new PrintTaskTrigger
{
	Event = PrintEvent.JobStarted,
	AdditionalData = new Dictionary<string, object>()
	{
		{"definition@odata.bind", "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}"}
	}
};

await graphClient.Print.Printers["{printer-id}"].TaskTriggers
	.Request()
	.AddAsync(printTaskTrigger);

```