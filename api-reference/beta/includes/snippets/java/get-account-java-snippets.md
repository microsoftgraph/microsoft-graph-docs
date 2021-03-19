---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserAccountInformationCollectionPage account = graphClient.me().profile().account()
	.buildRequest()
	.get();

```