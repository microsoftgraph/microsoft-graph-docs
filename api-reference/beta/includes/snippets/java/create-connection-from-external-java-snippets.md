---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalConnection externalConnection = new ExternalConnection();
externalConnection.id = "contosohr";
externalConnection.name = "Contoso HR";
externalConnection.description = "Connection to index Contoso HR system";

graphClient.external().connections()
	.buildRequest()
	.post(externalConnection);

```