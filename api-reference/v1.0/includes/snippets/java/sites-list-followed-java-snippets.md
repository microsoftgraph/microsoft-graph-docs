---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISiteCollectionWithReferencesPage followedSites = graphClient.me().followedSites()
	.buildRequest()
	.get();

```