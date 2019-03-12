#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contactFolders = await graphClient.Me.ContactFolders.Request().GetAsync();
*** 

```