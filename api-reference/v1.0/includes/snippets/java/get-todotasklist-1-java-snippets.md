---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TodoTaskListCollectionPage lists = graphClient.me().todo().lists()
	.buildRequest()
	.get();

```