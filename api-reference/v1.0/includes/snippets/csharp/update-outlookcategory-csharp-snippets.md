---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookCategory = new OutlookCategory
{
	Color = CategoryColor.Preset15
};

await graphClient.Me.Outlook.MasterCategories["bac262b7-485d-4739-b436-e31467d64fac"]
	.Request()
	.UpdateAsync(outlookCategory);

```