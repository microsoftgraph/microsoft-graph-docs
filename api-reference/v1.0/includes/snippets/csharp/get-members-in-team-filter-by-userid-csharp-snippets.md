---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Teams["ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062"].Members
	.Request()
	.Filter("(microsoft.graph.aadUserConversationMember/userId eq '73761f06-2ac9-469c-9f10-279a8cc267f9')")
	.GetAsync();

```