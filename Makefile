PATH := ../node_modules/.bin:$(PATH)

SITE_SASS_DIR = assets/stylesheets
SITE_CSS_DIR = assets/css

SITE_SASS = ${SITE_SASS_DIR}/blog.scss
SITE_CSS_MIN = ${SITE_CSS_DIR}/blog.min.css
SITE_CSS = ${SITE_CSS_DIR}/blog.css


build:
	@echo "Compiling Less files"

	@mkdir -p ${SITE_CSS_DIR}
#	lessc --yui-compress ${SITE_SASS} > ${SITE_CSS_MIN}
#	lessc ${SITE_SASS} > ${SITE_CSS}
	sass ${SITE_SASS} ${SITE_CSS}

	@mv public/* ./
	@rm -r public


default: build


.PHONY: build
