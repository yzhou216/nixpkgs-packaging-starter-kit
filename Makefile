# Sentinel file to track build completion, since the result directory
# is a symlink thus doesn't have a reliable timestamp.
SENTINEL = .build-sentinel
BUILD = nix build . --print-build-logs
CLEAN = result flake.lock $(SENTINEL)

all: $(SENTINEL)

$(SENTINEL): package.nix flake.nix
	touch $(SENTINEL)
	$(BUILD)

clean:
	rm -rf $(CLEAN)

init:
	nix-init package.nix

pr:
	rm -rf $(CLEAN)
	bash -O extglob -c 'rm -rf !(package.nix)'

.PHONY: all clean
