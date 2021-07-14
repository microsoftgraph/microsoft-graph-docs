---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserSetting cloudPcUserSetting = graphClient.deviceManagement().virtualEndpoint().userSettings("b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff")
	.buildRequest()
	.expand("assignments")
	.get();

```