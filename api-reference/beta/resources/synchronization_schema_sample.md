# Synchronization schema sample

```json
{
    "directories": [
        {
            "id": "66e4a8cc-1b7b-435e-95f8-f06cea133828",
            "name": "Azure Active Directory",
            "objects": [
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "objectId",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "IsSoftDeleted",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "accountEnabled",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "streetAddress",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "city",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "state",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "postalCode",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "country",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "companyName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "department",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "dirSyncEnabled",
                            "required": false,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "displayName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"objectId\"},{\"name\":\"id\",\"required\":true},{\"metadata\":[{\"key\":\"ComplexObjectDefinition\",\"value\":\"{\\\"definition\\\":{\\\"attributes\\\":[{\\\"anchor\\\":true,\\\"name\\\":\\\"id\\\",\\\"required\\\":true},{\\\"multivalued\\\":true,\\\"name\\\":\\\"allowedMemberTypes\\\",\\\"required\\\":true},{\\\"name\\\":\\\"description\\\",\\\"required\\\":true},{\\\"name\\\":\\\"displayName\\\",\\\"required\\\":true},{\\\"name\\\":\\\"isEnabled\\\",\\\"required\\\":true,\\\"type\\\":\\\"Boolean\\\"},{\\\"name\\\":\\\"origin\\\"},{\\\"name\\\":\\\"value\\\"}],\\\"metadata\\\":[{\\\"key\\\":\\\"IsSoftDeletionSupported\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"ConnectorDataStorageRequired\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"IsSynchronizeAllSupported\\\",\\\"value\\\":\\\"false\\\"}],\\\"name\\\":\\\"AppRole\\\"},\\\"mapping\\\":{\\\"attributeMappings\\\":[{\\\"defaultValue\\\":\\\"User\\\",\\\"targetAttributeName\\\":\\\"allowedMemberTypes\\\"},{\\\"defaultValue\\\":\\\".\\\",\\\"targetAttributeName\\\":\\\"description\\\"},{\\\"matchingPriority\\\":1,\\\"targetAttributeName\\\":\\\"displayName\\\"},{\\\"defaultValue\\\":\\\"True\\\",\\\"targetAttributeName\\\":\\\"isEnabled\\\"}],\\\"flowTypes\\\":\\\"Add, Update, Delete\\\",\\\"metadata\\\":[{\\\"key\\\":\\\"IsCustomerDefined\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"DisableMonitoringForChanges\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"Disposition\\\",\\\"value\\\":\\\"\\\\\\\"Normal\\\\\\\"\\\"},{\\\"key\\\":\\\"ExcludeFromReporting\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"EscrowBehavior\\\",\\\"value\\\":\\\"\\\\\\\"Default\\\\\\\"\\\"},{\\\"key\\\":\\\"Unsynchronized\\\",\\\"value\\\":\\\"false\\\"}],\\\"sourceObjectName\\\":\\\"\\\",\\\"targetObjectName\\\":\\\"AppRole\\\"}}\"}],\"name\":\"entitlement\",\"required\":true},{\"name\":\"principalId\",\"required\":true},{\"name\":\"principalType\",\"required\":true},{\"name\":\"resourceId\",\"required\":true},{\"name\":\"resourceDisplayName\",\"required\":true},{\"name\":\"servicePrincipalApplicationIdentifier\"},{\"name\":\"displayName\"}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"true\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"false\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"},{\"key\":\"PropertyNameSoftDeleted\",\"value\":\"IsSoftDeleted\"}],\"name\":\"AppRoleAssignment\"},\"mapping\":{\"attributeMappings\":[{\"matchingPriority\":1,\"targetAttributeName\":\"id\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"false\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"AppRoleAssignment\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appRoleAssignments",
                            "required": false,
                            "referencedObjects": [],
                            "type": "Reference"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute1",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute2",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute3",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute4",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute5",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute6",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute7",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute8",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute9",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute10",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute11",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute12",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute13",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute14",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "extensionAttribute15",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "facsimileTelephoneNumber",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "givenName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "jobTitle",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "mail",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "mailNickname",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "manager",
                            "required": false,
                            "referencedObjects": [
                                {
                                    "referencedObjectName": "User",
                                    "referencedProperty": null
                                }
                            ],
                            "type": "Reference"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "mobile",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "onPremisesSecurityIdentifier",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "originalUserPrincipalName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "passwordProfile.password",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "physicalDeliveryOfficeName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "preferredLanguage",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "proxyAddresses",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "surname",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "telephoneNumber",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "userPrincipalName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "true"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "true"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "true"
                        },
                        {
                            "key": "PropertyNameAccountEnabled",
                            "value": "accountEnabled"
                        },
                        {
                            "key": "PropertyNameSoftDeleted",
                            "value": "IsSoftDeleted"
                        }
                    ],
                    "name": "User"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "objectId",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadOnly",
                            "name": "appMetadata",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "displayName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"id\",\"required\":true},{\"multivalued\":true,\"name\":\"allowedMemberTypes\",\"required\":true},{\"name\":\"description\",\"required\":true},{\"name\":\"displayName\",\"required\":true},{\"name\":\"isEnabled\",\"required\":true,\"type\":\"Boolean\"},{\"name\":\"origin\"},{\"name\":\"value\"}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"false\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"false\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"}],\"name\":\"AppRole\"},\"mapping\":{\"attributeMappings\":[{\"defaultValue\":\"User\",\"targetAttributeName\":\"allowedMemberTypes\"},{\"defaultValue\":\".\",\"targetAttributeName\":\"description\"},{\"matchingPriority\":1,\"targetAttributeName\":\"displayName\"},{\"defaultValue\":\"True\",\"targetAttributeName\":\"isEnabled\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"false\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"AppRole\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appRoles",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "homepage",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "identifierUris",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "replyUrls",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "Application"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "allowedMemberTypes",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "description",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "displayName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "isEnabled",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "origin",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "value",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "AppRole"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "objectId",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"id\",\"required\":true},{\"multivalued\":true,\"name\":\"allowedMemberTypes\",\"required\":true},{\"name\":\"description\",\"required\":true},{\"name\":\"displayName\",\"required\":true},{\"name\":\"isEnabled\",\"required\":true,\"type\":\"Boolean\"},{\"name\":\"origin\"},{\"name\":\"value\"}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"false\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"false\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"}],\"name\":\"AppRole\"},\"mapping\":{\"attributeMappings\":[{\"defaultValue\":\"User\",\"targetAttributeName\":\"allowedMemberTypes\"},{\"defaultValue\":\".\",\"targetAttributeName\":\"description\"},{\"matchingPriority\":1,\"targetAttributeName\":\"displayName\"},{\"defaultValue\":\"True\",\"targetAttributeName\":\"isEnabled\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"false\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"AppRole\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "entitlement",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "principalId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "principalType",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "resourceId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "resourceDisplayName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "servicePrincipalApplicationIdentifier",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "displayName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "true"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        },
                        {
                            "key": "PropertyNameSoftDeleted",
                            "value": "IsSoftDeleted"
                        }
                    ],
                    "name": "AppRoleAssignment"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "objectId",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "displayName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"id\",\"required\":true},{\"multivalued\":true,\"name\":\"allowedMemberTypes\",\"required\":true},{\"name\":\"description\",\"required\":true},{\"name\":\"displayName\",\"required\":true},{\"name\":\"isEnabled\",\"required\":true,\"type\":\"Boolean\"},{\"name\":\"origin\"},{\"name\":\"value\"}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"false\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"false\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"}],\"name\":\"AppRole\"},\"mapping\":{\"attributeMappings\":[{\"defaultValue\":\"User\",\"targetAttributeName\":\"allowedMemberTypes\"},{\"defaultValue\":\".\",\"targetAttributeName\":\"description\"},{\"matchingPriority\":1,\"targetAttributeName\":\"displayName\"},{\"defaultValue\":\"True\",\"targetAttributeName\":\"isEnabled\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"false\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"AppRole\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appRoles",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "homepage",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadOnly",
                            "name": "appMetadata",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "tags",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        },
                        {
                            "key": "PropertyNameSoftDeleted",
                            "value": "IsSoftDeleted"
                        }
                    ],
                    "name": "ServicePrincipal"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "objectId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"objectId\"},{\"name\":\"id\",\"required\":true},{\"metadata\":[{\"key\":\"ComplexObjectDefinition\",\"value\":\"{\\\"definition\\\":{\\\"attributes\\\":[{\\\"anchor\\\":true,\\\"name\\\":\\\"id\\\",\\\"required\\\":true},{\\\"multivalued\\\":true,\\\"name\\\":\\\"allowedMemberTypes\\\",\\\"required\\\":true},{\\\"name\\\":\\\"description\\\",\\\"required\\\":true},{\\\"name\\\":\\\"displayName\\\",\\\"required\\\":true},{\\\"name\\\":\\\"isEnabled\\\",\\\"required\\\":true,\\\"type\\\":\\\"Boolean\\\"},{\\\"name\\\":\\\"origin\\\"},{\\\"name\\\":\\\"value\\\"}],\\\"metadata\\\":[{\\\"key\\\":\\\"IsSoftDeletionSupported\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"ConnectorDataStorageRequired\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"IsSynchronizeAllSupported\\\",\\\"value\\\":\\\"false\\\"}],\\\"name\\\":\\\"AppRole\\\"},\\\"mapping\\\":{\\\"attributeMappings\\\":[{\\\"defaultValue\\\":\\\"User\\\",\\\"targetAttributeName\\\":\\\"allowedMemberTypes\\\"},{\\\"defaultValue\\\":\\\".\\\",\\\"targetAttributeName\\\":\\\"description\\\"},{\\\"matchingPriority\\\":1,\\\"targetAttributeName\\\":\\\"displayName\\\"},{\\\"defaultValue\\\":\\\"True\\\",\\\"targetAttributeName\\\":\\\"isEnabled\\\"}],\\\"flowTypes\\\":\\\"Add, Update, Delete\\\",\\\"metadata\\\":[{\\\"key\\\":\\\"IsCustomerDefined\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"DisableMonitoringForChanges\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"Disposition\\\",\\\"value\\\":\\\"\\\\\\\"Normal\\\\\\\"\\\"},{\\\"key\\\":\\\"ExcludeFromReporting\\\",\\\"value\\\":\\\"false\\\"},{\\\"key\\\":\\\"EscrowBehavior\\\",\\\"value\\\":\\\"\\\\\\\"Default\\\\\\\"\\\"},{\\\"key\\\":\\\"Unsynchronized\\\",\\\"value\\\":\\\"false\\\"}],\\\"sourceObjectName\\\":\\\"\\\",\\\"targetObjectName\\\":\\\"AppRole\\\"}}\"}],\"name\":\"entitlement\",\"required\":true},{\"name\":\"principalId\",\"required\":true},{\"name\":\"principalType\",\"required\":true},{\"name\":\"resourceId\",\"required\":true},{\"name\":\"resourceDisplayName\",\"required\":true},{\"name\":\"servicePrincipalApplicationIdentifier\"},{\"name\":\"displayName\"}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"true\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"false\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"},{\"key\":\"PropertyNameSoftDeleted\",\"value\":\"IsSoftDeleted\"}],\"name\":\"AppRoleAssignment\"},\"mapping\":{\"attributeMappings\":[{\"matchingPriority\":1,\"targetAttributeName\":\"id\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"false\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"AppRoleAssignment\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appRoleAssignments",
                            "required": false,
                            "referencedObjects": [],
                            "type": "Reference"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "IsContainer",
                                    "value": "true"
                                }
                            ],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "members",
                            "required": false,
                            "referencedObjects": [
                                {
                                    "referencedObjectName": "Group",
                                    "referencedProperty": null
                                },
                                {
                                    "referencedObjectName": "User",
                                    "referencedProperty": null
                                }
                            ],
                            "type": "Reference"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        },
                        {
                            "key": "PropertyNameSoftDeleted",
                            "value": "IsSoftDeleted"
                        }
                    ],
                    "name": "Group"
                }
            ]
        },
        {
            "id": "8ffa6169-f354-4751-9b77-9c00765be92d",
            "name": "salesforce.com",
            "objects": [
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Id",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "IsActive",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Alias",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "CompanyName",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "CommunityNickname",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Email",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "EmailEncodingKey",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "LanguageLocaleKey",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "FirstName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "LastName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "LocaleSidKey",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "LinkTypeName",
                                    "value": "PermissionSetAssignment"
                                },
                                {
                                    "key": "LinkPropertyNames",
                                    "value": "[\"PermissionSetId\"]"
                                }
                            ],
                            "multivalued": true,
                            "mutability": "ReadWrite",
                            "name": "PermissionSets",
                            "required": false,
                            "referencedObjects": [
                                {
                                    "referencedObjectName": "PermissionSet",
                                    "referencedProperty": null
                                }
                            ],
                            "type": "Reference"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "ProfileId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "ProfileName",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "TimeZoneSidKey",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Username",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "UserPermissionsCallCenterAutoLogin",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "UserPermissionsMarketingUser",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "UserPermissionsOfflineUser",
                            "required": true,
                            "referencedObjects": [],
                            "type": "Boolean"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Street",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "City",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Division",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "EmployeeNumber",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "State",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "PostalCode",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Country",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Department",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "MobilePhone",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Phone",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Title",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": true,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "FederationIdentifier",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "ManagerId",
                            "required": false,
                            "referencedObjects": [
                                {
                                    "referencedObjectName": "User",
                                    "referencedProperty": null
                                }
                            ],
                            "type": "Reference"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "UserRoleId",
                            "required": false,
                            "referencedObjects": [
                                {
                                    "referencedObjectName": "UserRole",
                                    "referencedProperty": null
                                }
                            ],
                            "type": "Reference"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "User"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Name",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "UserRole"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Name",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "PermissionSet"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "AssigneeId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "PermissionSetId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "PermissionSetAssignment"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "appId",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Name",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [
                                {
                                    "key": "ComplexObjectDefinition",
                                    "value": "{\"definition\":{\"attributes\":[{\"anchor\":true,\"name\":\"Id\",\"required\":true},{\"name\":\"Description\"},{\"name\":\"Name\",\"required\":true}],\"metadata\":[{\"key\":\"IsSoftDeletionSupported\",\"value\":\"false\"},{\"key\":\"ConnectorDataStorageRequired\",\"value\":\"true\"},{\"key\":\"IsSynchronizeAllSupported\",\"value\":\"false\"}],\"name\":\"Profile\"},\"mapping\":{\"attributeMappings\":[{\"matchingPriority\":1,\"targetAttributeName\":\"Name\"}],\"flowTypes\":\"Add, Update, Delete\",\"metadata\":[{\"key\":\"IsCustomerDefined\",\"value\":\"false\"},{\"key\":\"DisableMonitoringForChanges\",\"value\":\"false\"},{\"key\":\"Disposition\",\"value\":\"\\\"Normal\\\"\"},{\"key\":\"ExcludeFromReporting\",\"value\":\"true\"},{\"key\":\"EscrowBehavior\",\"value\":\"\\\"Default\\\"\"},{\"key\":\"Unsynchronized\",\"value\":\"false\"}],\"sourceObjectName\":\"\",\"targetObjectName\":\"Profile\"}}"
                                }
                            ],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Profiles",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "false"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "FakeServicePrincipal"
                },
                {
                    "attributes": [
                        {
                            "anchor": true,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Id",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Description",
                            "required": false,
                            "referencedObjects": [],
                            "type": "String"
                        },
                        {
                            "anchor": false,
                            "caseExact": false,
                            "defaultValue": null,
                            "metadata": [],
                            "multivalued": false,
                            "mutability": "ReadWrite",
                            "name": "Name",
                            "required": true,
                            "referencedObjects": [],
                            "type": "String"
                        }
                    ],
                    "metadata": [
                        {
                            "key": "IsSoftDeletionSupported",
                            "value": "false"
                        },
                        {
                            "key": "ConnectorDataStorageRequired",
                            "value": "true"
                        },
                        {
                            "key": "IsSynchronizeAllSupported",
                            "value": "false"
                        }
                    ],
                    "name": "Profile"
                }
            ]
        }
    ],
    "synchronizationRules": [
        {
            "editable": true,
            "id": "4c5ecfa1-a072-4460-b1c3-4adde3479854",
            "metadata": [
                {
                    "key": "defaultSourceObjectMappings",
                    "value": "[{\"AttributeMappings\":[{\"DefaultValue\":\"False\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"IsSoftDeleted\"},{\"DefaultValue\":\"True\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"accountEnabled\"},{\"DefaultValue\":\"en-US\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"preferredLanguage\"},{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"userPrincipalName\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"User\"},{\"AttributeMappings\":[{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"appId\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"Application\"},{\"AttributeMappings\":[{\"DefaultValue\":\"User\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"allowedMemberTypes\"},{\"DefaultValue\":\".\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"description\"},{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"displayName\"},{\"DefaultValue\":\"True\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"isEnabled\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"AppRole\"},{\"AttributeMappings\":[{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"id\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"AppRoleAssignment\"},{\"AttributeMappings\":[{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"displayName\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"ServicePrincipal\"},{\"AttributeMappings\":[{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"objectId\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"false\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"Group\"}]"
                }
            ],
            "name": "USER_OUTBOUND_USER",
            "objectMappings": [
                {
                    "attributeMappings": [
                        {
                            "defaultValue": "True",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "Not([IsSoftDeleted])",
                                "name": "Not",
                                "parameters": [
                                    {
                                        "key": "source",
                                        "value": {
                                            "expression": "[IsSoftDeleted]",
                                            "name": "IsSoftDeleted",
                                            "parameters": [],
                                            "type": "Attribute"
                                        }
                                    }
                                ],
                                "type": "Function"
                            },
                            "targetAttributeName": "IsActive"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "Mid([userPrincipalName], 1, 8)",
                                "name": "Mid",
                                "parameters": [
                                    {
                                        "key": "source",
                                        "value": {
                                            "expression": "[userPrincipalName]",
                                            "name": "userPrincipalName",
                                            "parameters": [],
                                            "type": "Attribute"
                                        }
                                    },
                                    {
                                        "key": "start",
                                        "value": {
                                            "expression": "\"1\"",
                                            "name": "1",
                                            "parameters": [],
                                            "type": "Constant"
                                        }
                                    },
                                    {
                                        "key": "length",
                                        "value": {
                                            "expression": "\"8\"",
                                            "name": "8",
                                            "parameters": [],
                                            "type": "Constant"
                                        }
                                    }
                                ],
                                "type": "Function"
                            },
                            "targetAttributeName": "Alias"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "[mail]",
                                "name": "mail",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "Email"
                        },
                        {
                            "defaultValue": "ISO-8859-1",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "EmailEncodingKey"
                        },
                        {
                            "defaultValue": "en_US",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "LanguageLocaleKey"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "[givenName]",
                                "name": "givenName",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "FirstName"
                        },
                        {
                            "defaultValue": ".",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "[surname]",
                                "name": "surname",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "LastName"
                        },
                        {
                            "defaultValue": "en_US",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "Replace([preferredLanguage], \"-\", , , \"_\", , )",
                                "name": "Replace",
                                "parameters": [
                                    {
                                        "key": "source",
                                        "value": {
                                            "expression": "[preferredLanguage]",
                                            "name": "preferredLanguage",
                                            "parameters": [],
                                            "type": "Attribute"
                                        }
                                    },
                                    {
                                        "key": "Find",
                                        "value": {
                                            "expression": "\"-\"",
                                            "name": "-",
                                            "parameters": [],
                                            "type": "Constant"
                                        }
                                    },
                                    {
                                        "key": "Replacement",
                                        "value": {
                                            "expression": "\"_\"",
                                            "name": "_",
                                            "parameters": [],
                                            "type": "Constant"
                                        }
                                    }
                                ],
                                "type": "Function"
                            },
                            "targetAttributeName": "LocaleSidKey"
                        },
                        {
                            "defaultValue": "Chatter Free User",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "SingleAppRoleAssignment([appRoleAssignments])",
                                "name": "SingleAppRoleAssignment",
                                "parameters": [
                                    {
                                        "key": "source",
                                        "value": {
                                            "expression": "[appRoleAssignments]",
                                            "name": "appRoleAssignments",
                                            "parameters": [],
                                            "type": "Attribute"
                                        }
                                    }
                                ],
                                "type": "Function"
                            },
                            "targetAttributeName": "ProfileName"
                        },
                        {
                            "defaultValue": "America/Los_Angeles",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "TimeZoneSidKey"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": {
                                "expression": "[userPrincipalName]",
                                "name": "userPrincipalName",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "Username"
                        },
                        {
                            "defaultValue": "False",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "UserPermissionsCallCenterAutoLogin"
                        },
                        {
                            "defaultValue": "False",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "UserPermissionsMarketingUser"
                        },
                        {
                            "defaultValue": "False",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "UserPermissionsOfflineUser"
                        }
                    ],
                    "enabled": true,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": "Synchronize Azure Active Directory Users to salesforce.com",
                    "scope": null,
                    "sourceObjectName": "User",
                    "targetObjectName": "User"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "Name"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "UserRole"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "Name"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "PermissionSet"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "AssigneeId"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "PermissionSetAssignment"
                }
            ],
            "priority": 1,
            "sourceDirectoryName": "Azure Active Directory",
            "targetDirectoryName": "salesforce.com"
        },
        {
            "editable": false,
            "id": "c220a780-ce7f-462f-9d93-87a52e81c90e",
            "metadata": [
                {
                    "key": "defaultSourceObjectMappings",
                    "value": "[{\"AttributeMappings\":[{\"DefaultValue\":\"cd3ed3de-93ee-400b-8b19-b61ef44a0f29\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"appId\"},{\"DefaultValue\":\"salesforce.com\",\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":0,\"Source\":null,\"TargetAttributeName\":\"Name\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"true\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"FakeServicePrincipal\"},{\"AttributeMappings\":[{\"DefaultValue\":null,\"ExportMissingReferences\":false,\"FlowBehavior\":0,\"FlowType\":0,\"MatchingPriority\":1,\"Source\":null,\"TargetAttributeName\":\"Name\"}],\"Enabled\":false,\"FlowTypes\":7,\"Metadata\":[{\"Key\":\"IsCustomerDefined\",\"Value\":\"false\"},{\"Key\":\"DisableMonitoringForChanges\",\"Value\":\"false\"},{\"Key\":\"Disposition\",\"Value\":\"\\\"Normal\\\"\"},{\"Key\":\"ExcludeFromReporting\",\"Value\":\"true\"},{\"Key\":\"EscrowBehavior\",\"Value\":\"\\\"Default\\\"\"},{\"Key\":\"Unsynchronized\",\"Value\":\"false\"}],\"Name\":null,\"Scope\":null,\"SourceObjectName\":\"\",\"TargetObjectName\":\"Profile\"}]"
                }
            ],
            "name": "PROFILE_INBOUND_APPROLE",
            "objectMappings": [
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "objectId"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "true"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "true"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "Group"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "objectId"
                        },
                        {
                            "defaultValue": "False",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "IsSoftDeleted"
                        },
                        {
                            "defaultValue": "True",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "accountEnabled"
                        },
                        {
                            "defaultValue": "en-US",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "preferredLanguage"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "true"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "true"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "User"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": null,
                            "targetAttributeName": "id"
                        }
                    ],
                    "enabled": false,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "true"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "false"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": null,
                    "scope": null,
                    "sourceObjectName": "",
                    "targetObjectName": "AppRoleAssignment"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": {
                                "expression": "[appId]",
                                "name": "appId",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "appId"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "[Profiles]",
                                "name": "Profiles",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "appRoles"
                        }
                    ],
                    "enabled": true,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "true"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": "Synchronize salesforce.com FakeServicePrincipals to Azure Active Directory",
                    "scope": null,
                    "sourceObjectName": "FakeServicePrincipal",
                    "targetObjectName": "ServicePrincipal"
                },
                {
                    "attributeMappings": [
                        {
                            "defaultValue": "User",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "allowedMemberTypes"
                        },
                        {
                            "defaultValue": ".",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": {
                                "expression": "[Description]",
                                "name": "Description",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "description"
                        },
                        {
                            "defaultValue": null,
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 1,
                            "source": {
                                "expression": "[Name]",
                                "name": "Name",
                                "parameters": [],
                                "type": "Attribute"
                            },
                            "targetAttributeName": "displayName"
                        },
                        {
                            "defaultValue": "True",
                            "exportMissingReferences": false,
                            "flowBehavior": "FlowWhenChanged",
                            "flowType": "Always",
                            "matchingPriority": 0,
                            "source": null,
                            "targetAttributeName": "isEnabled"
                        }
                    ],
                    "enabled": true,
                    "flowTypes": "Add, Update, Delete",
                    "metadata": [
                        {
                            "key": "IsCustomerDefined",
                            "value": "false"
                        },
                        {
                            "key": "DisableMonitoringForChanges",
                            "value": "false"
                        },
                        {
                            "key": "Disposition",
                            "value": "\"Normal\""
                        },
                        {
                            "key": "ExcludeFromReporting",
                            "value": "true"
                        },
                        {
                            "key": "EscrowBehavior",
                            "value": "\"Default\""
                        },
                        {
                            "key": "Unsynchronized",
                            "value": "false"
                        }
                    ],
                    "name": "Synchronize salesforce.com Profiles to Azure Active Directory",
                    "scope": null,
                    "sourceObjectName": "Profile",
                    "targetObjectName": "AppRole"
                }
            ],
            "priority": 2,
            "sourceDirectoryName": "salesforce.com",
            "targetDirectoryName": "Azure Active Directory"
        }
    ],
    "version": "A9208340-D57A-4B74-A563-6FC5B5196699"
}

```