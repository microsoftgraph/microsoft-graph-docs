---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startDateTime", "2019-04-08T09:00:00.0000000"),
	new QueryOption("endDateTime", "2019-04-30T09:00:00.0000000")
};

var instances = await graphClient.Me.Events["AAMkAGUzYRgWAAA="].Instances
	.Request( queryOptions )
	.Select("subject,bodyPreview,seriesMasterId,type,recurrence,start,end")
	.GetAsync();

```