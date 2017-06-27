# Microsoft Graph API beta endpoint reference

The reference content in this section documents the Microsoft Graph beta endpoint. The beta endpoint includes APIs that are currently in preview and are not yet generally available. We invite you to try these APIs and provide your feedback via the following channels:

- [GitHub](https://github.com/OfficeDev/microsoft-graph-docs/issues) - For feedback on the Preview APIs. Tag with `beta`.
- [StackOverflow](http://stackoverflow.com/questions/tagged/microsoftgraph) - For questions or help with your code. Tag with `microsoftgraph`.

## Considerations

While working with the Intune Graph APIs, remember:

1.  The APIs in the beta endpoint are subject to change. We recommend against using them in production apps. 

1.  A license for the Intune service is required to use the Microsoft Graph APIs to configure Intune controls and policies.

1.  For mobile device management (MDM) scenarios, Graph APIs support Intune standalone environments; [hybrid environments](https://docs.microsoft.com/en-us/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported.

##  Call Graph API endpoints

Use the following pattern to call Graph API endpoints:

```
	https://graph.microsoft.com/beta/{resource}?[query_parameters]
```

To learn more, see [Use the Microsoft Graph API](https://developer.microsoft.com/en-us/graph/docs/concepts/use_the_api).

## See also
- [How to use Azure AD to access the Intune Graph API](https://docs.microsoft.com/en-us/intune/intune-graph-apis)
- [Overview of Microsoft Graph](https://developer.microsoft.com/en-us/graph/docs/overview/overview)
- [Microsoft Graph explorer](https://graph.microsoft.io/en-us/graph-explorer)
- [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started)

