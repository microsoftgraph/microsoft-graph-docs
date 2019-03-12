#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drive = await graphClient.Users.Users.Drive.Request().GetAsync();
*** 

```