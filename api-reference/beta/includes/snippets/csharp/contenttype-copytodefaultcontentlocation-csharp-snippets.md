---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceFile = new ItemReference
{
	SharepointIds = new SharepointIds
	{
		ListId = "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0",
		ListItemId = "2"
	}
};

var destinationFileName = "newname.txt";

await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"]
	.CopyToDefaultContentLocation(sourceFile,destinationFileName)
	.Request()
	.PostAsync();

```