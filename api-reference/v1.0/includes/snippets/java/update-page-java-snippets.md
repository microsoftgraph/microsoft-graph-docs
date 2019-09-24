---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Stream> StreamList = new LinkedList<Stream>();
Stream Stream = new Stream();
Stream.target = "#para-id";
Stream.action = "insert";
Stream.position = "before";
Stream.content = "<img src=\"image-url-or-part-name\" alt=\"image-alt-text\" />";

StreamList.add(Stream);
Stream Stream1 = new Stream();
Stream1.target = "#list-id";
Stream1.action = "append";
Stream1.content = "<li>new-page-content</li>";

StreamList.add(Stream1);

graphClient.customRequest("/me/onenote/pages/{id}/content", Stream.class)
	.buildRequest()
	.patch(Stream);

```