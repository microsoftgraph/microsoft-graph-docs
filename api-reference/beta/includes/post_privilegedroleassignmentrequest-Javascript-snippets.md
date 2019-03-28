
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

const privilegedRoleAssignmentRequests = {
    duration: "2",
    reason: "Activate the role for business purpose",
    ticketNumber: "234",
    ticketSystem: "system",
    schedule: {
        startDateTime: "2018-02-08T02:35:17.903Z"
    },
    evaluateOnly: false,
    type: "UserAdd",
    assignmentState: "Active",
    roleId: "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
}
;

client.api('/privilegedRoleAssignmentRequests')
	.version('beta').post({privilegedRoleAssignmentRequest : privilegedRoleAssignmentRequests});

```