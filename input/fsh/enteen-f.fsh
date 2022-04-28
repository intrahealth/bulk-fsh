Instance:     IMMZ-Patient-enteen-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "praseodymiumteen-f"
* name[=].use = #official
* birthDate = "2007-01-08"
* gender = #female


Instance: IMMZ-Organization-enteen-f
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Cholera-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#35736007
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Cholera
//Series name: Cholera vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Dengue-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#N/A
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Dengue
//Series name: None
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Diphtheria-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#350327004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Diphtheria
//Series name: Diphtheria + tetanus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#427806004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-A-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#348045000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-B-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#698026000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Hepatitis-B
//Series name: Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-HPV-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#424519000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: HPV
//Series name: Human papillomavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Japanese-Encephalitis-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333698000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Measles-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#61153008
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Measles
//Series name: Measles, mumps and rubella vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Meningococcal-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#423912009
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Meningococcal
//Series name: Haemophilus influenzae type b + Meningococcal group C vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Mumps-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#90043005
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Mumps
//Series name: Mumps live virus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pertussis-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#427048007
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Pertussis
//Series name: Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pneumococcal-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333598008
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Polio-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414002009
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Polio
//Series name: Diphtheria + tetanus + inactivated poliovirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rabies-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#3526007
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Rabies
//Series name: Rabies vaccine, human (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rotavirus-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#116077000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rubella-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#440075005
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Rubella
//Series name: Live measles + rubella vaccine injection dose form (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Seasonal-Influenza-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#430410002
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Seasonal-Influenza
//Series name: Product containing Influenza virus vaccine in nasal dose form (medicinal product form)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tetanus-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#375054005
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Tetanus
//Series name: Tetanus toxoid, adsorbed 20u/mL 0.5mL injection solution ampule (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333699008
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Typhoid-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#346697001
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Typhoid
//Series name: Typhoid whole cell vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Varicella-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#407737004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Varicella
//Series name: Varicella-zoster vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Yellow-Fever-enteen-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333652001
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-f)
* location.display = "Vaccination Site"
//Set to a random date between 2007-01-08 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2007-04-05"
* performer.actor = Reference(IMMZ-Organization-enteen-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-f)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever live vaccine injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1







