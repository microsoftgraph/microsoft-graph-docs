#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Me.Drive.Items.Items.Versions.Versions.Request().GetAsync();
*** 

```