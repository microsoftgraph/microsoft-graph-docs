---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"]
	.Mute(clientContext)
	.Request()
	.PostAsync();

```