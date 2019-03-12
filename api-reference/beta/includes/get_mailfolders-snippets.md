#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var mailFolders = await graphClient.Me.MailFolders.Request().GetAsync();
*** 

```