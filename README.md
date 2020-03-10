# Description
Arke is an interface designed messages from your long running processes
through the command line or in python through a standard interface. This
project is in the early stages of its development and will hopefully come
to provide a standard API for users to develop against.

## Settings
The API keys can be stored in a file `~/.config/hermes/settings.json` with
the following format:
```
{
    "discord_key" : "your discord key",
    "twillio" : {
        "number": "your number",
	    "account_sid": "your account sid",
	    "auth_token": "your auth token"
    }
}
```

Alternatively you may provide the relevant API keys as a token with a method
specific format.
