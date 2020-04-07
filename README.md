# Jekyll Development

## EVALUATION

### Pro

- Jekyll is a Static Site Generator (SSG) which is great for content that doesn't need to change for each user. Once deployed, it's dead-simple fast and secure.
- [Jekyll has built-in support for GitHub Pages](https://help.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll). They host your content for free!
- [GitHub can host custom domains](https://help.github.com/en/github/working-with-github-pages/configuring-a-custom-domain-for-your-github-pages-site). Did I mention *free*?
- Jekyll can be run locally in a Docker container—which saves a lot of Ruby setup and configuration time. See below for details.

### Con

- Contributing is okay for geeks, but may be too much for the uninitiated.
    - Content needs to be created and edited in Markdown.
    - Editing can be done at github.com or via IDE or text editor.
- Jekyll is written in Ruby—which may be an issue if it's not your native language.

## LOCAL DEVELOPMENT SETUP

### Requirememts

- Git
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Install a new Jekyll app

1. Clone this repo to a local directory.

    ```sh
    git clone https://github.com/stedman/docker-jekyll my-jekyll-app
    cd my-jekyll-app
    ```

1. OPTIONAL: In the `.env` file, change `JEKYLL_VERSION` to suit your needs.
1. Run Docker Compose.

    ```sh
    docker-compose -f docker-compose-jekyll-new.yml up
    ```

### Build and serve an existing Jekyll app

1. If you don't already have the `.env` and `docker-compose.yml` files in your Jekyll app directory, please cut and paste the contents of those files from this repo.
1. Start Jekyll server (from the app directory).

    ```sh
    docker-compose up
    ```

1. Stop Jekyll server.

    ```sh
    docker-compose down
    ```

## REFERENCE
- [Jekyll documentation](https://jekyllrb.com/docs/)
- [Jekyll Docker repo](https://github.com/envygeeks/jekyll-docker)
- [GitHub Pages versions](https://pages.github.com/versions/) (GitHub's environment and dependencies)
- [Running Jekyll in Docker](https://ddewaele.github.io/running-jekyll-in-docker/) (tutorial)
