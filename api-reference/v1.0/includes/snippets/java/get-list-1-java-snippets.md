---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

List list = graphClient.sites("{site-id}").lists("{list-id}")
	.buildRequest()
	.get();

```