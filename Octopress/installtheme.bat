set THEME_NAME=darkstripes
set GIT_URL=https://github.com/amelandri/darkstripes

pushd ..\..\octopress
git clone %GIT_URL% .themes/%THEME_NAME%
rake install['%THEME_NAME%']
popd