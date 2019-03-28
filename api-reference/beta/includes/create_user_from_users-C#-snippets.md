
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Invitation
var invitations = new Invitation
{
	InvitedUserEmailAddress = "yyy@test.com",
	InviteRedirectUrl = "https://myapp.com",
};

await graphClient.Invitations
	.Request()
	.AddAsync(invitations);

```