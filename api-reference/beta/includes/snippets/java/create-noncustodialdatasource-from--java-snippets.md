---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NoncustodialDataSource noncustodialDataSource = new NoncustodialDataSource();
noncustodialDataSource.additionalDataManager().put("@odata.id", new JsonPrimitive("https://canary.graph.microsoft.com/testprodbetancsdsaslist/compliance/ediscovery/cases/06d52284-ed81-49b8-904a-b863d3164731/noncustodialDataSources/39383530323537383742433232433246"));

graphClient.compliance().ediscovery().cases("06d52284-ed81-49b8-904a-b863d3164731").sourceCollections("12aab1671c834213a84ba219c06f4c5a").noncustodialSources().references()
	.buildRequest()
	.post(noncustodialDataSource);

```