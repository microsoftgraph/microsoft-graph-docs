---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Teams["2ab9c796-2902-45f8-b712-7c5a63cf41c4"].Channels["19:20bc1df46b1148e9b22539b83bc66809@thread.skype"].Members
	.Request()
	.GetAsync();

```