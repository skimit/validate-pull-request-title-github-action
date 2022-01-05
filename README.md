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
      - name: Pull Request Title Validation
        uses: skimit/validate-pull-request-title-github-action@v1.1.0
        with:
          pr-title: "${{ github.event.pull_request.title }}"
```

## Motivation
[Deeper Insights](https://deeperinsights.com)™ mission is to empower people to use data more effectively and to demystify artificial intelligence. Rather than holding up the common narrative of machines replacing humans, we see how machines can help humans to have easier lives and better businesses. Creating bespoke solutions is part of our DNA. We came up with this solution to help our specialists focus on delivering the best version of their work, using automation to take care of the repetitive tasks.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
