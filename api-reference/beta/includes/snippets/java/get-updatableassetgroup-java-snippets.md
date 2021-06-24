---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAsset updatableAsset = graphClient.admin().windows().updates().updatableAssets("5c55730b-730b-5c55-0b73-555c0b73555c")
	.buildRequest()
	.get();

```