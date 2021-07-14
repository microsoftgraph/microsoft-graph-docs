---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

using var schedule = new System.IO.MemoryStream(Encoding.UTF8.GetBytes(@"{
   ""enabled"":true,
   ""timeZone"":""America/Chicago"",
   ""provisionStatus"":""Completed"",
   ""provisionStatusCode"":null,
   ""openShiftsEnabled"":true,
   ""swapShiftsRequestsEnabled"":true,
   ""offerShiftRequestsEnabled"":true,
   ""timeOffRequestsEnabled"":true,
   ""timeClockEnabled"":true,
   ""timeClockSettings"":{
      ""approvedLocation"":{
         ""altitude"":1024.13,
         ""latitude"":26.13246,
         ""longitude"":24.34616
      }
   }
}"));

await graphClient.Teams["{team-id}"].Schedule
	.Request()
	.PutAsync<Team>(schedule);

```