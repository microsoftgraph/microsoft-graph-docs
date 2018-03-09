# Manage sessions and persistence in Excel with Microsoft Graph

If your application needs to make more than one or two calls to the Excel API, you should create a session and pass the session Id with each request. The presence of a session Id in the requests ensures that you are using the Excel API in the most efficient way possible.

Excel APIs can be called in one of three modes: 

1. Persistent session: All changes made to the workbook are persisted (saved) to the workbook. This is the most efficient and best-performing way of using the Excel API. 
2. Non-persistent session: Changes made by the API are not saved to the source location. Instead, the Excel backend server keeps a temporary copy of the file that reflects the changes made during that particular API session. When the Excel session expires, the changes are lost. This mode is useful for apps that need to do analysis or obtain the results of a calculation or a chart image, but do not need to affect the document state. 
3. Sessionless: The API calls do not pass a session Id. The Excel servers have to locate the server's copy of the workbook for each operation. This is not an efficient way to call the Excel API, but it is suitable for making one-off requests. 

To represent the session in the API, use the `workbook-session-id: {session-id}` header. 

>**Note:** The session header is not required for an Excel API to work. However, we recommend that you use the session header to improve performance. If you don't use a session header, changes made during the API call _are_ persisted to the file.  

See the [Create session reference topic](../api-reference/v1.0/api/workbook_createsession.md) to learn how to create and use sessions.