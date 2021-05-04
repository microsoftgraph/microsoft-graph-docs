---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.drives("{drive-id}").items("{item-id}")
	.checkout()
	.buildRequest()
	.post();

```