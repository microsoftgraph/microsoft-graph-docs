---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintSettings printSettings = graphClient.customRequest("/print/settings", PrintSettings.class)
	.buildRequest()
	.get();

```