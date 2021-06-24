---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Deployment deployment = new Deployment();
FeatureUpdateReference content = new FeatureUpdateReference();
content.version = "20H2";
deployment.content = content;
WindowsDeploymentSettings settings = new WindowsDeploymentSettings();
RolloutSettings rollout = new RolloutSettings();
rollout.devicesPerOffer = 100;
settings.rollout = rollout;
MonitoringSettings monitoring = new MonitoringSettings();
LinkedList<MonitoringRule> monitoringRulesList = new LinkedList<MonitoringRule>();
MonitoringRule monitoringRules = new MonitoringRule();
monitoringRules.signal = MonitoringSignal.ROLLBACK;
monitoringRules.threshold = 5;
monitoringRules.action = MonitoringAction.PAUSE_DEPLOYMENT;
monitoringRulesList.add(monitoringRules);
monitoring.monitoringRules = monitoringRulesList;
settings.monitoring = monitoring;
deployment.settings = settings;

graphClient.admin().windows().updates().deployments()
	.buildRequest()
	.post(deployment);

```