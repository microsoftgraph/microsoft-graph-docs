---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetGroup updatableAsset = new UpdatableAssetGroup();

graphClient.admin().windows().updates().updatableAssets()
	.buildRequest()
	.post(updatableAsset);

```