# Helm Charts

A collection of helm charts for things that currently don't exist.
(So far that's one chart, and it's for the Istio-Operator)

## How-To

Create a new branch with the version you're working on.
`git checkout -b releases/1.7.X-SemVer`

Change what you need to within the chart you're working on.

Push your changes and the linting/documentation and testing action will run.

All going well, raise a push request.

Once the push request has been accepted, a new release will be automatically created.