#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailFolders = await graphClient.Me.MailFolders.MailFolders.Request().GetAsync();

```