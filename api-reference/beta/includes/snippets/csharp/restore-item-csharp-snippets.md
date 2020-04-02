---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var parentReference = new ItemReference
{
	Id = "String"
};

var name = "String";

await graphClient.Me.Drive.Items["{item-id}"]
	.Restore(parentReference,name)
	.Request()
	.PostAsync();

```