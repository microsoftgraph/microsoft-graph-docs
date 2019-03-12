#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contacts = await graphClient.Me.ContactFolders.ContactFolders.Contacts.Contacts.Request().GetAsync();
*** 

```