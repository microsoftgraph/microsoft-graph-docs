#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messageRules = await graphClient.Me.MailFolders.MailFolders.MessageRules.Request().GetAsync();

```