#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var following = await graphClient.Me.Drive.Following.Request().GetAsync();
*** 

```