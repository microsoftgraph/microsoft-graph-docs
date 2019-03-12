#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schools = await graphClient.Education.Me.Schools.Request().GetAsync();
*** 

```