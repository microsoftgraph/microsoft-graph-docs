---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintServiceEndpointCollectionPage endpoints = graphClient.print().services("{printServiceId}").endpoints()
	.buildRequest()
	.get();

```