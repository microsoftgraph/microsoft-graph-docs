---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookCategory = new OutlookCategory
{
	Color = CategoryColor.Preset15
};

await graphClient.Me.Outlook.MasterCategories["{outlookCategory-id}"]
	.Request()
	.UpdateAsync(outlookCategory);

```