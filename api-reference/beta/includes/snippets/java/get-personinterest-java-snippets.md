---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonInterest personInterest = graphClient.me().profile().interests("{id}")
	.buildRequest()
	.get();

```