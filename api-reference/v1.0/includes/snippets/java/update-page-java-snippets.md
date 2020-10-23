---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Stream> streamList = new LinkedList<Stream>();
Stream stream = new Stream();
stream.target = "#para-id";
stream.action = "insert";
stream.position = "before";
stream.content = "<img src=\"image-url-or-part-name\" alt=\"image-alt-text\" />";

streamList.add(stream);
Stream stream1 = new Stream();
stream1.target = "#list-id";
stream1.action = "append";
stream1.content = "<li>new-page-content</li>";

streamList.add(stream1);

graphClient.customRequest("/me/onenote/pages/{id}/content", Stream.class)
	.buildRequest()
	.patch(stream);

```