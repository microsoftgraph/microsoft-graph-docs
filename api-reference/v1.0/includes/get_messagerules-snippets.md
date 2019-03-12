#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messageRules = await graphClient.Me.MailFolders.MailFolders.MessageRules.Request().GetAsync();
*** 

```