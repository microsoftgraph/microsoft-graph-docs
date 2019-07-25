---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").format().fill()
	.clear()
	.buildRequest()
	.post();

```