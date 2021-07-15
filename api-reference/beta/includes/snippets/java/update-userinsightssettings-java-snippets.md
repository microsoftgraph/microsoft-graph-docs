---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserInsightsSettings userInsightsSettings = new UserInsightsSettings();
userInsightsSettings.isEnabled = false;

graphClient.users("{userId}").settings().itemInsights()
	.buildRequest()
	.patch(userInsightsSettings);

```