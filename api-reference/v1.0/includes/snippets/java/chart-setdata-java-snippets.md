---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String sourceData = "sourceData-value";

String seriesBy = "seriesBy-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.setData(sourceData,seriesBy)
	.buildRequest()
	.post();

```