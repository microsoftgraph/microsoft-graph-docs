---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkingHours workingHours = graphClient.customRequest("/me/mailboxSettings/workingHours", WorkingHours.class)
	.buildRequest()
	.get();

```