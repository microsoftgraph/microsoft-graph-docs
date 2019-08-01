---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageRule messageRule = new MessageRule();
messageRule.displayName = "From partner";
messageRule.sequence = 2;
messageRule.isEnabled = true;
MessageRulePredicates conditions = new MessageRulePredicates();
LinkedList<String> senderContainsList = new LinkedList<String>();
senderContainsList.add("adele");
conditions.senderContains = senderContainsList;
messageRule.conditions = conditions;
MessageRuleActions actions = new MessageRuleActions();
LinkedList<Recipient> forwardToList = new LinkedList<Recipient>();
Recipient forwardTo = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "Alex Wilbur";
emailAddress.address = "AlexW@contoso.onmicrosoft.com";
forwardTo.emailAddress = emailAddress;
forwardToList.add(forwardTo);
actions.forwardTo = forwardToList;
actions.stopProcessingRules = true;
messageRule.actions = actions;

graphClient.me().mailFolders("inbox").messageRules()
	.buildRequest()
	.post(messageRule);

```