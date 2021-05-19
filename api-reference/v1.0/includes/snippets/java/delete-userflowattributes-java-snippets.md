---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().userFlowAttributes("extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby")
	.buildRequest()
	.delete();

```