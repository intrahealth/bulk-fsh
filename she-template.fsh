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

//birthweight-low (HepB)
Instance: birthweightlow-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#276610007 "Birthweight"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 1877 'g' "gram"

//birthweight-normal (HepB)
Instance: birthweightnormal-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#276610007 "Birthweight"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 6855 'g' "gram"

//CD4 % >25% (BCG)
Instance: cd4percent-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
//same code as CD4 count below?
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 27 '%' "percent"

//CD4 count >=200 (BCG)
Instance: cd4countmore-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
//is SCT#413789001 "CD41 count (procedure)" a more accurate code for the procedure? HAART is a procedure 
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 205 SCT#116745007 "Cell positive for CD4 antigen (cell)"

//CD4 count <200 (BCG)
Instance: cd4countless-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
//is SCT#413789001 "CD41 count (procedure)" a more accurate code for the procedure? HAART is a procedure 
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 180 SCT#116745007 "Cell positive for CD4 antigen (cell)"

//HAART (Measles)
Instance: haart-{{suffix}}
InstanceOf: MedicationStatement
Usage: #example
* status = #final
* medicationCodeableConcept = SCT#416234007 "Highly active anti-retroviral therapy (procedure)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"

//Seronegative (Dengue)
Instance: seronegative-{{{suffix}}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#81321002 "Seronegative (qualifier value)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
//how do we structure this one? 
* valueCodeableConcept = 

//TST (BCG)
Instance: tst-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#424294008 " Delayed hypersensitivity skin test for tuberculin purified protein derivative (procedure)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
// Should we use this code? ICD11#741356478 "Abnormal reaction to tuberculin test"
* valueCodeableConcept = 

//IGRA (BCG)
//can't find code to indicate IGRA test; suggest removing
/*
Instance: igra-bcg
InstanceOf: Observation
Usage: #example
* status = #final
* code = 
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueCodeableConcept = 
*/

//intussuception (for Rotavirus)
Instance: intussuception-{{suffix}}
InstanceOf: Condition
Usage: #example
* clinicalStatus = #active
* code = SCT#41444002 "Invagination (morphologic abnormality)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* recordedDate = "{{date}}"

//sickle cell disease (Pneumococal)
Instance: sicklecell-{{suffix}}
InstanceOf: Condition
Usage: #example
* clinicalStatus = #active
* code = SCT#127040003 "Sickle cell-hemoglobin SS disease (disorder)"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* recordedDate = "{{date}}"

//VNA levels below 0.5 (rabies)
Instance: vnalevelbelow-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = LNC#6524-3 "Rabies virus neutralizing antibody [Units/volume] in Serum by Neutralization test"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 0.4 'IU/mL' "international unit/milliliter"

//VNA levels above 0.5 (rabies)
Instance: vnalevelabove-{{suffix}}
InstanceOf: Observation
Usage: #example
* status = #final
* code = LNC#6524-3 "Rabies virus neutralizing antibody [Units/volume] in Serum by Neutralization test"
* subject = Reference(Patient/IMMZ-Patient-{{suffix}})
* effectiveDateTime = "{{date}}"
* valueQuantity = 0.7 'IU/mL' "international unit/milliliter"