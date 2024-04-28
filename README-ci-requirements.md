# Continuous Integration Requirements

## GitHub Organization Setting
The workflow permissions (under General actions permissions) must be set to have both read and write permissions.  Otherwise, running GitHub Actions results in the message `denied: installation not allowed to Write organization package` when attempting to publish the Docker image.

## Personal Access Token and Repository Secret
* The repository needs a repository secret named SPECIAL_TOKEN (specified in the yml files in the .github/workflows directory).
* A personal access token is required.
* This personal access token must have the delete:packages scope enabled.
* The value of the secret environment variable SPECIAL_TOKEN must be that of the personal access token.
* Until you meet all of these requirements, GitHub Actions will fail when attempting to delete old Docker images.

## Maintenance Required
* When the personal access token expires, it must be replaced with a new one.
* The value of the secret environment variable SPECIAL_TOKEN must be updated to that of the personal access token.
* Until the personal access token and repository secret requirements are met, GitHub Actions will continue to fail when attempting to delete old Docker images.
