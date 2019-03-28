
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var replacesCallId = "replacesCallId-value";

var region = "region-value";

var languageId = "languageId-value";

//create instance of InvitationParticipantInfo
var user = new InvitationParticipantInfo
{
	Id = "550fae72-d251-43ec-868c-373732c2704f",
	TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
	DisplayName = "Heidi Steen",
};

//create instance of InvitationParticipantInfo
var identity = new InvitationParticipantInfo
{
	User = user,
};

var endpointType = "default";

//create InvitationParticipantInfo list and populate it
var participants = new List<InvitationParticipantInfo>();
participants.Add(new InvitationParticipantInfo(endpointType,identity,languageId,region,replacesCallId));

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"].Participants
	.invite(participants,clientContext);
	.Request()
	.PostAsync()

```