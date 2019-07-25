---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRule = await graphClient.Me.MailFolders["inbox"].MessageRules["AQAAAJ5dZqA="]
	.Request()
	.GetAsync();

```