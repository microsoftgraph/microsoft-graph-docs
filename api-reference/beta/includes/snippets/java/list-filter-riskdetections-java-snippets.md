---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "riskType eq 'unfamiliarFeatures' or riskLevel eq 'medium'"));

IRiskDetectionCollectionPage riskDetections = graphClient.riskDetections()
	.buildRequest( requestOptions )
	.get();

```