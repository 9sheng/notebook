EMACS=emacs
EMACS_OPTS=-nw -l "publish-config.el" -f "myweb-publish" -f "save-buffers-kill-terminal"
EMACS_OPTS_FORCE=-nw -l "publish-config.el" -f "myweb-publish-force" -f "save-buffers-kill-terminal"

.PHONY: all gen force

all: gen

gen:
	@echo "Generating HTML..."
	$(EMACS) $(EMACS_OPTS)
	@echo "HTML generation done"

force:
	@echo "Force generating all HTML..."
	$(EMACS) $(EMACS_OPTS_FORCE)
	@echo "HTML generation done"
