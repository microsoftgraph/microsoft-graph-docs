---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Domain domain = new Domain();
domain.isDefault = true;
LinkedList<String> supportedServicesList = new LinkedList<String>();
supportedServicesList.add("Email");
supportedServicesList.add("OfficeCommunicationsOnline");
domain.supportedServices = supportedServicesList;

graphClient.domains("contoso.com")
	.buildRequest()
	.patch(domain);

```