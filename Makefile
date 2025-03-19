.PHONY: push degit

push:
	git add -A
	git commit -m "chore: Regular code maintenance"
	git push origin main

degit:
	git push origin --delete gh-pages
	# git push origin :refs/tags/v1.0
	rm -rf ./.git
	git init
	git remote add origin git@github.com:161043261/cv.git
	git add -A
	git commit -m "feat: Introduce new feature"
	git push -f origin main --set-upstream
