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
ws_vaccines = load_workbook('IMZ-DAK-Data-Dictionary.xlsx')['IMZ.A1 Vaccine Library']
vaccine_count = ws_vaccines.max_row - 1

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
        # choose random vaccine
        vaccine_code = None
        while (vaccine_code is None):
            vaccine_row = random.choice(range(vaccine_count))
            vaccine_code = ws_vaccines.cell(vaccine_row, 16).value
            vaccine_name = ws_vaccines.cell(vaccine_row, 3).value
        ## assign random observations:
        # pregnancy
        pregnant = False
        if (gender == "female" and random.random() < 0.5):
            pregnant = True
        # HIV positive
        HIV_positive = False
        if (random.random() < 0.4):
            HIV_positive = True
        
        # this prints oddly bc of the mix of rtl-ltr langs?
        print(lang, suffix, name, birthDate, identifier, gender, vaccine_name)
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
            vaccineCodeName=vaccine_code,
            targetDiseaseName="""Disease for {}""".format(vaccine_name).replace(" ", "_"),
            doseNumberPositiveInt=2,
            seriesDosesPositiveInt=3,
            pregnant=pregnant,
            HIV_positive=HIV_positive,
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




