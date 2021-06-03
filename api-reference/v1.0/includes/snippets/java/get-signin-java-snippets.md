---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SignIn signIn = graphClient.auditLogs().signIns("66ea54eb-6301-4ee5-be62-ff5a759b0100")
	.buildRequest()
	.get();

```