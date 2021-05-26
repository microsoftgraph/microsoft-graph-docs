---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Chats["{chat-id}"].InstalledApps
	.Request()
	.Expand("teamsAppDefinition($expand=bot)")
	.GetAsync();

```