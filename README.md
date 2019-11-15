# Jekyll Development

## EVALUATION

### PRO

- Jekyll is a Static Site Generator (SSG) which is great for content that doesn't need to change for each user. Once deployed, it's dead-simple fast and secure.
- [Jekyll has built-in support for GitHub Pages](https://help.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll). They host your content for free!
- [GitHub can host custom domains](https://help.github.com/en/github/working-with-github-pages/configuring-a-custom-domain-for-your-github-pages-site). Did I mention *free*?
- Jekyll can be run locally in a Docker container -- which saves a lot of Ruby setup and configuration time. See below for details.

### CON

- Contributing is okay for geeks, but may be too much for the uninitiated.
  - Content needs to be created and edited in Markdown.
  - Editing can be done at github.com or via IDE or text editor.
- Jekyll is written in Ruby -- which may be an issue if it's not your native language.

## LOCAL DEVELOPMENT SETUP

### REQUIREMENTS

- Git
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### INSTALL

1. Open parent directory for your development source code.
2. `git clone https://github.com/stedman/docker-jekyll my-jekyll-project`
3. `cd my-jekyll-project`
4. OPTIONAL: In the `.env` file, change `PROJECT_DIR` and/or `JEKYLL_VERSION` to suit your needs.
5. Choose your poison to install Jekyll:
  - Make: `make install`
  - Docker Compose: `docker-compose -f docker-jekyll-install.yml up`

### RUN

1. START (choose one)
  - Via Make/Docker: `make run`
  - Via Docker Compose: `docker-compose up`
2. END
  - <ctrl-c> to end Jekyll process (and stop Docker container)


## REFERENCE
- https://jekyllrb.com/docs/
- https://github.com/envygeeks/jekyll-docker
- https://pages.github.com/versions/
