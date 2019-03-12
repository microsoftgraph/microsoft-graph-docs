#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailboxSettings = await graphClient.Me.MailboxSettings.Request().GetAsync();

```