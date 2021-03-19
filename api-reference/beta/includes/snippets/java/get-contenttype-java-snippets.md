---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentType contentType = graphClient.sites("{site-id}").contentTypes("{contentType-id}")
	.buildRequest()
	.get();

```