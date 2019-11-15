CURRENT_DIR=$(shell pwd)

install:
	docker run --rm -it \
	-p 4000:4000 \
	--volume="$(CURRENT_DIR):/srv/jekyll" \
	--volume="$(CURRENT_DIR)/vendor/bundle:/usr/local/bundle" \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll new $(PROJECT_DIR)

run:
	docker run --rm -it \
	-p 4000:4000 \
	--volume="$(CURRENT_DIR)/$(PROJECT_DIR):/srv/jekyll" \
	--volume="$(CURRENT_DIR)/vendor/bundle:/usr/local/bundle" \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll serve --watch --force-polling
