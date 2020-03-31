---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

boolean across = true;

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range()
	.merge(across)
	.buildRequest()
	.post();

```