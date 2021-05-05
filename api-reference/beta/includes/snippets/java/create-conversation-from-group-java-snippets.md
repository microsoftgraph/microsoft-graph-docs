---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Conversation conversation = new Conversation();
conversation.topic = "New head count";
LinkedList<ConversationThread> threadsList = new LinkedList<ConversationThread>();
ConversationThread threads = new ConversationThread();
LinkedList<Post> postsList = new LinkedList<Post>();
Post posts = new Post();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "The confirmation will come by the end of the week.";
posts.body = body;
LinkedList<Recipient> newParticipantsList = new LinkedList<Recipient>();
Recipient newParticipants = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "Adele Vance";
emailAddress.address = "AdeleV@contoso.onmicrosoft.com";
newParticipants.emailAddress = emailAddress;
newParticipantsList.add(newParticipants);
posts.newParticipants = newParticipantsList;
postsList.add(posts);
PostCollectionResponse postCollectionResponse = new PostCollectionResponse();
postCollectionResponse.value = postsList;
PostCollectionPage postCollectionPage = new PostCollectionPage(postCollectionResponse, null);
threads.posts = postCollectionPage;
threadsList.add(threads);
ConversationThreadCollectionResponse conversationThreadCollectionResponse = new ConversationThreadCollectionResponse();
conversationThreadCollectionResponse.value = threadsList;
ConversationThreadCollectionPage conversationThreadCollectionPage = new ConversationThreadCollectionPage(conversationThreadCollectionResponse, null);
conversation.threads = conversationThreadCollectionPage;

graphClient.groups("29981b6a-0e57-42dc-94c9-cd24f5306196").conversations()
	.buildRequest()
	.post(conversation);

```