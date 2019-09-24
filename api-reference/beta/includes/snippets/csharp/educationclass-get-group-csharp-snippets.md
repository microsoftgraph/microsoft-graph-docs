---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Education.Classes["2961761D-8094-4183-A9F6-8E36E966C7D9"].Group
	.Request()
	.GetAsync();

```