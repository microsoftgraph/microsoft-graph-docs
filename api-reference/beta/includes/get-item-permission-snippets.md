#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var permissions = await graphClient.Me.Drive.Items.Items.Permissions.Permissions.Request().GetAsync();
*** 

```