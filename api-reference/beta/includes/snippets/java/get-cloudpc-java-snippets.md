---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPC cloudPC = graphClient.deviceManagement().virtualEndpoint().cloudPCs("{id}")
	.buildRequest()
	.get();

```