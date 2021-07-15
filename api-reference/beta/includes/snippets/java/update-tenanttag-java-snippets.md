---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantTag tenantTag = new TenantTag();
tenantTag.displayName = "Onboarding";
tenantTag.description = "Tenants that we are currently onboarding";

graphClient.tenantRelationships().managedTenants().tenantTags("{tenantTagId}")
	.buildRequest()
	.patch(tenantTag);

```