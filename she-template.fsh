Instance:     IMMZ-Patient-{{suffix}}
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "{{name}}"
* name[=].use = #official
* birthDate = "{{birthDate}}"
* gender = #{{gender}}


Instance: IMMZ-Organization-{{suffix}}
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "{{orgname}}"

Instance: IMMZ-ImmunizationRecommendation-{{suffix}}
InstanceOf: ImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(IMMZ-Patient-{{suffix}})
* recommendation.vaccineCode.coding[ddccVaccine] = {{codesystem}}#{{vaccineCode}}
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(IMMZ-Immunization-{{suffix}})

Instance: IMMZ-Immunization-{{suffix}}
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = {{codesystem}}#{{vaccineCode}}
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-{{suffix}})
* location.display = "{{centre}}"
//Set different date times between 2021-04-07 to 2022-04-25
* occurrenceDateTime =  "{{date}}"
* performer.actor = Reference(IMMZ-Organization-{{suffix}})
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-{{suffix}})
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

//Create for a handful of female patients
Instance: pregnancy-status-{{suffix}}
InstanceOf: IPSObservationPregObservation
Usage: #example
* status = #final
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "2020-01-10"
* valueCodeableConcept = http://loinc.org#LA15173-0 "Pregnant"

//HIV status positive
Instance: HIVAIDS-Yes-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#278977008 "Human immunodeficiency virus status (observable entity)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"

//Immunocompromised
Instance: Immunocompromised-{{suffix}}
InstanceOf: Condition
Usage: #example
* status = #final
* clinicalStatus = #active
* code = SCT#370388006 "Patient immunocompromised (finding)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"

//preterm birth (HepB, pneumococal)
Instance: preterm-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#302080006 "Finding of birth outcome (finding)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = SCT#367494004 "Premature birth of newborn (finding)"

//birthweight (HepB)
Instance: birthweight-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#276610007 "Birthweight"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 2000 'g' "gram"

//CD4 % >25% (BCG)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 25 '%' "percent"

//CD4 count >=200 (BCG)
Instance: CD4 Count
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 205 SCT#116745007 "Cell positive for CD4 antigen (cell)"

//HAART (Measles)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 

//Seronegative (Dengue)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 

//TST (BCG)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 

//IGRA (BCG)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 

//inussuception (for Rotavirus)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "2018-12-15"
* valueCodeableConcept = 

//sickle cell disease (Pneumococal)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 

//VNA levels (rabies)
Instance: 
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 