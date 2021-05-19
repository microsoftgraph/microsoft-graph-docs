---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Deployment deployment = graphClient.admin().windows().updates().deployments("b5171742-1742-b517-4217-17b5421717b5")
	.buildRequest()
	.get();

```