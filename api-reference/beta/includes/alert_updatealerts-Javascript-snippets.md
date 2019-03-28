
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

const updateAlerts = {
  value: [
    {
      assignedTo: "String",
      closedDateTime: "String (timestamp)",
      comments: ["String"],
      feedback: "@odata.type: microsoft.graph.alertFeedback",
      id: "String (identifier)",
      status: "@odata.type: microsoft.graph.alertStatus",
      tags: ["String"],
      vendorInformation:
        {
          provider: "String",
          vendor: "String"
        }
    }
  ]
}
;

client.api('/security/alerts/updateAlerts')
	.version('beta').post({alert : updateAlerts});

```