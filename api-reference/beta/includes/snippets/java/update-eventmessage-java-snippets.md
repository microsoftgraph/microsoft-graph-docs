---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
message.isRead = false;

graphClient.me().messages("{id}")
	.buildRequest()
	.patch(message);

```