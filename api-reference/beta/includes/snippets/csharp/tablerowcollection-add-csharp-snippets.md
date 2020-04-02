---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var index = null;

var values = new List<Json>()
{
	new List<Json>()
{
	1,
	2,
	3
},
	new List<Json>()
{
	4,
	5,
	6
}
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Rows
	.Add(index,values)
	.Request()
	.PostAsync();

```