---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintServiceEndpoint printServiceEndpoint = graphClient.print().services("{printServiceId}").endpoints("{printServiceEndpointId}")
	.buildRequest()
	.get();

```