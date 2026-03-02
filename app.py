import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

import time
from selenium.webdriver.common.keys import Keys

from selenium import webdriver
from selenium.webdriver.chrome.options import Options


#chrome_options = webdriver.ChromeOptions()
chrome_options = Options()
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")
#driver = webdriver.Chrome(options=chrome_options)



###########################################################################################


# Define proxy (ip:port)
PROXY = "195.158.8.123:3128" 

chrome_options.add_argument(f'--proxy-server={PROXY}')

# Initialize driver with options
driver = webdriver.Chrome(options=chrome_options)
driver.set_window_size(1800, 1000) 
driver.get("https://www.whoscored.com/")
#####################################################################################################

time.sleep(15)

a=driver.find_element(By.TAG_NAME,'body')
print(a.text)
