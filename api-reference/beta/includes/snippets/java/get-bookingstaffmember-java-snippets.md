---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingStaffMember bookingStaffMember = graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").staffMembers("71d64d0e-7225-49b6-b0b1-070d476cda51")
	.buildRequest()
	.get();

```