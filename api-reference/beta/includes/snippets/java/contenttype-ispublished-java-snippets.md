---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean _boolean = graphClient.sites("{siteId}").contentTypes("{contentTypeId}")
	.isPublished()
	.buildRequest()
	.get();

```