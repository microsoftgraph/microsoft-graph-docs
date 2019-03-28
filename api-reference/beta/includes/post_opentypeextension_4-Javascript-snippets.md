
```Javascript

// Some callback function
const authProvider: AuthProvider = (callback: AuthProviderCallback) => { 
	// Your logic for getting and refreshing accessToken 
	// Error should be passed in case of error while authenticating 
	// accessToken should be passed upon successful authentication 
	callback(error, accessToken);
};

let options: Options = {
		authProvider,
};

const client = Client.init(options);

const reply = {
  post: {
    body: {
      contentType: "html",
      content: "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
    },
  extensions: [
    {
      @odata.type: "Microsoft.OutlookServices.OpenTypeExtension",
      extensionName: "Com.Contoso.HR",
      companyName: "Contoso",
      expirationDate: "2015-07-03T13:04:00.000Z",
      topPicks: [
        "Employees only",
        "Add spouse or guest",
        "Add family"
      ]
    }
  ]
  }
}
;

client.api('/groups('37df2ff0-0de0-4c33-8aee-75289364aef6')/threads('AAQkADJizZJpEWwqDHsEpV_KA==')/posts('AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA=')/reply')
	.version('beta').post({post : reply});

```