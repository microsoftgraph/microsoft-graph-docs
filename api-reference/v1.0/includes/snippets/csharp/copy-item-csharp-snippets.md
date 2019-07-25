---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var parentReference = new ItemReference
{
	DriveId = "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B",
	Id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
};

var name = "contoso plan (copy).txt";

await graphClient.Me.Drive.Items["{item-id}"]
	.Copy(name,parentReference)
	.Request()
	.PostAsync();

```