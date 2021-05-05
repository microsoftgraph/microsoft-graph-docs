---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTask = new PrintTask
{
	Status = new PrintTaskStatus
	{
		State = PrintTaskProcessingState.Completed,
		Description = "completed"
	}
};

await graphClient.Print.TaskDefinitions["{printTaskDefinition-id}"].Tasks["{printTask-id}"]
	.Request()
	.UpdateAsync(printTask);

```