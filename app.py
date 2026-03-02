import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

import time
from selenium.webdriver.common.keys import Keys

from selenium import webdriver
from selenium.webdriver.chrome.options import Options

from selenium_stealth import stealth

#chrome_options = webdriver.ChromeOptions()
chrome_options = Options()
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")
#driver = webdriver.Chrome(options=chrome_options)



###########################################################################################






chrome_options.add_experimental_option("excludeSwitches", ["enable-automation"])
chrome_options.add_experimental_option('useAutomationExtension', False)





# Define proxy (ip:port)
PROXY = "195.158.8.123:3128" 

chrome_options.add_argument(f'--proxy-server={PROXY}')

# Initialize driver with options
driver = webdriver.Chrome(options=chrome_options)
driver.set_window_size(1800, 1000) 

stealth(driver,
        languages=["en-US", "en"],
        vendor="Google Inc.",
        platform="Win32",
        webgl_vendor="Intel Inc.",
        renderer="Intel Iris OpenGL Engine",
        fix_hairline=True,
        )

driver.get("https://www.whoscored.com/")
#####################################################################################################

time.sleep(25)

a=driver.find_element(By.TAG_NAME,'body')
print(a.text)
#########################################################################################################
try:

    but_cook = driver.find_element(By.XPATH,"/html/body/div[6]/div/div[1]/div/button")
    driver.execute_script("arguments[0].click();", but_cook)

except:
    pass

time.sleep(1)
element = driver.find_element(By.TAG_NAME,'body')
element.send_keys(Keys.ESCAPE)
time.sleep(1)


link_preview=driver.find_elements(By.CLASS_NAME,'Match-module_previewBtn__mYHIm')
asd=[]

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
date_new256=f+'.'+d+'.'+c

data=[]
asd5=[]
asd2=[
"europe-champions-league",
"europe-europa-league",
"europe-conference-league",
"england-premier-league" ,
'international-world-cup-qualification-uefa',
"spain-laliga",
"germany-bundesliga-",
"france-ligue-1",
'italy-serie-a',
"england-league-cup",
'england-fa-cup'

]

data=[]


for i in link_preview:
        a=i.get_attribute('href')
        for b in asd2:
          if b in a:
              asd5.append(a)
          else:
              pass
time.sleep(2)
for i in asd5:
        driver.get(i) 
        time.sleep(6)
        element = driver.find_element(By.TAG_NAME,'body')
        element.send_keys(Keys.ESCAPE)
   
        time.sleep(2)
        
        
        a1=driver.find_elements(By.CLASS_NAME,'team-link')
        
        name1=a1[0].text
        name2=a1[2].text
        try:
          a2=driver.find_element(By.CLASS_NAME,'small-display-on').find_element(By.CLASS_NAME,'gray')
          b=a2.text
          count1=int(b.count("Out"))+int(b.count("Doubtful"))*0.5
        except NoSuchElementException :
          count1=0
        try:
          a3=driver.find_element(By.CLASS_NAME,'small-display-off').find_element(By.CLASS_NAME,'gray')
          b2=a3.text
          count2=int(b2.count("Out"))+int(b2.count("Doubtful"))*0.5
        except NoSuchElementException :
          count2=0
        print(name1,count1,name2,count2)
        data.append([date_new256,name1,count1])
        data.append([date_new256,name2,count2])
        data2.append([name1,count1,name2,count2])
driver.quit()

header = ['1','2','3'] 
df = pd.DataFrame(data, columns=header)
header2 = ['1','2','3','4'] 
df4 = pd.DataFrame(data2, columns=header2)
df3 = pd.concat([
      df,
      df2
  ])
print(df3)

