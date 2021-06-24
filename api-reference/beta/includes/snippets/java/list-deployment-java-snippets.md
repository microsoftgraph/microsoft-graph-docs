---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeploymentCollectionPage deployments = graphClient.admin().windows().updates().deployments()
	.buildRequest()
	.get();

```