# Intune devices and apps API overview

Microsoft Intune helps enterprises manage devices and apps within an organization. You can use the Intune API in Microsoft Graph to manage devices, apps, and even configure Intune while using your preferred tools. 

If you're an ISV, you can also use the Intune API to manage client tenants.

## Why integrate with Intune?

You can use the Intune API in Microsoft Graph to access Intune device and application information, manage devices, manage apps, and automate Intune.

### Manage devices

You can use the Intune API to:

- Define and enforce [device compliance](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceactionitem.md) policies, such as password complexity and duration, encryption, threat protection levels, and so on.  (Supported policies vary according to operating system and version).
- [Protect company data](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionpolicy.md), regardless of whether the device platform is Windows, Android, Mac, or iOS.
- Create and deploy [device configuration](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfiguration.md) policies, including operating system platform/versioning, domain membership, and configuration setting management.
- Create and deploy device [access control](../api-reference/v1.0/resources/intune_onboarding_onpremisesconditionalaccesssettings.md) policies, including restricted download, network accessory access, and file transfer.
- Perform [remote actions](../api-reference/v1.0/resources/intune_devices_manageddevice.md), such as locate device, change password, and wipe device.

### Manage apps 

You can use the Intune API to perform the following app management tasks:

- Deploy [apps to devices](../api-reference/v1.0/resources/intune_apps_mobileapp.md) or prevent apps from being deployed.
- Manage access to [ebooks](../api-reference/v1.0/resources/intune_books_ebookinstallsummary.md) and related services.
- Define and deploy app configuration settings, app protection settings, and app usage policies.

### Automate Intune

Automate Intune by using the Intune API to:

- Define and assign [role based](../api-reference/v1.0/resources/intune_rbac_conceptual.md) access controls.
- Audit and report compliance, usage, and access.
- Manage [telecom expenses](../api-reference/v1.0/resources/intune_tem_conceptual.md).

## API reference
Looking for the API reference for this service?

- [Intune API in Microsoft Graph v1.0](../api-reference/v1.0/resources/intune_graph_overview.md)
- [Intune API in Microsoft Graph beta](../api-reference/beta/resources/intune_graph_overview.md)

## Next steps

- [Use Azure AD to access the Intune API](https://docs.microsoft.com/intune/intune-graph-apis).
- See how to perform common tasks by using the [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples).
- Find out how to [use the Intune REST API](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/intune_graph_overview).
- See the [Changelog](changelog.md) for information about what's new in the Intune API.
- Explore [examples](https://developer.microsoft.com/en-us/graph/graph/examples) for more ideas about how to use Microsoft Graph.
