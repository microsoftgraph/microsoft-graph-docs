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
		{"definition@odata.bind", "https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c"}
	}
};

await graphClient.Print.Printers["ae63f617-4856-4b45-8ea9-69dfbeea230e"].TaskTriggers
	.Request()
	.AddAsync(printTaskTrigger);

```