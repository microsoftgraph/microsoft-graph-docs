---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalConnection externalConnection = new ExternalConnection();
externalConnection.name = "Contoso HR Service Tickets";
externalConnection.description = "Connection to index HR service tickets";

graphClient.connections("contosohr")
	.buildRequest()
	.patch(externalConnection);

```