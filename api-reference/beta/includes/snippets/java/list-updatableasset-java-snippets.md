---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetCollectionPage exclusions = graphClient.admin().windows().updates().deployments("{deploymentId}").audience().exclusions()
	.buildRequest()
	.get();

```