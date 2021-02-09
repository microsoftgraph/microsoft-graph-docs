---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String color = "color-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").format().fill()
	.setSolidColor(color)
	.buildRequest()
	.post();

```