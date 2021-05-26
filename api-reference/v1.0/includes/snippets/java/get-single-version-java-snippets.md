---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemVersion driveItemVersion = graphClient.me().drive().items("{item-id}").versions("{version-id}")
	.buildRequest()
	.get();

```