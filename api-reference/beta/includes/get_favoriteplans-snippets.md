#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var favoritePlans = await graphClient.Me.Planner.FavoritePlans.Request().GetAsync();
*** 

```