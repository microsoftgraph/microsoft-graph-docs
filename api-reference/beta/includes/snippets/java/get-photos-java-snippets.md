---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IProfilePhotoCollectionPage photos = graphClient.groups("{id}").photos()
	.buildRequest()
	.get();

```