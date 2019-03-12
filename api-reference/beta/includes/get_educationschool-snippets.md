#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schools = await graphClient.Education.Schools.Schools.Request().GetAsync();
*** 

```