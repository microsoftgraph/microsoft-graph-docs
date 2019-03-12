#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailFolders = await graphClient.Me.MailFolders.Request().GetAsync();
*** 

```