---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EndpointCollectionPage endpoints = graphClient.groups("{id}").endpoints()
	.buildRequest()
	.get();

```