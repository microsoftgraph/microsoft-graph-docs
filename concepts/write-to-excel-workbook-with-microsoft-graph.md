# Write data to an Excel workbook with Microsoft Graph

The Excel REST API provides an easy, platform-agnostic way to upload information to an Excel workbook. This topic shows you how to write simple data sets to an Excel workbook on three web development frameworks: ASP.NET, Angular, and React. You can look at the code samples featured in this topic by visiting the [Microsoft Graph Excel starter samples on GitHub](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=excelstarter).

> Note: All three of the samples write data to an Excel workbook named **demo.xlxs**. They provide this workbook for you so that you can upload it to your own OneDrive, but you can also use Microsoft Graph to upload files to OneDrive. If you're interested in learning the REST calls that you need to make in order to upload a file of any type to your root OneDrive folder, see the [Microsoft Graph Excel REST API ASP.NET to-do list sample](https://github.com/microsoftgraph/aspnet-todo-rest-sample).

All three of the Excel starter samples do the same thing: retrieve the name and address of the signed-in user and add those two pieces of information to a new row in the **demo.xlsx** workbook. You can modify the samples to add additional rows simply by adding information to the two-dimensional array that represents the row or rows that you want to add.

## Add a row or rows to an Excel workbook with a single REST request

The two Excel REST API requires you to POST a simple request body to the REST endpoint that represents the row collection of an Excel workbook. If you're working with a notebook in the root folder of the signed-in user's OneDrive account, the REST endpoint will look like this:

`https://graph.microsoft.com/v1.0/me/drive/root:/demo.xlsx:/workbook/tables/Table1/rows/add`

For more information about how to reach files in OneDrive folders, see the [DriveItem resource type](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/driveitem) in our reference documentation.

> Note: You can look at the existing row collection of the workbook by making a GET request to the part of the path that ends at `/rows`.

The POST body looks like this:

`{
  "index": null,
  "values": [
    ['alex darrow', 'adarrow@tenant.onmicrosoft.com']
  ]
}`

The value of the first `index` parameter specifies the relative position of the row that you're adding to the zero-indexed array of rows. Rows below the inserted row will be shifted downwards. The `null` parameter indicates that the new row should be added to the end.

The value of the second `values` parameter is a two-dimensional string array that contains the unformatted values of each row that you want to add. The array in the sample contains only one row, but you can add more rows by adding more string arrays.

You can test this query with your own OneDrive account by uploading the demo.xlsx file to your OneDrive root folder and executing this query on the [Microsoft Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

That is all you need to know in order to write data to an Excel workbook. You do need to know how to construct and make the request in your own framework, and the Excel starter samples demonstrate three separate ways of doing this.

## Add a row or rows to an Excel workbook in ASP.NET

You'll find the ASP.NET code that constructs and sends the request in the [GraphResources.cs](https://github.com/microsoftgraph/aspnet-excelstarter-sample/blob/master/Microsoft%20Graph%20Excel%20REST%20ASPNET/Models/GraphResources.cs) and [GraphService.cs](https://github.com/microsoftgraph/aspnet-excelstarter-sample/blob/master/Microsoft%20Graph%20Excel%20REST%20ASPNET/Models/GraphService.cs) files of the [Microsoft Graph Excel Starter Sample for ASP.NET 4.6](https://github.com/microsoftgraph/aspnet-excelstarter-sample). 

The `GraphResources.cs` file provides a helper class for encapsulating both the user data you're retrieving from Microsoft Graph and the request body that you'll use when you write to your workbook.

    public class UserInfo
    {
        public string Name { get; set; }
        public string Address { get; set; }

    }

    public class UserInfoRequest
    {
        public string index { get; set; }
        public string[][] values { get; set; }
    }

The `GraphService.cs` class contains an `AddInfoToExcel` method that populates these classes, serializes the request information into a JSON object, and then passes that object as the POST request body.

        public async Task<string> AddInfoToExcel(string accessToken, string name, string address)
        {
            string endpoint = "https://graph.microsoft.com/v1.0/me/drive/root:/demo.xlsx:/workbook/tables/Table1/rows/add";
            using (var client = new HttpClient())
            {
                using (var request = new HttpRequestMessage(HttpMethod.Post, endpoint))
                {
                    // Populate UserInfoRequest object
                    string[] userInfo = { name, address  };
                    string[][] userInfoArray = { userInfo };
                    UserInfoRequest userInfoRequest = new UserInfoRequest();
                    userInfoRequest.index = null;
                    userInfoRequest.values = userInfoArray;
                    
                    // Serialize the information in the UserInfoRequest object
                    string jsonBody = JsonConvert.SerializeObject(userInfoRequest);
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                    request.Content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    using (var response = await client.SendAsync(request))
                    {
                        if (response.IsSuccessStatusCode)
                        {
                            return Resource.Graph_UploadToExcel_Success_Result;
                        }
                        return response.ReasonPhrase;
                    }
                }
            }
        }

## Add a row or rows to an Excel workbook in Angular

You'll find the Angular code that constructs and sends the request in the [home.service.ts file](https://github.com/microsoftgraph/angular-excelstarter-sample/blob/master/src/app/home/home.service.ts) of the [Microsoft Graph Excel Starter Sample for Angular](https://github.com/microsoftgraph/angular-excelstarter-sample).

Since this sample uses TypeScript, it takes advantage of the [Microsoft Graph JavaScript Client Library](https://github.com/microsoftgraph/msgraph-sdk-javascript) and the [
Microsoft Graph TypeScript Types](https://github.com/microsoftgraph/msgraph-typescript-typings).

The `addInfoToExcel` function in the `home.service.ts` file constructs the two-dimensional string array and the request body that contains the array. It then uses the Microsoft Graph JavaScript Client Library to construct and send the request. The response comes back in the form of a Promise.

      addInfoToExcel(user: MicrosoftGraph.User) {
        const userInfo = [];
        const userEmail = user.mail || user.userPrincipalName;    
        userInfo.push([user.displayName, userEmail]);
      
        const userInfoRequestBody = {
          index: null,
          values: userInfo
        };   
    
        const body = JSON.stringify(userInfoRequestBody);
    
        var client = this.getClient();
        var url = `${this.url}/me/drive/root:/${this.file}:/workbook/tables/${this.table}/rows/add`
        return Observable.fromPromise(client
        .api(url)
        .post(body) 
        );
      }

## Add a row or rows to an Excel workbook in React

You'll find the code that constructs and sends the request in the [home.js file](https://github.com/microsoftgraph/react-excelstarter-sample/blob/master/src/home/home.js) of the [Microsoft Graph Excel Starter Sample for React](https://github.com/microsoftgraph/react-excelstarter-sample).

The `onWriteToExcel` function constructs the two-dimensional string array and passes it as the request body. It uses [axios](https://www.npmjs.com/package/axios) to make the HTTP request.

      onWriteToExcel() {
        const { token, me } = this.state;
    
        const myEmailAddress = me.mail || me.userPrincipalName;
        const values = [];
    
        values.push([me.displayName, myEmailAddress]);
    
        axios
          .post('https://graph.microsoft.com/v1.0/me/drive/root:/demo.xlsx:/workbook/tables/Table1/rows/add',
            { index: null, values },
            { headers: { Authorization: `Bearer ${token}` }}
          )
          .then(res => { 
                          console.log(res);
                          const successMessage = "Successfully wrote your data to demo.xlsx!";
                          this.setState ({ successMessage });
                         })
          .catch(err => console.error(err));
      }