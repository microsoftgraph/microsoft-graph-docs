---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.me().messages("4aade2547798441eab5188a7a2436bc1").content()
	.buildRequest()
	.get();

```