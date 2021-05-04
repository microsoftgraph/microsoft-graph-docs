---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProfilePhotoCollectionPage photos = graphClient.groups("{id}").photos()
	.buildRequest()
	.get();

```