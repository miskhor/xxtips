#!/bin/bash

telegram_bot_token="1702731795:AAGr5P-pRfxD_BF1rJlw-DYR8N9FTP8nyXk"
telegram_chat_id="75303718"

Title="$1"
Message="$2"

curl -s \
 --data parse_mode=HTML \
 --data chat_id=${telegram_chat_id} \
 --data text="<b>${Title}</b>%0A${Message}" \
 --request POST https://api.telegram.org/bot${telegram_bot_token}/sendMessage
