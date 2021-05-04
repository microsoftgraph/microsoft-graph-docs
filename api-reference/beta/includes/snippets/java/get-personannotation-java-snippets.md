---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnnotation personAnnotation = graphClient.me().profile().notes("{id}")
	.buildRequest()
	.get();

```