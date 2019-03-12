#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMembers = await graphClient.Groups.Groups.TransitiveMembers.Request().GetAsync();
*** 

```