---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.customRequest("/reports/browserDistributionUserCounts(period='D7')/content", InputStream.class)
	.buildRequest()
	.get();

```