---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRule = new MessageRule
{
	DisplayName = "Important from partner",
	Actions = new MessageRuleActions
	{
		MarkImportance = Importance.High
	}
};

await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules["{messageRule-id}"]
	.Request()
	.UpdateAsync(messageRule);

```