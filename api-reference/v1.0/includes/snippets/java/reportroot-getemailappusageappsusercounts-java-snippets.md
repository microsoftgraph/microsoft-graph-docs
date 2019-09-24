---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Report report = graphClient.reports()
	.getEmailAppUsageAppsUserCounts("D7")
	.buildRequest()
	.get();

```