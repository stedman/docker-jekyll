# If you really prefer Makefiles, here's your solution

CURRENT_DIR=$(shell pwd)

# Scaffold a new Jekyll app in current directory.
install:
	docker run --rm -it \
	-p 4000:4000 \
	--volume="$(CURRENT_DIR):/srv/jekyll" \
	--volume="$(CURRENT_DIR)/vendor/bundle:/usr/local/bundle" \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll new .

# Build and serve Jekyll app from current directory.
# `make run` starts the process. View at http://localhost:4000
# [ctrl-c] stops the process.
run:
	docker run --rm -it \
	-p 4000:4000 \
	--volume="$(CURRENT_DIR)/.:/srv/jekyll" \
	--volume="$(CURRENT_DIR)/vendor/bundle:/usr/local/bundle" \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll serve --watch --force-polling
