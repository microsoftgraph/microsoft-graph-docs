#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var manager = await graphClient.Contacts.Contacts.Manager.Request().GetAsync();
*** 

```