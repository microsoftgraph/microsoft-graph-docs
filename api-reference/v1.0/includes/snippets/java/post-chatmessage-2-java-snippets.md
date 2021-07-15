---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Hello World <at id=\"0\">Jane Smith</at>";
chatMessage.body = body;
LinkedList<ChatMessageMention> mentionsList = new LinkedList<ChatMessageMention>();
ChatMessageMention mentions = new ChatMessageMention();
mentions.id = 0;
mentions.mentionText = "Jane Smith";
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
Identity user = new Identity();
user.displayName = "Jane Smith";
user.id = "ef1c916a-3135-4417-ba27-8eb7bd084193";
user.userIdentityType = TeamworkUserIdentityType.AAD_USER;
mentioned.user = user;
mentions.mentioned = mentioned;
mentionsList.add(mentions);
chatMessage.mentions = mentionsList;

graphClient.teams("fbe2bf47-16c8-47cf-b4a5-4b9b187c508b").channels("19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2").messages()
	.buildRequest()
	.post(chatMessage);

```