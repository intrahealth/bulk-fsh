#!/usr/bin/env python
# coding: utf-8

# In[1]:


# pip install pandas openpyxl jinja2 faker
import pandas as pd
import pathlib
from jinja2 import Template
from faker import Faker
import sys
from datetime import date
import random
from openpyxl import load_workbook

# In[2]:


df_names = pd.read_csv('out.csv')
# print(df_names[:4])
names = df_names['en'].sample(n=1, random_state=1)
# print(names.values)
# print(names.values[0])
generated_genders = ['male', 'female'] # will be randomly sampled to populate Patient.gender
# build possible vaccines from data dictionary
ws_vaccines = load_workbook('IMZ-DAK-Data-Dictionary.xlsx')['IMZ.A1 Vaccine Library']
vaccine_codes = dict() # { (vaccine name): list[snomed ct code] }
for row in ws_vaccines.iter_rows(2): # skip header row
    if row[15].value is None: # no SNOMEDCT code
        continue
    if row[2].value not in vaccine_codes:
        vaccine_codes[row[2].value] = [row[15].value]
    else:
        vaccine_codes[row[2].value].append(row[15].value)
unique_vaccine_names = len(vaccine_codes.keys())

# In[3]:


# goal: nested lists of form: [index, suffix, birthDate, centre...]
# for now, suffix = name and suffix
fake = Faker()
def genfsh(lang, obs):
    for i in range(obs):
        tempname = df_names[lang].sample(n=1)
        tempname = tempname.values[0]
        suffix = lang + str(i)
        name = tempname + str(i)
        if lang == 'en':
            orgname = "Government Hospital"
            centre = 'Vaccination Site'
        if lang == 'es':
            orgname = "Hospital del Gobierno"
            centre = "Sitio de vacunación"
        if lang == 'fr':
            orgname = "Hôpital du gouvernement"
            centre = "Site de vaccination"
        if lang == 'ar':
            orgname = "مستشفى حكومي"
            centre = "موقع التطعيم"
        if lang == 'zh':
            orgname = "政府医院"
            centre = "疫苗接种现场"
        if lang == 'ru':
            orgname = "Государственная больница"
            centre = "Сайт вакцинации"
        x = fake.date_between(start_date='-80y', end_date='-15y')
        birthDate = str(x)
        x = fake.date_between_dates(date_start=date(2021, 4, 7), date_end=date(2022, 4, 25))
        vaccine_date = str(x)
        identifier = lang + str(9999) + str(i)
        # choose a random administrative gender
        gender = random.choice(generated_genders);
        # choose random immunizations
        vaccines = random.sample(list(vaccine_codes.keys()), 3) # choose 3 random vaccines
        patient_immunizations = []
        for vaccine in vaccines:
            patient_immunizations.append({
                "vaccineName": vaccine.replace(" ", "-"),
                "vaccineCodeName": random.choice(vaccine_codes[vaccine]), # for each vaccine, get random vaccination code
                "targetDiseaseName": """Disease for {}""".format(vaccine).replace(" ", "-"), # TODO
                "doseNumberPositiveInt": 2, # TODO
                "seriesDosesPositiveInt": 3, # TODO
            })
        ## assign random observations:
        # pregnancy
        pregnant = False
        if (gender == "female" and random.random() < 0.5):
            pregnant = True
        # HIV positive
        hiv_positive = False
        if (random.random() < 0.4):
            hiv_positive = True
        
        # this prints oddly bc of the mix of rtl-ltr langs?
        print(lang, suffix, name, birthDate, identifier, gender, ', '.join([elem["vaccineName"] for elem in patient_immunizations]))
        # put through jinja2
        path = pathlib.Path('she-template.fsh')
        text = path.read_text()
        t = Template(text)
        msg = t.render(
            suffix=suffix,
            name=name,
            birthDate=birthDate,
            identifier=identifier,
            gender=gender,
            orgname=orgname,
            centre=centre,
            date=vaccine_date,
            immunizations=patient_immunizations,
            pregnant=pregnant,
            hiv_positive=hiv_positive,
            gen_extra_data=False
        )
        path_out = pathlib.Path(f"input/fsh/{suffix}.fsh")
        path_out.write_text(msg)


# In[4]:


print("command:", str(sys.argv))
langs = ['en', 'es', 'fr', 'ar', 'zh', 'ru']
if sys.argv[1] in langs:
    genfsh(str(sys.argv[1]), int(sys.argv[2]))
else:
    genfsh('ar', 100)


# In[ ]:




