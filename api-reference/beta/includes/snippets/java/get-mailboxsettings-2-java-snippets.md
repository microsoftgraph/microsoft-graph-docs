---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AutomaticRepliesSetting automaticRepliesSetting = graphClient.customRequest("/me/mailboxSettings/automaticRepliesSetting", AutomaticRepliesSetting.class)
	.buildRequest()
	.get();

```