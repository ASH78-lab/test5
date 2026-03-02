import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

import time
from selenium.webdriver.common.keys import Keys




chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")
driver = webdriver.Chrome(options=chrome_options)
driver.set_window_size(1800, 1000) 
#####################################################################################################
y='https://www.meteopt.com/modelos/gfs?lat=55.752&lon=37.616&lang=en'

driver.get(y)
time.sleep(15)

a=driver.find_element(By.TAG_NAME,'body')
print(a.text)
