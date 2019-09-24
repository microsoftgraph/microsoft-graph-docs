---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365GroupsActivityFileCounts = await graphClient.Reports
	.GetOffice365GroupsActivityFileCounts("D7")
	.Request()
	.GetAsync();

```