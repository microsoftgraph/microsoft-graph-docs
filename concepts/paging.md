
# Paging Microsoft Graph data in your app 
 
When Microsoft Graph requests return too much information to show on one page, you can use paging to break the information into manageable chunks. 

You can page forward and backward in Microsoft Graph responses. A response that contains paged results will include a skip token (**odata.nextLink**) that allows you to get the next page of results. This skip token can be combined with a **previous-page=true** query argument to page backward.

The follow request example shows paging forward:

```
https://graph.microsoft.com/v1.0/users?$top=5$skiptoken=X'4453707402.....0000'
```
The **$skiptoken** parameter from the previous response is included, and allows you to get the next page of results.

The following request example shows paging backward:

```
https://graph.microsoft.com/v1.0/users?$top=5$skiptoken=X'4453707.....00000'&previous-page=true
```
The **$skiptoken** parameter from the previous response is included. When this is combined with the **&previous-page=true** parameter, the previous page of results will be retrieved.

The following are the request/response steps to page forward and backward:

1. A request is made to get a list of the first 10 users out of 15. The response contains a skip token to indicate the final page of 10 users.
2. To get the final 5 users, another request is made that contains the skip token returned from the previous response.
3. To page backward, a request is made using the skip token returned in step 1 and the parameter **&previous-page=true** is added to the request.
4. The response contains the previous (first) page of 10 users. In a different scenario where more pages are left, a new skip token would be returned. This new skip token can be added to the request along with **&previous-page=true** to page backward again.

The following restrictions apply to paged requests:

- The default page size is 100. The maximum page size is 999.
- Queries against roles do not support paging. This includes reading role objects themselves as well as role members.
- Paging is not supported for link searches, such as for querying group members.
