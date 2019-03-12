#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drive = await graphClient.Groups.Groups.Drive.Request().GetAsync();
*** 

```