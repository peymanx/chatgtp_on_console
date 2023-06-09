﻿# ChatGTP on Powershell

## How to Use ChatGPT CLI with PowerShell
The ChatGPT CLI (Command Line Interface) example is a PowerShell script that allows developers to interact with the ChatGPT model through the command line. With the ChatGPT CLI PowerShell script, developers can easily generate text, complete text, or answer questions using the power of the ChatGPT model. ChatGPT is a large language model developed by OpenAI that can generate human-like text.

## How to use
Download the script and put it somewhere, make sure updating the **API Key** [1] with your own; then go to the path and execute the script:

```powershell
.\chatgpt.ps1 -p "Iran Capital"
```
#### Output
`The capital of Iran is Tehran.`

You can make an alias to access the script easily everywhere like this:
`notepad $profile`
At the end of Powershell profile append this:
```powershell
Set-Alias chat c:\path\to\file\chatgpt.ps1
```

Now you can access to script by typing `chat` everywhere.


## Persian result
Ok, as a persian guy if you want to get persian result add `-fa` as a switch like:
```powershell
.\chatgpt.ps1 -p "Iran Capital" -fa
```
#### Output 
`تهران`    

![image](https://user-images.githubusercontent.com/110537772/230758081-06398cb9-ee44-451c-b50c-1d4a5c186ab1.png)

## Write a program
Describe a game or a program and redirect the output to a file like:
```powershell
.\chatgpt.ps1 -o tic-tac-toe.py
```

![image](https://user-images.githubusercontent.com/110537772/230758316-00bff19b-c2cf-4ef2-8d2a-e05feb6c844a.png)


[1] [Account API Keys - OpenAI API](https://platform.openai.com/account/api-keys)


