---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = new Event
{
	Location = new Location
	{
		DisplayName = "Conf Room 2"
	}
};

await graphClient.Groups["01d4ee64-15ce-491e-bad1-b91aa3223df4"].Calendar.Events["AAMkADZlAAAAABERAAA="]
	.Request()
	.UpdateAsync(@event);

```