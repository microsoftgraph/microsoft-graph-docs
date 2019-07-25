---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWorkbookChartSeriesCollectionPage series = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").series()
	.buildRequest()
	.get();

```