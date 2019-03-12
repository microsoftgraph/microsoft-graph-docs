#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contacts = await graphClient.Contacts.Request().GetAsync();
*** 

```