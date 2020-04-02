---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageRule messageRule = new MessageRule();
messageRule.displayName = "Important from partner";
MessageRuleActions actions = new MessageRuleActions();
actions.markImportance = Importance.HIGH;
messageRule.actions = actions;

graphClient.me().mailFolders("inbox").messageRules("AQAAAJ5dZqA=")
	.buildRequest()
	.patch(messageRule);

```