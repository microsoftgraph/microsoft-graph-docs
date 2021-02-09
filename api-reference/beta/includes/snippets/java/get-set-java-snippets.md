---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISetCollectionPage sets = graphClient.termStore().groups("{groupId}").sets()
	.buildRequest()
	.get();

```