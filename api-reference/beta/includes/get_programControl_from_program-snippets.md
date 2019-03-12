#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var controls = await graphClient.Programs.Programs.Controls.Request().GetAsync();
*** 

```