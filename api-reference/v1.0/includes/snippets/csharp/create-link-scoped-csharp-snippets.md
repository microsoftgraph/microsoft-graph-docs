---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "edit";

var scope = "organization";

await graphClient.Me.Drive.Items["{item-id}"]
	.CreateLink(type,scope)
	.Request()
	.PostAsync();

```