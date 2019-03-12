#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var special = await graphClient.Me.Drive.Special.Special.Request().GetAsync();
*** 

```