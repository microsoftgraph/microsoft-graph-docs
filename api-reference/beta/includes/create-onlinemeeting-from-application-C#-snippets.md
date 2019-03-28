
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Identity
var user = new Identity
{
	Id = "550fae72-d251-43ec-868c-373732c2704f",
};

//create instance of IdentitySet
var identity = new IdentitySet
{
	User = user,
};

//create instance of MeetingParticipantInfo
var organizer = new MeetingParticipantInfo
{
	Identity = identity,
};

//create instance of MeetingParticipants
var participants = new MeetingParticipants
{
	Organizer = organizer,
};

//create instance of OnlineMeeting
var onlineMeetings = new OnlineMeeting
{
	MeetingType = "meetNow",
	Participants = participants,
	Subject = "subject-value",
};

await graphClient.App.OnlineMeetings
	.Request()
	.AddAsync(onlineMeetings);

```