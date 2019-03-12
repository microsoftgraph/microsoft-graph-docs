#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailboxSettings = await graphClient.Me.MailboxSettings.Request().GetAsync();
*** 

```