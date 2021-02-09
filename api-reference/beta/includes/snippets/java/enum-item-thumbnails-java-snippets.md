---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IThumbnailSetCollectionPage thumbnails = graphClient.me().drive().items("{item-id}").thumbnails()
	.buildRequest()
	.get();

```