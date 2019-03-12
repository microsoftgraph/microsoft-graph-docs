#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailboxSettings = await graphClient.Me.MailboxSettings.Request().GetAsync();
*** 

```