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
def cleanImage(imagePath):
    image=Image.open(imagePath)
    image=image.point(lambda x: 0 if x<143 else 255)
    borderImage=ImageOps.expand(image,border=20,fill='white')
    borderImage.save(imagePath)

html=urlopen("http://www.pythonscraping.com/humans-only")
bsObj=BeautifulSoup(html,'html.parser')
imageLocation=bsObj.find("img",{"title":"Image CAPTCHA"})["src"]
formBuildId=bsObj.find("input",{"name":"form_build_id"})["value"]
captchaSid=bsObj.find("input",{"name":"captcha_sid"})["value"]
captchaToken=bsObj.find("input",{"name":"captcha_token"})["value"]
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
    params={"captcha_token":captchaToken,"captcha_sid":captchaSid,
            "form_id":"comment_node_page_form","form_build_id":formBuildId,
            "captcha_response":captchaResponse,"name":"Ryan Mitchell",
            "subject":"I come to seek the Grail",
            "comment_body[und][0][value]":"...and I am definitely not a bot"
            }
    r=requests.post("http://www.pythonscraping.com/comment/reply/10",data=params)
    responseObj=BeautifulSoup(r.text,"html.parser")
    if responseObj.find("div",{"class":"messages"})is not None:
        print(responseObj.find("div",{"class":"messages"}).get_text())
    else:
        print("There was a problem reading the CAPTCHA correctly")



