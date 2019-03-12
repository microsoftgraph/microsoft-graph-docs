#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMembers = await graphClient.Groups.Groups.TransitiveMembers.Request().GetAsync();
*** 

```