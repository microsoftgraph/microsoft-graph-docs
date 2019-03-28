
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
      contentType: "",
      content: "content-value"
    },
    receivedDateTime: "2016-10-19T10:37:00Z",
    hasAttachments: true,
    from: {
      emailAddress: {
        name: "name-value",
        address: "address-value"
      }
    },
    sender: {
      emailAddress: {
        name: "name-value",
        address: "address-value"
      }
    },
    conversationThreadId: "conversationThreadId-value",
    newParticipants: [
      {
        emailAddress: {
          name: "name-value",
          address: "address-value"
        }
      }
    ],
    conversationId: "conversationId-value",
    createdDateTime: "2016-10-19T10:37:00Z",
    lastModifiedDateTime: "2016-10-19T10:37:00Z",
    changeKey: "changeKey-value",
    categories: [
      "categories-value"
    ],
    id: "id-value",
    inReplyTo: {
    },
    attachments: [
      {
        lastModifiedDateTime: "2016-10-19T10:37:00Z",
        name: "name-value",
        contentType: "contentType-value",
        size: 99,
        isInline: true,
        id: "id-value"
      }
    ]
  }
}
;

client.api('/groups/{id}/threads/{id}/posts/{id}/reply')
	.version('beta').post({post : reply});

```