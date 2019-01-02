# import urllib.request
# url="https://mikoto.us/"
# # p1 = r'(?<=<div class="ds_cr">)(.*?)(?=<div id="pageurl">)'
# # p1 = r'(?<=<div class="ds_cr">)([\s\S]*?)(?=<div id="pageurl">)'
# user_agent = 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
# req = urllib.request.Request(url, headers={
#     'User-Agent': 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
# })
# response = urllib.request.urlopen(url)
# content = response.read().decode('utf-8','ignore')
# file=open('/Users/youzh/Desktop/file.txt','w',encoding="utf-8")
# file.write(content)
# input()
# import requests
# # params={'firstname':'Ryan','lastname':'Mitchell'}
# # r=requests.post("http://www.pythonscraping.com/pages/files/processing.php",data=params)
# # print(r.text)
from urllib.request import urlretrieve
from urllib.request import urlopen
from bs4 import BeautifulSoup
import subprocess
import pytesseract
import requests
from PIL import Image
from PIL import ImageOps
def cleanImage(imagePath):
    image=Image.open(imagePath)
    image=image.point(lambda x: 0 if x<143 else 255)
    borderImage=ImageOps.expand(image,border=20,fill='white')
    borderImage.save(imagePath)

html=urlopen("https://www.internationalsaimoe.com/voting")
bsObj=BeautifulSoup(html,'html.parser')
imageLocation=bsObj.find("img",{"id":"voting_captcha"})["src"]
votingToken=bsObj.find("input",{"name":"voting_token"})["value"]
captchaToken=bsObj.find("input",{"name":"captcha_token"})["value"]
Min=bsObj.find("input",{"name":"min[0]"})["value"]
arenaNum=bsObj.find("input",{"name":"arena_num[0]"})["value"]
Max=bsObj.find("input",{"name":"max[0]"})["value"]
arenaToken=bsObj.find("input",{"name":"arena_token[0]"})["value"]
contestant1=bsObj.find("input",{"name":"contestant[1][0]"})["value"]
contestant2=bsObj.find("input",{"name":"contestant[2][0]"})["value"]
contestant3=bsObj.find("input",{"name":"contestant[3][0]"})["value"]
contestant4=bsObj.find("input",{"name":"contestant[4][0]"})["value"]
contestant5=bsObj.find("input",{"name":"contestant[5][0]"})["value"]
contestant6=bsObj.find("input",{"name":"contestant[6][0]"})["value"]
contestant7=bsObj.find("input",{"name":"contestant[7][0]"})["value"]
contestant8=bsObj.find("input",{"name":"contestant[8][0]"})["value"]
contestant9=bsObj.find("input",{"name":"contestant[9][0]"})["value"]
contestant10=bsObj.find("input",{"name":"contestant[10][0]"})["value"]
contestant11=bsObj.find("input",{"name":"contestant[11][0]"})["value"]
contestant12=bsObj.find("input",{"name":"contestant[12][0]"})["value"]
contestant13=bsObj.find("input",{"name":"contestant[13][0]"})["value"]
contestant14=bsObj.find("input",{"name":"contestant[14][0]"})["value"]
contestant15=bsObj.find("input",{"name":"contestant[15][0]"})["value"]
captchaUrl="http://pythonscraping.com"+imageLocation
urlretrieve(captchaUrl,"captcha.jpg")
cleanImage("captcha.jpg")
p=subprocess.Popen(["tesseract","captcha.jpg","captcha"],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
p.wait()
text=pytesseract.image_to_string(Image.open('captcha.jpg'),lang='chi_sim')
f=open("captcha.txt","w")
f.write(text)
f=open("captcha.txt","r")
captchaResponse=f.read().replace(" ","").replace("\n","")
print("Captcha solution attempt :"+captchaResponse)
if len(captchaResponse)==5:
    params={"voting_token":votingToken,"captcha_token":captchaToken,
            "min[0]":Min,"arena_num[0]":arenaNum,
            "max[0]":Max,"arena_num[0]":arenaToken,
            }
    r=requests.post("https://www.internationalsaimoe.com/voting",data=params)
    responseObj=BeautifulSoup(r.text,"html.parser")
    if responseObj.find("div",{"class":"messages"})is not None:
        print(responseObj.find("div",{"class":"messages"}).get_text())
    else:
        print("There was a problem reading the CAPTCHA correctly")

