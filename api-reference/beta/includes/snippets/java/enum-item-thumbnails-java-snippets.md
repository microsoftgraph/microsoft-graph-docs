---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ThumbnailSetCollectionPage thumbnails = graphClient.me().drive().items("{item-id}").thumbnails()
	.buildRequest()
	.get();

```