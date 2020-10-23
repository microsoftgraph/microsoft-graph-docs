---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAzureADApplicationSignInSummary = await graphClient.Reports
	.GetAzureADApplicationSignInSummary("D7")
	.Request()
	.GetAsync();

```