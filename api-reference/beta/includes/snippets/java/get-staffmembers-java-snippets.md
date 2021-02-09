---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IBookingStaffMemberCollectionPage staffMembers = graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").staffMembers()
	.buildRequest()
	.get();

```