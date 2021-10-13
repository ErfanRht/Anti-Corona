from selenium import webdriver
from bs4 import BeautifulSoup
from time import sleep
import requests
import json
import sys
import os
import re

######### Tools #########
def Check(xpath):
    status = ''
    while status != 'ok!':
        try:
            driver.find_element_by_xpath(xpath)
            status = 'ok!'
        except:
            pass

def getText(xpath):
    text = driver.find_element_by_xpath(xpath).text
    return text

def SendKey(xpath, key):
    driver.find_element_by_xpath(xpath).send_keys(key)

def ClearField(xpath):
    driver.find_element_by_xpath(xpath).clear()

def Click(xpath):
    driver.find_element_by_xpath(xpath).click()

def TryClick(xpath):
    status = ''
    while status != 'ok!':
        try:
            driver.find_element_by_xpath(xpath).click()
            status = 'ok!'
        except:
            pass


######### Functions #########
def get_data():
    # Get iran coronavirus statistics
    database = requests.get('https://www.worldometers.info/coronavirus/')
    database = BeautifulSoup(database.text, 'html.parser')

    total_rows = database.find(id="main_table_countries_today").text

    iran_row = re.findall(r".*(\d*\nIran\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n).*", total_rows)[0].replace('+', '').split('\n')
    iran_total_cases = iran_row[2].strip()
    iran_total_deaths = iran_row[4].strip()
    iran_total_recovered = iran_row[6].strip()
    iran_active_cases = iran_row[8].strip()
    iran_serious_cases = iran_row[10].strip()
    iran_new_cases = iran_row[3].strip()
    iran_new_deaths = iran_row[5].strip()
    iran_new_recovered = iran_row[7].strip()


    # Get global coronavirus statistics
    total_rows2 = database.find_all(class_="total_row")
    total_rows2 = total_rows2[-1].text
    data = total_rows2.replace('Total:', '').replace('All', '').replace('+', '').strip().split('\n')

    global_total_cases = data[0].strip()
    global_new_cases = data[1].strip()
    global_total_deaths = data[2].strip()
    global_new_deaths = data[3].strip()
    global_total_recovered = data[4].strip()
    global_new_recovered = data[5].strip()
    global_active_cases = data[6].strip()
    global_serious_cases = data[7].strip()

    if iran_active_cases == '' or iran_serious_cases == '' or iran_new_cases == '' or iran_new_deaths == '' or iran_new_recovered == '':
        print('No data for Iran')
        sys.exit()
        return

    # Save data to json file
    open("statistics.json", 'w').write(
        json.dumps({
            "iran": {
                "total_cases": iran_total_cases,
                "total_deaths": iran_total_deaths,
                "total_recovered": iran_total_recovered,
                "active_cases": iran_active_cases,
                "serious_cases": iran_serious_cases,
                "new_cases": iran_new_cases,
                "new_deaths": iran_new_deaths,
                "new_recovered": iran_new_recovered
            },
            "global": {
                "total_cases": global_total_cases,
                "total_deaths": global_total_deaths,
                "total_recovered": global_total_recovered,
                "active_cases": global_active_cases,
                "serious_cases": global_serious_cases,
                "new_cases": global_new_cases,
                "new_deaths": global_new_deaths,
                "new_recovered": global_new_recovered
            }
        })
    )

def send_data(driver):
    driver.get('https://www.pythonanywhere.com/login/')

    SendKey('//*[@id="id_auth-username"]', "AntiCorona")
    SendKey('//*[@id="id_auth-password"]', "11571847")

    Click('//*[@id="id_next"]')

    driver.get('https://www.pythonanywhere.com/user/AntiCorona/files/home/AntiCorona/web')

    Click('//*[@id="id_upload_button"]')

get_data()

driver = webdriver.Chrome(executable_path='/home/iman/Desktop/Python-Projects/tools' + '/chromedriver') # chromedriver patch
send_data(driver)