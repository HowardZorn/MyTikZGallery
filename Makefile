IMAGE_FILES := $(wildcard */*.tex)

all: images

images:
	for file in $(IMAGE_FILES); do \
		latexmk -output-directory=output -xelatex $$file; \
	done
