---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DataSource dataSource = graphClient.compliance().ediscovery().cases("5b840b94-f821-4c4a-8cad-3a90062bf51a").noncustodialDataSources("8e402dd7f3c94a3abc086e5d07db1c6d").dataSource()
	.buildRequest()
	.get();

```