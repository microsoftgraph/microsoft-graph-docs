---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemInsightsSettings = new ItemInsightsSettings
{
	DisabledForGroup = "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
};

await graphClient.Organization["{organizationId}"].Settings.ItemInsights
	.Request()
	.UpdateAsync(itemInsightsSettings);

```