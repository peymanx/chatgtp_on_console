# ChatGTP on Powershell

## How to Use ChatGPT CLI with PowerShell
The ChatGPT CLI (Command Line Interface) example is a PowerShell script that allows developers to interact with the ChatGPT model through the command line. With the ChatGPT CLI PowerShell script, developers can easily generate text, complete text, or answer questions using the power of the ChatGPT model. ChatGPT is a large language model developed by OpenAI that can generate human-like text.

## How to use
Download the script and put it somewhere, go to the path and execute the script:

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


