---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> valueList = new LinkedList<String>();
valueList.add("id-value1");
valueList.add("id-value2");

graphClient.security().tiIndicators()
	.deleteTiIndicators(TiIndicatorDeleteTiIndicatorsParameterSet
		.newBuilder()
		.withValue(valueList)
		.build())
	.buildRequest()
	.post();

```