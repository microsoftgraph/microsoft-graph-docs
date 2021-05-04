---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignmentCollectionPage appRoleAssignedTo = graphClient.servicePrincipals("8e881353-1735-45af-af21-ee1344582a4d").appRoleAssignedTo()
	.buildRequest()
	.get();

```