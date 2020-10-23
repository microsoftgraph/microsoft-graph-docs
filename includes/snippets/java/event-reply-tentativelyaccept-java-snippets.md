---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "I will probably be able to make it.";

boolean sendResponse = true;

graphClient.me().events("AAMkADADVj3fyAABZ5ieyAAA=")
	.tentativelyAccept(comment,sendResponse)
	.buildRequest()
	.post();

```