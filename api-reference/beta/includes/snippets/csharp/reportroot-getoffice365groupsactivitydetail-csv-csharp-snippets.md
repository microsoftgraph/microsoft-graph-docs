---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365GroupsActivityDetail = await graphClient.Reports
	.GetOffice365GroupsActivityDetail("D7")
	.Request()
	.GetAsync();

```