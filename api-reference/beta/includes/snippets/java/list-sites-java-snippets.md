---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISiteCollectionPage sites = graphClient.sites()
	.buildRequest()
	.filter("siteCollection/root ne null")
	.select("siteCollection,webUrl")
	.get();

```