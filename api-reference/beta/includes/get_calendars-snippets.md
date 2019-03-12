#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendars = await graphClient.Me.Calendars.Request().GetAsync();
*** 

```