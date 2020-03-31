---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attendees = new List<AttendeeBase>()
{
	new AttendeeBase
	{
		Type = AttendeeType.Required,
		EmailAddress = new EmailAddress
		{
			Name = "Alex Wilbur",
			Address = "alexw@contoso.onmicrosoft.com"
		}
	}
};

var locationConstraint = new LocationConstraint
{
	IsRequired = false,
	SuggestLocation = false,
	Locations = new List<LocationConstraintItem>()
	{
		new LocationConstraintItem
		{
			ResolveAvailability = false,
			DisplayName = "Conf room Hood"
		}
	}
};

var timeConstraint = new TimeConstraint
{
	ActivityDomain = ActivityDomain.Work,
	Timeslots = new List<TimeSlot>()
	{
		new TimeSlot
		{
			Start = new DateTimeTimeZone
			{
				DateTime = "2019-04-16T09:00:00",
				TimeZone = "Pacific Standard Time"
			},
			End = new DateTimeTimeZone
			{
				DateTime = "2019-04-18T17:00:00",
				TimeZone = "Pacific Standard Time"
			}
		}
	}
};

var isOrganizerOptional = false;

var meetingDuration = "PT1H";

var returnSuggestionReasons = true;

var minimumAttendeePercentage = "100";

await graphClient.Me
	.FindMeetingTimes(attendees,locationConstraint,timeConstraint,meetingDuration,null,isOrganizerOptional,returnSuggestionReasons,minimumAttendeePercentage)
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.PostAsync();

```