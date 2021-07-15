---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userInsightsSettings = new UserInsightsSettings
{
	IsEnabled = false
};

await graphClient.Users["{user-id}"].Settings.ItemInsights
	.Request()
	.UpdateAsync(userInsightsSettings);

```