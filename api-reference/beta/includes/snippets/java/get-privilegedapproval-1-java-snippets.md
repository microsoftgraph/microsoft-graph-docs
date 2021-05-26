---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedApproval privilegedApproval = graphClient.privilegedApproval("{id}")
	.buildRequest()
	.get();

```