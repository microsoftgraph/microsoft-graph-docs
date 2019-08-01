---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISkypeForBusinessParticipantActivityCountsCollectionPage getSkypeForBusinessParticipantActivityCounts = graphClient.reports()
	.getSkypeForBusinessParticipantActivityCounts('D7')
	.buildRequest()
	.get();

```