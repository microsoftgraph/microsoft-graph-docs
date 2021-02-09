---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationThread conversationThread = new ConversationThread();
conversationThread.topic = "New Conversation Thread Topic";
LinkedList<Post> postsList = new LinkedList<Post>();
Post posts = new Post();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "this is body content";
posts.body = body;
LinkedList<Recipient> newParticipantsList = new LinkedList<Recipient>();
Recipient newParticipants = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "Alex Darrow";
emailAddress.address = "alexd@contoso.com";
newParticipants.emailAddress = emailAddress;
newParticipantsList.add(newParticipants);
posts.newParticipants = newParticipantsList;
postsList.add(posts);
PostCollectionResponse postCollectionResponse = new PostCollectionResponse();
postCollectionResponse.value = postsList;
PostCollectionPage postCollectionPage = new PostCollectionPage(postCollectionResponse, null);
conversationThread.posts = postCollectionPage;

graphClient.groups("{id}").threads()
	.buildRequest()
	.post(conversationThread);

```