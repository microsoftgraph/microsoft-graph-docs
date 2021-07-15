---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = new AccessPackage();
accessPackage.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2"));

graphClient.identityGovernance().entitlementManagement().accessPackages("{id}").incompatibleAccessPackages().references()
	.buildRequest()
	.post(accessPackage);

```