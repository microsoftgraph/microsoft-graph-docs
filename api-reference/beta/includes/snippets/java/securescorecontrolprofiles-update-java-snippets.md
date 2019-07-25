---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecureScoreControlProfile secureScoreControlProfile = new SecureScoreControlProfile();
secureScoreControlProfile.controlStateUpdates = "controlStateUpdates-value";

graphClient.security().secureScoreControlProfiles("AdminMFA")
	.buildRequest()
	.patch(secureScoreControlProfile);

```