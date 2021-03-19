---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonWebsiteCollectionPage websites = graphClient.me().profile().websites()
	.buildRequest()
	.get();

```