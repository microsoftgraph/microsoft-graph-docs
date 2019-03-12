#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var members = await graphClient.Groups.Groups.Members.Request().GetAsync();
*** 

```