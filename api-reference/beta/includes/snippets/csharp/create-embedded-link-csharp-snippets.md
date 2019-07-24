---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "embed";

await graphClient.Me.Drive.Items["{item-id}"]
	.CreateLink(type,scope,expirationDateTime,password,message,recipients)
	.Request()
	.PostAsync();

```