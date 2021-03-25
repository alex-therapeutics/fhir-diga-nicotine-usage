Profile: NicotineTreatmentQuestionnaireResponse
Id: nicotine-treatment-questionnaire-response
Title: "Nicotine Treatment Questionnaire Response"
Description: "A questionnaire response dealing with nicotine as part of a treatment program"
Parent: QuestionnaireResponse
* questionnaire 1..1 // responses SHOULD link to a defined questionnaire, always, so the other party can understand what the standard forms are. and a practicioner can take a look at what the DiGA does
* source 1..1 
* source only Reference(SelfReportedNicotineUsingPatient) // SHOULD be the patient
* item.answer.value[x] from TriggerCode (example) // indicate in standard that these codes can be used for logging or other questions involved 'triggers' which is a CBT concept

Instance: NicotineTreatmentQuestionnaireResponseExample
InstanceOf: NicotineTreatmentQuestionnaireResponse
* questionnaire = Canonical(InlineQuestionnaire)
* source = Reference(InlinePatient)
* status = #completed
* item[0].linkId = "EXAMPLE"
* item[0].answer[0].valueCoding = TriggerCodeSystem#waiting

Instance: InlineQuestionnaire
InstanceOf: NicotineTreatmentQuestionnaire
Usage: #inline
* title = "Example"
* description = "Example"
* purpose = "Example"
* status = #active
* item[0].linkId = "EXAMPLE"
* item[0].type = #choice
* item[0].text = "Choose one"
* item[0].answerValueSet = Canonical(TriggerCode)

Instance: InlinePatient
InstanceOf: SelfReportedNicotineUsingPatient