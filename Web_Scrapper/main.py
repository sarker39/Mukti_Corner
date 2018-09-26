#Author: Sour@v S@rker
#CSE SUST
#REG No.: 2014331039

import requests
from bs4 import BeautifulSoup
import datetime

now = str(datetime.datetime.now())
date = now.split(' ')[0].strip()

text_set_bangla= ['মুক্তিযুদ্ধ','মুক্তিযুদ্ধে','মুক্তিযুদ্ধের','মুক্তিযোদ্ধা','মুক্তিযোদ্ধাদের','একাত্তর','স্বাধীনতা','স্বাধীনতা দিবস',
                  'বিজয় দিবস','২৬শে মার্চ','২৬শে মার্চে','২৫শে মার্চে','২৫শে মার্চ','৭ই মার্চ','৭ই মার্চে','১০ই এপ্রিল','১০ই এপ্রিলে','১৭ই এপ্রিলে','১৭ই এপ্রিল','১৯৭১',
                  '১৬ই ডিসেম্বর','১৬ই ডিসেম্বরে','১০ই জানুয়ারি','১০ই জানুয়ারিতে','রাজাকার','হানাদারবাহিনী','পাকিস্তানীবাহিনী',
                  'গণহত্যা','মানবতাবিরোধী','স্বাধীনতাযুদ্ধ','শহীদ '
                  ]
text_set_english = ['libaration war','freedom fighter','16th december','independence','independent'
                    'victory day','25th march','26th march','10th april','17th april','1971',
                    'war Crime','war criminal','martyr']

text_set_reject_bangla=['বন্দুকযুদ্ধ','বন্দুকযুদ্ধে']

#####################
#for bangla tribune##
#####################
ban_tribune = list()

for i in range(10):
    if(i == 0):
        url = 'http://www.banglatribune.com/archive/'+date
        res_ban_tribune = requests.get(url)
    elif i > 0:
        url = 'http://www.banglatribune.com/archive/'+date+'?page='+str(i)
        res_ban_tribune = requests.get(url)
    else:
        continue

    soup = BeautifulSoup(res_ban_tribune.text, 'lxml')
    #nicher command e time komano jaite pare .... as page theke sob link niye nicche jodi page theke
    #shudhu div.todays_archive.widgets class er link gula nei taile kome jabe time besh
    links = soup.find_all('a')


    for j in range(len(links)):
        if any(x in links[j].getText() for x in text_set_bangla) and any( y not in links[j].getText() for y in text_set_reject_bangla):
            if links[j].attrs['href'] not in ban_tribune:
                ban_tribune.append(links[j].attrs['href'])

                print('News Source: BanglaTribune.com \nNews Title: ' + links[j].getText() + '\n' + 'News Link: ' + str(links[j]))


###################
#for prothom-alo###
###################
prothom_alo = list()
for i in range(10):
    if(i == 0):
        url = 'http://www.prothomalo.com/archive/'+date
        res_prothom = requests.get(url)
    elif i > 0:
        url = 'http://www.prothomalo.com/archive/'+date+'?page='+str(i)
        res_prothom = requests.get(url)
    else:
        continue

    soup = BeautifulSoup(res_prothom.text, 'lxml')
    links = soup.find_all('a')

    for j in range(len(links)):
        if any(x in links[j].getText() for x in text_set_bangla)and any(y not in links[j].getText() for y in text_set_reject_bangla) :
            if links[j].attrs['href'] not in prothom_alo:
                prothom_alo.append(links[j].attrs['href'])

                print('News Source: Prothom-alo.com \nNews Title: ' + links[j].getText() + '\n' + 'News Link: ' + str(links[j]))


########################
#for bangla.bdnews24.com#
########################
bdnews_special_set = text_set_bangla
bdnews_special_set.append('যুদ্ধ')
bdnews_special_set.append('যুদ্ধে')

bdnews = list()
res = requests.get('https://bangla.bdnews24.com/muktijoddha/')
soup = BeautifulSoup(res.text, 'lxml')
links = soup.find_all('a')

for i in range(len(links)):
    if ('https://bangla.bdnews24.com/muktijoddha/'==links[i].attrs['href']) or ('/muktijoddha/' ==links[i].attrs['href']):
        continue
    elif any(x in links[i].getText() for x in bdnews_special_set) and any(y not in links[j].getText() for y in text_set_reject_bangla) :
        if links[i].attrs['href'] not in bdnews:
            bdnews.append(links[i].attrs['href'])
            print('News Source: Bdnews24.com \nNews Title: ' + links[i].getText().strip() + '\n' + 'News Link: ' + str(links[i]))


#######################
#for banglanews24.com##
#######################
ban_news = list()

for i in range(10):
    if (i == 0):
        url = 'http://www.banglanews24.com/archive/' + date
        res_ban_news = requests.get(url)
    elif i > 0:
        url = 'http://www.banglanews24.com/archive/' + date + '?page=' + str(i)
        res_ban_news = requests.get(url)
    else:
        continue

    soup = BeautifulSoup(res_ban_news.text, 'lxml')
    # nicher command e time komano jaite pare .... as page theke sob link niye nicche jodi page theke
    # shudhu "div.container content-container category-container" class er link gula nei taile kome jabe time besh
    links = soup.find_all('a')

    for j in range(len(links)):
        if any(x in links[j].getText() for x in text_set_bangla) and any(y not in links[j].getText() for y in text_set_reject_bangla):
            if links[j].attrs['href'] not in ban_news:
                ban_news.append(links[j].attrs['href'])

                print('News Source: Banglanews24.com \nNews Title: ' + links[
                    j].getText() + '\n' + 'News Link: ' + str(links[j]))

#######################
#for sylhetviews24.oom#     bonduk juddho ar shadhinota string problem
#######################
syl_news = list()
res = requests.get('http://www.sylhetview24.net/')
soup = BeautifulSoup(res.text, 'lxml')
links = soup.find_all('a')

for i in range(len(links)):
    if any(x in links[i].getText() for x in text_set_bangla) and any(y not in links[j].getText() for y in text_set_reject_bangla):
        if links[i].attrs['href'] not in syl_news:
            syl_news.append(links[i].attrs['href'])
            print('News Source: Sylhetview24.net \nNews Title: ' + links[i].getText().strip() + '\n' + 'News Link: ' + str(links[i]))

####################
#for jugantor.com###
####################
jugantor = list()
datesplit = date.split('-')
newdate = datesplit[0]+'/'+datesplit[1]+'/'+datesplit[2]



url = 'https://www.jugantor.com/archive/'+newdate
res_jugantor = requests.get(url)



soup = BeautifulSoup(res_jugantor.text, 'lxml')
#eikhane time komano jaite pare jodi amra particular class jemon : jatiya henten ei dhoroner class gula use kori tobe eita
#komano jaite pare

links = soup.find_all('a')


for j in range(len(links)):
    if any(x in links[j].getText() for x in text_set_bangla) and any(y not in links[j].getText() for y in text_set_reject_bangla):
        if links[j].attrs['href'] not in jugantor:
            jugantor.append(links[j].attrs['href'])
            print('News Source: Jugantor.com \nNews Title: ' + links[j].getText() +
                  '\n' + 'News Link: ' + str(links[j]))


#################
#for ittfak.com##
#################
ittefaq = list()
url = 'http://www.ittefaq.com.bd/archive/'+newdate
res_ittefaq = requests.get(url)

soup = BeautifulSoup(res_ittefaq.text, 'lxml')
#eikhane time komano jaite pare jodi amra particular class jemon : jatiya henten ei dhoroner class gula use kori tobe eita
#komano jaite pare

links = soup.find_all('a')
for j in range(len(links)):
    if any(x in links[j].getText() for x in text_set_bangla) and any(y not in links[j].getText() for y in text_set_reject_bangla):
        if links[j].attrs['href'] not in ittefaq:
            ittefaq.append(links[j].attrs['href'])
            print('News Source: ittefaq.com \nNews Title: ' + links[j].getText() +
                  '\n' + 'News Link: ' + str(links[j]))


###################
#for dailystar.com#
###################
star_search_index=['star-live', 'in-focus', 'literature', 'law-our-right', 'country','newspaper']
star_news = list()

for i in range(len(star_search_index)):
    url = 'https://www.thedailystar.net/' + star_search_index[i]
    res_daily_star = requests.get(url)

    soup = BeautifulSoup(res_daily_star.text, 'lxml')
    links = soup.find_all('a')

    for j in range(len(links)):
        if any(x in links[j].getText().lower() for x in text_set_english):
            if links[j].attrs['href'] not in star_news:
                star_news.append(links[j].attrs['href'])
                print('News Source: Thedailystar.net \nNews Title: ' + links[j].getText() +
                      '\n' + 'News Link: ' + str(links[j]))

##################
#for dhakatribune#
##################
dhaka_tribune = list()
res_dhaka_tribune = requests.get('https://www.dhakatribune.com/')

soup = BeautifulSoup(res_dhaka_tribune.text,'lxml')
links = soup.find_all('a')

for j in range(len(links)):
    if any(x in links[j].getText().lower() for x in text_set_english):
        if links[j].attrs['href'] not in dhaka_tribune:
            dhaka_tribune.append(links[j].attrs['href'])
            print('News Source: DhakaTribune.com \nNews Title: ' + links[j].getText() +
                  '\n' + 'News Link: ' + str(links[j]))


###########################
#for muktijuddho ministry###
#http://molwa.gov.bd/ #####
###########################