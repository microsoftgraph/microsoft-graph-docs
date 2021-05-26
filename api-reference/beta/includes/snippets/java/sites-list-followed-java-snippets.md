---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteCollectionWithReferencesPage followedSites = graphClient.me().followedSites()
	.buildRequest()
	.get();

```