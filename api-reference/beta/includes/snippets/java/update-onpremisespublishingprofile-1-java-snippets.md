---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HybridAgentUpdaterConfiguration hybridAgentUpdaterConfiguration = new HybridAgentUpdaterConfiguration();
UpdateWindow updateWindow = new UpdateWindow();
updateWindow.updateWindowStartTime = new TimeOfDay(0, 0, 0);
updateWindow.updateWindowEndTime = new TimeOfDay(0, 0, 0);
hybridAgentUpdaterConfiguration.updateWindow = updateWindow;

graphClient.customRequest("/onPremisesPublishingProfiles/provisioning/hybridAgentUpdaterConfiguration", HybridAgentUpdaterConfiguration.class)
	.buildRequest()
	.patch(hybridAgentUpdaterConfiguration);

```