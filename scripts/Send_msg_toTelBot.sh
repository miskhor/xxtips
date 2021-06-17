#!/bin/bash

telegram_bot_token="1896116453:AAEGuIWeuS0FRgr9IDeLP6te6V4F5VsYIDs"
telegram_chat_id="75303718"

Title="$1"
Message="$2"

curl -s \
 --data parse_mode=HTML \
 --data chat_id=${telegram_chat_id} \
 --data text="<b>${Title}</b>%0A${Message}" \
 --request POST https://api.telegram.org/bot${telegram_bot_token}/sendMessage
