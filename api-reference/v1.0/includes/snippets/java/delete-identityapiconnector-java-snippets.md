---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().apiConnectors("370eeb68-dfd3-4a47-8160-8824c2358321")
	.buildRequest()
	.delete();

```