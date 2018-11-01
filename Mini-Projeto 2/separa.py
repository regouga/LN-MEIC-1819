#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 31 19:51:20 2018

@author: miguelregouga
"""


data = [i.strip('\n').split('\t') for i in open("QuestoesConhecidas.txt")]

        
actor_name = []
character_name = []
spoken_language = []
person_name = []
runtime = []
overview = []
budget = []
original_language = []
release_date = []
revenue = []
original_title = []
production_country = []
production_company = []
genre = []
keyword = []
vote_avg = []

categories = []
for sentences in data:

    category = str(sentences[0])
    
    if (category == 'actor_name '):
        actor_name.append(sentences[1])
        
    if (category == 'character_name '):
        character_name.append(sentences[1]) 
        
    if (category == 'spoken_language '):
        spoken_language.append(sentences[1])
        
    if (category == 'person_name '):
        person_name.append(sentences[1]) 
        
    if (category == 'runtime '):
        runtime.append(sentences[1])
        
    if (category == 'overview '):
        overview.append(sentences[1])
        
    if (category == 'budget '):
        budget.append(sentences[1]) 
        
    if (category == 'original_language '):
        original_language.append(sentences[1])
        
    if (category == 'release_date '):
        release_date.append(sentences[1]) 
        
    if (category == 'revenue '):
        revenue.append(sentences[1])           
     
    if (category == 'original_title '):
        original_title.append(sentences[1])
        
    if (category == 'production_country '):
        production_country.append(sentences[1])
        
    if (category == 'production_company '):
        production_company.append(sentences[1]) 
        
    if (category == 'genre '):
        genre.append(sentences[1])
        
    if (category == 'keyword '):
        keyword.append(sentences[1]) 
        
    if (category == 'vote_avg '):
        vote_avg.append(sentences[1]) 
        