---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFill workbookRangeFill = new WorkbookRangeFill();
workbookRangeFill.color = "color-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().fill()
	.buildRequest()
	.patch(workbookRangeFill);

```