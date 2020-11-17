---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String shift = "shift-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range()
	.insert(shift)
	.buildRequest()
	.post();

```