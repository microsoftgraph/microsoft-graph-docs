---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("User-Agent", "ContosoLOBApp/1.0"));

ContentInfo contentInfo = new ContentInfo();
contentInfo.additionalDataManager().put("format@odata.type", new JsonPrimitive("#microsoft.graph.contentFormat"));
contentInfo.format = ContentFormat.DEFAULT;
contentInfo.identifier = null;
contentInfo.additionalDataManager().put("state@odata.type", new JsonPrimitive("#microsoft.graph.contentState"));
contentInfo.state = ContentState.REST;

LinkedList<ClassificationResult> classificationResultsList = new LinkedList<ClassificationResult>();
ClassificationResult classificationResults = new ClassificationResult();
classificationResults.sensitiveTypeId = UUID.fromString("cb353f78-2b72-4c3c-8827-92ebe4f69fdf");
classificationResults.count = 4;
classificationResults.confidenceLevel = 75;

classificationResultsList.add(classificationResults);

graphClient.informationProtection().policy().labels()
	.evaluateClassificationResults(InformationProtectionLabelEvaluateClassificationResultsParameterSet
		.newBuilder()
		.withContentInfo(contentInfo)
		.withClassificationResults(classificationResultsList)
		.build())
	.buildRequest( requestOptions )
	.post();

```