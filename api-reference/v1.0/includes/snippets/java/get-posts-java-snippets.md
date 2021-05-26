---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PostCollectionPage posts = graphClient.groups("{id}").threads("{id}").posts()
	.buildRequest()
	.get();

```