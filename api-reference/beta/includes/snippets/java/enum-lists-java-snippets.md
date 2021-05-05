---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ListCollectionPage lists = graphClient.sites("{site-id}").lists()
	.buildRequest()
	.get();

```