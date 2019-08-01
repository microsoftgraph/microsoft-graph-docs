---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

LinkedList<ParticipantMixerLevel> participantMixerLevelsList = new LinkedList<ParticipantMixerLevel>();
ParticipantMixerLevel participantMixerLevels = new ParticipantMixerLevel();
participantMixerLevels.participant = "550fae72-d251-43ec-868c-373732c2704f";
participantMixerLevels.exclusive = true;
AudioDuckingConfiguration ducking = new AudioDuckingConfiguration();
ducking.rampActive = 50;
ducking.rampInactive = 50;
ducking.lowerLevel = 10;
ducking.upperLevel = 50;
participantMixerLevels.ducking = ducking;
LinkedList<AudioSourceLevel> sourceLevelsList = new LinkedList<AudioSourceLevel>();
AudioSourceLevel sourceLevels = new AudioSourceLevel();
sourceLevels.participant = "632899f8-2ea1-4604-8413-27bd2892079f";
sourceLevels.level = 50;
sourceLevels.duckOthers = false;
sourceLevelsList.add(sourceLevels);
participantMixerLevels.sourceLevels = sourceLevelsList;

participantMixerLevelsList.add(participantMixerLevels);

graphClient.app().calls("{id}").participants()
	.configureMixer(participantMixerLevelsList,clientContext)
	.buildRequest()
	.post();

```