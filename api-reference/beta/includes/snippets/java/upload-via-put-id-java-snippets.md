---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] stream = Base64.getDecoder().decode("The contents of the file goes here.");
	graphClient.me().drive().items("{item-id}")
	.buildRequest()
	.put(stream);

```