#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sort = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Sort.Request().GetAsync();
*** 

```