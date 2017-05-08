# Featured scenarios for Microsoft Graph

Check out some common and features scenarios for working with the Microsoft Graph API. Try out some of the popular requests listed in the following table. The links take you to our [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).


## Popular requests
| **Operation**	| **URL** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	[`https://graph.microsoft.com/v1.0/me`](https://graph.microsoft.io/en-us/graph-explorer/?request=me&version=v1.0) |
|   GET my files | [`https://graph.microsoft.com/v1.0/me/drive/root/children`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren&version=v1.0) |
|   GET my photo | [`https://graph.microsoft.com/v1.0/me/photo/$value`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fphoto%2F%24value&version=v1.0) |
|   GET my mail |	[`https://graph.microsoft.com/v1.0/me/messages`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmessages&version=v1.0) |
|   GET my high importance email | [`https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmessages%3F%24filter%3Dimportance%2520eq%2520'high'&version=v1.0) |
|   GET my calendar events |	[`https://graph.microsoft.com/v1.0/me/events`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fevents&version=v1.0) |
|   GET my manager	| [`https://graph.microsoft.com/v1.0/me/manager`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmanager&version=v1.0) |
|   GET last user to modify file foo.txt |	[`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren%2Ffoo.txt%2FlastModifiedByUser&version=v1.0) |
|   GET Office365 groups I’m member of|	[`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2FmemberOf%2F%24%2Fmicrosoft.graph.group%3F%24filter%3DgroupTypes%2Fany(a%3Aa%2520eq%2520'unified')&version=v1.0) |
|   GET users in my organization	 | [`https://graph.microsoft.com/v1.0/users`](https://graph.microsoft.io/en-us/graph-explorer/?request=users&version=v1.0) |
|   GET groups in my organization |	[`https://graph.microsoft.com/v1.0/groups`](https://graph.microsoft.io/en-us/graph-explorer/?request=groups&version=v1.0) |
|   GET people related to me	| [`https://graph.microsoft.com/beta/me/people`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fpeople&version=beta)  |
|   GET items trending around me |	[`https://graph.microsoft.com/beta/me/insights/trending`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Finsights%2Ftrending&version=beta) |
|   GET my tasks	| [`https://graph.microsoft.com/beta/me/tasks`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Ftasks&version=beta) |
<!--|   GET my notes |	[`https://graph.microsoft.com/beta/me/notes/notebooks`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fnotes%2Fnotebooks&version=beta) | -->

## Next steps

Check out the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer), and try our [Quick Start](https://developer.microsoft.com/en-us/graph/quick-start) to get up and running fast. Learn more about how to [use the API](use_the_api.md) to build your first app.