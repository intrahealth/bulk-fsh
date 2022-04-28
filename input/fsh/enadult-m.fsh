Instance:     IMMZ-Patient-enadult-m
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "rutheniumadult-m"
* name[=].use = #official
* birthDate = "1992-12-09"
* gender = #male


Instance: IMMZ-Organization-enadult-m
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#418268006
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Cholera-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#409579003
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Cholera
//Series name: Inactivated whole-cell/recombinant-B-subunit cholera vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Dengue-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#N/A
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Dengue
//Series name: None
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Diphtheria-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#427542001
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Diphtheria
//Series name: Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333691006
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Hepatitis-A-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#406324009
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Hepatitis-B-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#427048007
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Hepatitis-B
//Series name: Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-HPV-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#424519000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: HPV
//Series name: Human papillomavirus vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Japanese-Encephalitis-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333698000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine powder and solvent for injection solution vial (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Measles-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#400449000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Measles
//Series name: Measles virus vaccine, live, 0.5mL/vial powder for injection (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Meningococcal-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#698026000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Meningococcal
//Series name: Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Mumps-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#419550004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Mumps
//Series name: Measles + mumps + rubella + varicella vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Pertussis-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333691006
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Pertussis
//Series name: Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Pneumococcal-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333598008
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Polio-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333603000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Polio
//Series name: Poliomyelitis inactivated vaccine injection (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Rabies-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#3526007
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Rabies
//Series name: Rabies vaccine, human (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Rotavirus-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#116077000
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Rubella-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#347653005
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Rubella
//Series name: Rubella live vaccine powder and solvent for injection solution vial (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Seasonal-Influenza-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#348046004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Seasonal-Influenza
//Series name: Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Tetanus-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#350327004
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Tetanus
//Series name: Diphtheria + tetanus vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333699008
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Typhoid-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#412324003
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Typhoid
//Series name: Typhoid VI polysaccharide vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Varicella-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#412530002
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Varicella
//Series name: Varicella virus live vaccine (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"

Instance: IMMZ-Immunization-Yellow-Fever-enadult-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode.coding = SCT#333652001
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-m)
* location.display = "Vaccination Site"
//Set to a random date between 1992-12-09 (Patient birth date) to 2022-04-28 (date of test-case generation)
* occurrenceDateTime =  "2014-04-06"
* performer.actor = Reference(IMMZ-Organization-enadult-m)
//check what protol applied requirements there are
* protocolApplied[protocolAppliedAuthority].authority = Reference(IMMZ-Organization-enadult-m)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever live vaccine injection solution vial (product)
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = "TODO: DOSE"
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = "TODO: SERIES"







