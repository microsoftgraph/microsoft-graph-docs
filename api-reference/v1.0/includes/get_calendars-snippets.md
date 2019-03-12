#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendars = await graphClient.Me.Calendars.Request().GetAsync();

```