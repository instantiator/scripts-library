# scripts-library

Scripts I use and share. OS X.

* `init-dev-laptop.sh` - initialises a dev laptop with SSH key, dev tools, IDEs
* `create-prototype.sh` - creates a GOV.UK prototype

## Initialising a laptop

```bash
./init-dev-laptop.sh
```

You will be prompted for your device password, likely a couple of times during the process. You will need to provide a passphrase for your SSH key - and you'll be prompted to add that key to your github account.

## Creating a GOV.UK prototype

```bash
./create-prototype.sh <name>
```

The GOV.UK [prototyping kit](https://govuk-prototype-kit.herokuapp.com/docs) requires [NodeJS 14](https://nodejs.org/en/download/).

