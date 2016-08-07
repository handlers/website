default: dev

dependencies:
	bundle
	# prob need to install dot here or somethin

prepare_images:
	mkdir -p images
	sh generate_diagrams.sh

dev: dependencies prepare_images
	jekyll serve --drafts --config _config.yml,_config_dev.yml

publish: prepare_images
	jekyll build && \
	aws s3 rm s3://samlh.com --recursive && \
	aws s3 sync _site s3://samlh.com