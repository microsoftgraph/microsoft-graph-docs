#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contactFolders = await graphClient.Me.ContactFolders.Request().GetAsync();
*** 

```