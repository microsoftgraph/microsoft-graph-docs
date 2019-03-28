
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

const roleAssignmentRequests = {
  roleDefinitionId: "0e88fd18-50f5-4ee1-9104-01c3ed910065",
  resourceId: "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
  subjectId: "74765671-9ca4-40d7-9e36-2f4a570608a6",
  assignmentState: "Eligible",
  type: "AdminExtend",
  reason: "extend role assignment",
  schedule: {
    type: "Once",
    startDateTime: "2018-05-12T23:53:55.327Z",
    endDateTime: "2018-08-10T23:53:55.327Z"
  }
}
;

client.api('/privilegedAccess/azureResources/roleAssignmentRequests')
	.version('beta').post({governanceRoleAssignmentRequest : roleAssignmentRequests});

```