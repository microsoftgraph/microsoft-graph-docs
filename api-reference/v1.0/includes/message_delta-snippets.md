#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.MailFolders.MailFolders.Messages.Messages.Request().GetAsync();
*** 

```