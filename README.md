# Pull Request Title Validation GitHub Action
This action validates any Pull Request title to verify if it contains the ticket ID followed by a small description.

## Inputs

### `pr-title`

**Required** The title of the Pull Request.

## Example usage

```yaml
name: 'Validate Pull Request Title'
on:
  pull_request:
    types:
      - opened
      - reopened
      - edited
      - synchronize

jobs:
  validate-pr-title:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Validate PR Title
        uses: actions/pull-request-title-validation@v1
        with:
          pr-title: "${{ github.event.pull_request.title }}"
```
