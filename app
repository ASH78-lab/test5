TOKEN1="440d864051de61f4b6463f10f8006898192b7420"
TOKEN3="ash789@avid-stone-461407-q5.iam.gserviceaccount.com"
TOKEN4 ="116197129399001621585"
TOKEN5="https://www.googleapis.com/robot/v1/metadata/x509/ash789%40avid-stone-461407-q5.iam.gserviceaccount.com"

credentials={
  "type": "service_account",
  "project_id": "avid-stone-461407-q5",
  "private_key_id": TOKEN1,
  "private_key": TOKEN2,
  "client_email": TOKEN3,
  "client_id": TOKEN4,
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": TOKEN5,
  "universe_domain": "googleapis.com"}
import gspread
import pandas as pd
gc = gspread.service_account_from_dict(credentials)


wks2 = gc.open("Test789").get_worksheet(3)
list_of_lists = wks2.get_all_values()
df5 = pd.DataFrame(list_of_lists)

new_header = df5.iloc[0]  # берем первую строку как заголовок
df5 = df5[1:]
# переименовываем столбцы
df5.rename(columns=new_header, inplace=True) 
df5=df5[['col1','col2']]

df5=df5[df5['col2']=='pin']
znach=int(df5['col1'])
if znach==1:
    print(1)
else:
    print(2)


import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
from selenium.webdriver.common.keys import Keys
from datetime import datetime
import requests
from selenium.webdriver.firefox.options import Options
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException
def pin_tod():
  import os
  date_new53 = str(datetime.now())
  print(date_new53)
  a123=time.time()
  
  
  
  
  
  
  
  
  
  
  
  chrome_options = webdriver.ChromeOptions()
  chrome_options.add_argument("--no-sandbox")
  chrome_options.add_argument("--headless")
  chrome_options.add_argument("--disable-gpu")
  driver = webdriver.Chrome(options=chrome_options)
  
  
  
  
  driver.set_window_size(1800, 1000)
  driver.get("https://www.apuestasegura.xyz/en/soccer/leagues/")
  time.sleep(10)
  driver.find_element(By.TAG_NAME,'body').send_keys(Keys.END)
      
  time.sleep(5)
  link=[
  'https://www.apuestasegura.xyz/en/soccer/england-efl-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/england-fa-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/england-premier-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/england-community-shield/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/england-championship/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/france-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/france-ligue-1/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/2a/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/germany-bundesliga/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/germany-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/germany-super-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/germany-bundesliga-2/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/italy-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/italy-serie-a/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/italy-super-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/spain-copa-del-rey/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/spain-la-liga/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/spain-super-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/russia-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/russia-premier-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/russia-super-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/russia-first-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-champions-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-europa-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-conference-league/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-euro-qualifiers/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-euro/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-super-cup/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-nations-league-a/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-nations-league-b/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-nations-league-c/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-nations-league-d/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/uefa-nations-league-playoffs/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/fifa-world-cup-qualifiers-europe/matchups/',
  'https://www.apuestasegura.xyz/en/soccer/international-friendlies/matchups/'
      
  ]
  c=driver.find_elements(By.CLASS_NAME, 'left-A8XnP7hDwq')
  c2=driver.find_elements(By.CLASS_NAME, 'noLeftIcon-eilI5wVXDk')
          
  c3=[]
  c4=[]
  for i in c:
      c3.append(int(i.text))
            
  for i in c2:
  
      c4.append(i.get_attribute("href"))
  asd = dict(zip(c4, c3))
  pot2=[]
  for key, value in asd.items():
      if value >1:
          
          pot2.append(key)
      
  all_pin=[]
  for i in link:
      if i in pot2:
          all_pin.append(i+'#period:0')
  
  
  
  from datetime import datetime
  current_datetime = str(datetime.now())
  b=current_datetime.split("-")
  c=b[0]
  d=b[1]
  e=b[2].split(" ")
  f=e[0]
  g=e[1]
  kl=g.split(".")
  io=kl[0]
  ty=io.replace(io[:2],str(int(io[:2])+3))
  date_new256=f+'.'+d+'.'+c+'  '+ty
  
  #---------------------------------------------------
  
  
  data=[]
    
  for i in all_pin:
      driver.get(i) 
      time.sleep(20)
      try:
          tournemebt=driver.find_elements(By.CLASS_NAME, 'textLabel-lNJMfvP1Hd')[1].text
          if "UEFA - Nations League" in tournemebt:
              tournemebt="UEFA - Nations League"
          elif "Regions Path" in tournemebt:
              tournemebt="Russia - Cup"
          elif "Spain - Super Cup" in tournemebt:
              tournemebt="Spain - Copa del Rey"
          elif "Italy - Super Cup" in tournemebt:
              tournemebt="Italy - Cup"
          elif "England - FA Cup" in tournemebt:
              tournemebt="England - EFL Cup"
          rd=driver.find_elements(By.XPATH,'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div/div/div')
          er=len(rd)+1    
      
      
          
          for j in range(1,er):
              try:
                  ert=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]').text
              
              
              
              
              
              
              
                  if "HANDICAP" in ert:
                      
                  
                      ert=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{c}]').text
              
                      
                      current_datetime = str(datetime.now())
                      b=current_datetime.split("-")
                      cee=b[0]
                      d=b[1]
                      e=b[2].split(" ")
                      f=e[0]
                      date_new=f+'.'+d+'.'+cee
                      f2=str(int(f)+1)
                      date_new2=f2+'.'+d+'.'+cee
                      if "TODAY" in ert:
                      
                  
                          ert=date_new
                      elif "TOMORROW" in ert:
                      
                  
                          ert=date_new2
                      else:
                          ert=ert.split(", ")
                          b255=ert[1].split(" ")
                          c255=b255[1]
                          date1=c255+'.'+'09'+'.'+ert[2]
                          r255=b255[0]
                          if r255=="SEP":
                              u5o255="09"
                          elif r255=="OCT":
                              u5o255="10"
                          elif r255=="NOV":
                              u5o255="11"
                          elif r255=="DEC":
                              u5o255="12"
                          elif r255=="JAN":
                              u5o255="01"
                          elif r255=="FEB":
                              u5o255="02"
                          elif r255=="MAR":
                              u5o255="03"
                          elif r255=="APR":
                              u5o255="04"   
                          elif r255=="MAY":
                              u5o255="05" 
                          elif r255=="JUN":
                              u5o255="06" 
                          
                          ert=c255+'.'+u5o255+'.'+ert[2]        
              
                  
                  elif "(Match)" in ert:
                      
                  
                      ert=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{c}]').text
              
              
              
                      current_datetime = str(datetime.now())
                      b=current_datetime.split("-")
                      cee=b[0]
                      d=b[1]
                      e=b[2].split(" ")
                      f=e[0]
                      date_new=f+'.'+d+'.'+cee
                      f2=str(int(f)+1)
                      date_new2=f2+'.'+d+'.'+cee
                      if "TODAY" in ert:
                      
                  
                          ert=date_new
                      elif "TOMORROW" in ert:
                      
                  
                          ert=date_new2
                      else:
                          ert=ert.split(", ")
                          b255=ert[1].split(" ")
                          c255=b255[1]
                          date1=c255+'.'+'09'+'.'+ert[2]
                          r255=b255[0]
                          if r255=="SEP":
                              u5o255="09"
                          elif r255=="OCT":
                              u5o255="10"
                          elif r255=="NOV":
                              u5o255="11"
                          elif r255=="DEC":
                              u5o255="12"
                          elif r255=="JAN":
                              u5o255="01"
                          elif r255=="FEB":
                              u5o255="02"
                          elif r255=="MAR":
                              u5o255="03"
                          elif r255=="APR":
                              u5o255="04"   
                          elif r255=="MAY":
                              u5o255="05" 
                          elif r255=="JUN":
                              u5o255="06" 
                          
                          ert=c255+'.'+u5o255+'.'+ert[2]
              
              
              
              
              
                  
                  else:
                      ert=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]').text
                      c=j
              
                      current_datetime = str(datetime.now())
                      b=current_datetime.split("-")
                      cee=b[0]
                      d=b[1]
                      e=b[2].split(" ")
                      f=e[0]
                      date_new=f+'.'+d+'.'+cee
                      f2=str(int(f)+1)
                      date_new2=f2+'.'+d+'.'+cee
                      
                      if "TODAY" in ert:
                      
                  
                          ert=date_new
                      elif "TOMORROW" in ert:
                      
                  
                          ert=date_new2
                      else:
                      
                  
                          ert=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]').text
                          
                          ert=ert.split(", ")
                          b255=ert[1].split(" ")
                          c255=b255[1]
                          date1=c255+'.'+'09'+'.'+ert[2]
                          r255=b255[0]
                          if r255=="SEP":
                              u5o255="09"
                          elif r255=="OCT":
                              u5o255="10"
                          elif r255=="NOV":
                              u5o255="11"
                          elif r255=="DEC":
                              u5o255="12"
                          elif r255=="JAN":
                              u5o255="01"
                          elif r255=="FEB":
                              u5o255="02"
                          elif r255=="MAR":
                              u5o255="03"
                          elif r255=="APR":
                              u5o255="04"   
                          elif r255=="MAY":
                              u5o255="05" 
                          elif r255=="JUN":
                              u5o255="06" 
                          elif r255=="JUL":
                              u5o255="07" 
                          elif r255=="AUG":
                              u5o255="08" 
                              
                          ert=c255+'.'+u5o255+'.'+ert[2]
              
              
              
              
              
               
              
               
                  try:
                          ert2=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[1]/div/a/div/div/div[3]').text
                          ert209=ert2.split(":")
                          ert210=int(ert209[0])+3
                          ert211=str(ert210)+":"+ert209[1]
                          
                          
                      
                          
                      
                  except NoSuchElementException:
                          ert211='-'
                          
                  try:
                      ert3=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[1]/div/a/div/div/div[1]/span').text
                      ert3=ert3.split(" (")
                      ert3=ert3[0]
                      
                  except NoSuchElementException:
                      ert3='-'
                  try:
                      ert4=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[1]/div/a/div/div/div[2]/span').text
                      ert4=ert4.split(" (")
                      ert4=ert4[0]
                      
                  except NoSuchElementException:
                      ert4='-'
                          
                  try:
                      ert5=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[2]/div[1]/button/span').text
                     
                      #ert5=float(ert5)
              
                      
                  except NoSuchElementException:
                      ert5='-'
                  try:
                      ert6=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[2]/div[2]/button/span').text
                     
                      #ert6=float(ert6)
                      
                  except NoSuchElementException:
                      ert6='-'
                          
                  try:
                      ert7=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[2]/div[3]/button/span').text
                      
                      #ert7=float(ert7)
                      
                  except NoSuchElementException:
                      ert7='-'
                  try:
                      ert8=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[3]/div[1]/button/span[1]').text
                     
                      #ert8=float(ert8)
                      
                  except NoSuchElementException:
                      ert8='-'
                          
                  try:
                      ert9=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[3]/div[1]/button/span[2]').text
                      
                      #ert9=float(ert9)
                      
                  except NoSuchElementException:
                      ert9='-'
                          
                  try:
                      ert10=driver.find_element(By.XPATH,f'/html/body/div[2]/div[1]/div[2]/main/div/div[4]/div[2]/div/div[{j}]/div[3]/div[2]/button/span[2]').text
                      
                      #ert10=float(ert10)
                      
                  except NoSuchElementException:
                      ert10='-'
                  ert11=date_new256
                          
                  data.append([ert,ert211,tournemebt,ert3,ert4,ert5,ert6,ert7,ert8,ert9,ert10,ert11])
              except (NoSuchElementException,IndexError):
                  pass
  
      except (NoSuchElementException,IndexError):
          pass
                  
                  
  
  driver.quit()
  header = ['date',
   'time',
   'league',
   'Столбец3',
   'Столбец4',
   '1',
   'X',
   '2',
   'handicap',
   'H',
   'A',
   'Столбец11']
  df = pd.DataFrame(data, columns=header)
  df = df.loc[df['1'] != '-']
  print(df)
  driver.quit()
  date_new533 = str(datetime.now())
  print(date_new533)
  
  b123=time.time()
  delta1=b123-a123
  name_fun='Pinnacle'
  data=[]
  data.append([date_new53,date_new533,delta1,name_fun])

  
  header = ['run',
      'end',
      'delta',
      'name']
  df2 = pd.DataFrame(data, columns=header)
  print(df,df2)


  wer = gc.open("Test789").sheet1
  wer.update([df.columns.values.tolist()]+df.values.tolist())
  
  wks2 = gc.open("Test789").get_worksheet(1)
  list_of_lists = wks2.get_all_values()
  df5 = pd.DataFrame(list_of_lists)
  new_header = df5.iloc[0]
  df5 = df5[1:]
  df5.rename(columns=new_header, inplace=True)
  df7=pd.concat([df5,df2])
  wks2.update([df7.columns.values.tolist()]+df7.values.tolist())

gc = gspread.service_account_from_dict(credentials)


wks2 = gc.open("Test789").get_worksheet(3)
list_of_lists = wks2.get_all_values()
df5 = pd.DataFrame(list_of_lists)

new_header = df5.iloc[0]  # берем первую строку как заголовок
df5 = df5[1:]
# переименовываем столбцы
df5.rename(columns=new_header, inplace=True) 
df5=df5[['col1','col2']]

df5=df5[df5['col2']=='pin']
znach=int(df5['col1'])
if znach==1:
    pin_tod()
else:
    pass
