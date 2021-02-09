---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.customRequest("/reports/getM365AppUserDetail(period='D7')/content", InputStream.class)
	.buildRequest()
	.get();

```