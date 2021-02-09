---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemInsightsSettings itemInsightsSettings = new ItemInsightsSettings();
itemInsightsSettings.disabledForGroup = "edbfe4fb-ec70-4300-928f-dbb2ae86c981";

graphClient.organization("{organizationId}").settings().itemInsights()
	.buildRequest()
	.patch(itemInsightsSettings);

```