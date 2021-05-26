---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NoncustodialDataSource noncustodialDataSource = new NoncustodialDataSource();
noncustodialDataSource.applyHoldToSource = true;
UserSource dataSource = new UserSource();
dataSource.email = "adelev@contoso.com";
noncustodialDataSource.dataSource = dataSource;

graphClient.compliance().ediscovery().cases("5b840b94-f821-4c4a-8cad-3a90062bf51a").noncustodialDataSources()
	.buildRequest()
	.post(noncustodialDataSource);

```