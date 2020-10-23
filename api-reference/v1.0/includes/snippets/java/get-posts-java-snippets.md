---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPostCollectionPage posts = graphClient.groups("{id}").threads("{id}").posts()
	.buildRequest()
	.get();

```