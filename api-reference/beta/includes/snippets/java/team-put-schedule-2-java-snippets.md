---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] schedule = Base64.getDecoder().decode("{   "enabled":true,   "timeZone":"America/Chicago",   "provisionStatus":"Completed",   "provisionStatusCode":null,   "openShiftsEnabled":true,   "swapShiftsRequestsEnabled":true,   "offerShiftRequestsEnabled":true,   "timeOffRequestsEnabled":true,   "timeClockEnabled":true,   "timeClockSettings":{      "approvedLocation":{         "altitude":1024.13,         "latitude":26.13246,         "longitude":24.34616      }   }} ");
	graphClient.teams("871dbd5c-3a6a-4392-bfe1-042452793a50").schedule()
	.buildRequest()
	.put(schedule);

```