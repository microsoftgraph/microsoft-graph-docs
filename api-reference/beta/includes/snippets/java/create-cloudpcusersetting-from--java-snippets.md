---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserSetting cloudPcUserSetting = new CloudPcUserSetting();
cloudPcUserSetting.displayName = "Example";
cloudPcUserSetting.selfServiceEnabled = false;
cloudPcUserSetting.localAdminEnabled = true;

graphClient.deviceManagement().virtualEndpoint().userSettings()
	.buildRequest()
	.post(cloudPcUserSetting);

```