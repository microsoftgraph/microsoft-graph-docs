---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "MentionsPreview/IsMentioned eq true,"));

IMessageCollectionPage messages = graphClient.me().messages()
	.buildRequest( requestOptions )
	.select("subject,sender,receivedDateTime,mentionsPreview")
	.get();

```