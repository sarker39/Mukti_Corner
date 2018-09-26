from bs4 import BeautifulSoup
import requests
import datetime
import pymysql

conn = pymysql.connect(host="localhost", user="root", password = "", db="mukticorner")
myCursor = conn.cursor()



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

text_set_reject_bangla=['বন্দুকযুদ্ধ','বন্দুকযুদ্ধে','ভোটযুদ্ধে','ভোটযুদ্ধ','মাদকের','মাদক','মাদকে']


# bdnews_special_set = text_set_bangla
# bdnews_special_set.append('যুদ্ধ')
# bdnews_special_set.append('যুদ্ধে')
#
# bdnews = list()
# res = requests.get('https://bangla.bdnews24.com/muktijoddha/')
# soup = BeautifulSoup(res.text, 'lxml')
# links = soup.find_all('a')

# for i in range(len(links)):
#     if ('https://bangla.bdnews24.com/muktijoddha/'==links[i].attrs['href']) or ('/muktijoddha/' ==links[i].attrs['href']):
#         continue
#     elif any(x in links[i].getText() for x in bdnews_special_set) and any(y not in links[i].getText() for y in text_set_reject_bangla) :
#         if links[i].attrs['href'] not in bdnews:
#             bdnews.append(links[i].attrs['href'])
#             nextnlink = str(links[i].attrs['href'])
#
#
#             #database
#             matched = myCursor.execute('SELECT news_link FROM news_table WHERE  news_link =%s ', (nextnlink),)
#             print('matched result:',matched)
#             if (matched == 0):
#                 print('okay: its coming in the condition check')
#                 resbd = requests.get(nextnlink)
#                 soupbd = BeautifulSoup(resbd.text, 'lxml')
#
#                 # image
#                 nextnimg = str(soupbd.find('div', class_='media').img['src'])
#                 print(nextnimg)
#                 # date
#                 date = soupbd.find('p', 'dateline print-only').text
#                 # print(date)
#                 date = date.split(" ")
#                 # print("published :", date[1] ,"time :", date[2])
#                 date1 = date[1].strip()
#                 date2 = date[2].strip()
#                 nextndate = str(date1 + ' ' + date2)
#                 print(nextndate)
#                 # print(date[0],'== ', date[1],'== ',date[2],'== ',date[3] ,'==', date[4],'== ',date[5],'== ')
#                 ####### news title
#                 nextntitle = str(links[i].getText()).strip()
#                 print(type(nextntitle))
#                 print('title:' + nextntitle + '\n')
#                 ######## news source
#                 nextnsource = 'bdnews24.com'
#                 print('source' + nextnsource + '\n')
#
#                 ######## news first paragraph
#                 nextntext = str(soupbd.find('div', 'custombody print-only').p.string).strip()
#                 print(type(nextntext))
#                 print('text:' + nextntext + '\n')
#
#                 ######## news hit view
#                 nextnview = 0
#                 print('view:', nextnview)
#                 nextnhit = 0
#                 sql = "INSERT INTO news_table(news_title, news_source, news_link, news_img, news_date, news_view, news_text, news_hit) VALUES (%s,%s,%s,%s,%s,%d,%s,%d)"
#
#                 myCursor.execute("INSERT INTO news_table(news_title, news_source, news_link, news_img, news_date, news_text) VALUES (%s,%s,%s,%s,%s,%s);",(nextntitle, nextnsource, nextnlink, nextnimg, nextndate, nextntext))
#
#                 conn.commit()
#
#             print('new print: ' + links[i].attrs['href'] + '/n')
#             print('News Source: Bdnews24.com \nNews Title: ' + links[i].getText().strip() + '\n' + 'News Link: ' + str(links[i]))


conn.close()
