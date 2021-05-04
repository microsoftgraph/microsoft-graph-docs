---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IMessageDeltaCollectionPage delta = graphClient.me().mailFolders("{id}").messages()
	.delta()
	.buildRequest()
	.get();

```