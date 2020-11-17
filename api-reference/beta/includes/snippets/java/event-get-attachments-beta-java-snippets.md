---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAttachmentCollectionPage attachments = graphClient.me().events("{id}").attachments()
	.buildRequest()
	.get();

```