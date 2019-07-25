---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "feature eq 'registration'"));

ICredentialUsageSummaryCollectionPage getCredentialUsageSummary = graphClient.reports()
	.getCredentialUsageSummary('D30')
	.buildRequest( requestOptions )
	.get();

```