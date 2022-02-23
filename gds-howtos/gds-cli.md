# GDS CLI

## Installation

```
brew install --cask aws-vault
brew install alphagov/gds/gds-cli
```

## Configuration

```
gds-cli config email lewis.westbury@digital.cabinet-office.gov.uk
gds-cli config ask-for-mfa
```

Sign in to something...

```
gds-cli aws di-ipv-dev -l
```

This will trigger fetch of AWS credentials.
