---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().mobileAppManagementPolicies("ab90bacf-55a3-4a3e-839a-aa4b74e4f020").includedGroups("1a9db3ab-0acf-4808-99ae-e8ed581cb2e0").reference()
	.buildRequest()
	.delete();

```