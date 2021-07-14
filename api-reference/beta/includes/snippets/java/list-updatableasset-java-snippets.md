---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetCollectionPage updatableAssets = graphClient.admin().windows().updates().updatableAssets()
	.buildRequest()
	.get();

```