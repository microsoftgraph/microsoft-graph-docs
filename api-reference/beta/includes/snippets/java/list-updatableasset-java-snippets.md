---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetCollectionPage members = graphClient.admin().windows().updates().deployments("{deploymentId}").audience().members()
	.buildRequest()
	.get();

```