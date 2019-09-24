---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Threads["AAQkADJizZJpEWwqDHsEpV_KA=="].Posts["AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA="].Extensions["Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate"]
	.Request()
	.GetAsync();

```