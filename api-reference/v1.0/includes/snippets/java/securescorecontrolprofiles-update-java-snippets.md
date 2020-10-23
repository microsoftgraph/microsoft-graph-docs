---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecureScoreControlProfile secureScoreControlProfile = new SecureScoreControlProfile();
secureScoreControlProfile.assignedTo = "";
secureScoreControlProfile.comment = "control is reviewed";
secureScoreControlProfile.state = "Reviewed";
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.provider = "SecureScore";
vendorInformation.providerVersion = null;
vendorInformation.subProvider = null;
vendorInformation.vendor = "Microsoft";
secureScoreControlProfile.vendorInformation = vendorInformation;

graphClient.security().secureScoreControlProfiles("NonOwnerAccess")
	.buildRequest()
	.patch(secureScoreControlProfile);

```