#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programs = await graphClient.Programs.Request().GetAsync();
*** 

```