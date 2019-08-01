---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISkypeForBusinessPeerToPeerActivityCountsCollectionPage getSkypeForBusinessPeerToPeerActivityCounts = graphClient.reports()
	.getSkypeForBusinessPeerToPeerActivityCounts('D7')
	.buildRequest()
	.get();

```