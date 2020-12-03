---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<TiIndicator> valueList = new LinkedList<TiIndicator>();
TiIndicator value = new TiIndicator();
LinkedList<String> activityGroupNamesList = new LinkedList<String>();
value.activityGroupNames = activityGroupNamesList;
value.confidence = 0;
value.description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.";
value.expirationDateTime = CalendarSerializer.deserialize("2019-03-01T21:44:03.1668987+00:00");
value.externalId = "Test--8586509942423126760MS164-0";
value.fileHashType = FileHashType.SHA256;
value.fileHashValue = "b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6";
LinkedList<String> killChainList = new LinkedList<String>();
value.killChain = killChainList;
LinkedList<String> malwareFamilyNamesList = new LinkedList<String>();
value.malwareFamilyNames = malwareFamilyNamesList;
value.severity = 0;
LinkedList<String> tagsList = new LinkedList<String>();
value.tags = tagsList;
value.targetProduct = "Azure Sentinel";
value.threatType = "WatchList";
value.tlpLevel = TlpLevel.GREEN;

valueList.add(value);
TiIndicator value1 = new TiIndicator();
LinkedList<String> activityGroupNamesList1 = new LinkedList<String>();
value1.activityGroupNames = activityGroupNamesList1;
value1.confidence = 0;
value1.description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.";
value1.expirationDateTime = CalendarSerializer.deserialize("2019-03-01T21:44:03.1748779+00:00");
value1.externalId = "Test--8586509942423126760MS164-1";
value1.fileHashType = FileHashType.SHA256;
value1.fileHashValue = "1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b";
LinkedList<String> killChainList1 = new LinkedList<String>();
value1.killChain = killChainList1;
LinkedList<String> malwareFamilyNamesList1 = new LinkedList<String>();
value1.malwareFamilyNames = malwareFamilyNamesList1;
value1.severity = 0;
LinkedList<String> tagsList1 = new LinkedList<String>();
value1.tags = tagsList1;
value1.targetProduct = "Azure Sentinel";
value1.threatType = "WatchList";
value1.tlpLevel = TlpLevel.GREEN;

valueList.add(value1);
TiIndicatorCollectionResponse tiIndicatorCollectionResponse = new TiIndicatorCollectionResponse();
tiIndicatorCollectionResponse.value = valueList;
TiIndicatorCollectionPage tiIndicatorCollectionPage = new TiIndicatorCollectionPage(tiIndicatorCollectionResponse, null);

graphClient.security().tiIndicators()
	.submitTiIndicators(valueList)
	.buildRequest()
	.post();

```