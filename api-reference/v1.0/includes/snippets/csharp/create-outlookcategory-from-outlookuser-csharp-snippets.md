---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookCategory = new OutlookCategory
{
	DisplayName = "Project expenses",
	Color = CategoryColor.Preset9
};

await graphClient.Me.Outlook.MasterCategories
	.Request()
	.AddAsync(outlookCategory);

```