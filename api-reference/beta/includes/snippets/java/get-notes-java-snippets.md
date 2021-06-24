---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnnotationCollectionPage notes = graphClient.me().profile().notes()
	.buildRequest()
	.get();

```