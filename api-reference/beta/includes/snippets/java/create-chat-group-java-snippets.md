---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Chat chat = new Chat();
chat.chatType = ChatType.GROUP;
chat.topic = "Group chat title";
LinkedList<ConversationMember> membersList = new LinkedList<ConversationMember>();
AadUserConversationMember members = new AadUserConversationMember();
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("owner");
members.roles = rolesList;
members.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users('8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca')"));
membersList.add(members);
AadUserConversationMember members1 = new AadUserConversationMember();
LinkedList<String> rolesList1 = new LinkedList<String>();
rolesList1.add("owner");
members1.roles = rolesList1;
members1.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users('82fe7758-5bb3-4f0d-a43f-e555fd399c6f')"));
membersList.add(members1);
AadUserConversationMember members2 = new AadUserConversationMember();
LinkedList<String> rolesList2 = new LinkedList<String>();
rolesList2.add("owner");
members2.roles = rolesList2;
members2.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users('3626a173-f2bc-4883-bcf7-01514c3bfb82')"));
membersList.add(members2);
ConversationMemberCollectionResponse conversationMemberCollectionResponse = new ConversationMemberCollectionResponse();
conversationMemberCollectionResponse.value = membersList;
ConversationMemberCollectionPage conversationMemberCollectionPage = new ConversationMemberCollectionPage(conversationMemberCollectionResponse, null);
chat.members = conversationMemberCollectionPage;

graphClient.chats()
	.buildRequest()
	.post(chat);

```