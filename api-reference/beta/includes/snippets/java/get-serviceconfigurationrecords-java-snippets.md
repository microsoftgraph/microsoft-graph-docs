---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDomainDnsRecordCollectionPage serviceConfigurationRecords = graphClient.domains("contoso.com").serviceConfigurationRecords()
	.buildRequest()
	.get();

```