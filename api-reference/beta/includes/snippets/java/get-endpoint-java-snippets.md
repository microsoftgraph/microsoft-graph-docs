---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Endpoint endpoint = graphClient.groups("{id}").endpoints("{id}")
	.buildRequest()
	.get();

```