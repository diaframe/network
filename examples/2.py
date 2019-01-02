from urllib.request import urlretrieve
from urllib.request import urlopen
from bs4 import BeautifulSoup
import subprocess
import pytesseract
import requests
from PIL import Image
from PIL import ImageOps
headers = {
    'accept': '*/*',
    'accept-encoding':'gzip, deflate, br',
    'accept-language':'zh-CN,zh;q=0.9',
    'content-length':'39',
    'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
    'cookie':'__cfduid=d08c04ab18e3610a3d8fcb7df35dc4ee81539311979;isml_lang=en; ci_session=ikdc69is9rs65rp4s4avc42qlhbhflj8; isml_voting_token=52437048421a634b58a41873f46dd52a86cefa1f0f4112a6769d4a3cac00523f; cf_clearance=c84e99dc711622c05f83399a56d7b16470d15d39-1544342923-1800-150',
    'origin': 'https://www.internationalsaimoe.com',
    'referer': 'https://www.internationalsaimoe.com/voting/',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36',
    'x-requested-with': 'XMLHttpRequest'
}
html=urlopen("https://mail.126.com/")
bsObj=BeautifulSoup(html,'html.parser')
email=bsObj.find("input",{"name":"email"})["value"]
password=bsObj.find("input",{"name":"password"})["value"]
params={ }
    r=requests.post("http://www.pythonscraping.com/comment/reply/10",data=params)
    responseObj=BeautifulSoup(r.text,"html.parser")
    if responseObj.find("div",{"class":"messages"})is not None:
        print(responseObj.find("div",{"class":"messages"}).get_text())
    else:
        print("There was a problem reading the CAPTCHA correctly")



