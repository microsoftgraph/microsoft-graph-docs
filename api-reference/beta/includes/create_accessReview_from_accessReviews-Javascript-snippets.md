
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

const accessReviews = {
    displayName:"TestReview",
    startDateTime:"2017-02-10T00:35:53.214Z",
    endDateTime:"2017-03-12T00:35:53.214Z",
    reviewedEntity: {
        id: "99025615-a0b1-47ec-9117-35377b10998b",
    },
    "reviewerType" : "delegated",
    businessFlowTemplateId: "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    description:"Sample description",
    reviewers:
    [
        {
            id:"f260246a-09b1-4fd5-8d18-daed736071ec"
        },
        {
            id:"5a4e184c-4ee5-4883-96e9-b371f8da88e3"
        }
    ],
    settings:
    {
        mailNotificationsEnabled: true,
        remindersEnabled: true,
        justificationRequiredOnApproval:true,
        autoReviewEnabled:false,
        activityDurationInDays:30,
        autoApplyReviewResultsEnabled:false,
        accessRecommendationsEnabled:false,
        recurrenceSettings:{
            recurrenceType:"onetime",
            recurrenceEndType:"endBy",
            durationInDays:0,
            recurrenceCount:0
        },
        autoReviewSettings:{
            notReviewedResult:"Deny"
        }
    }
}
;

client.api('/accessReviews')
	.version('beta').post({accessReview : accessReviews});

```