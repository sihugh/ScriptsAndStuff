set THEME_NAME=darkstripes
set GIT_URL=https://github.com/amelandri/darkstripes

pushd ..\..\octopress
pushd .themes
if exist %THEME_NAME% rmdir %THEME_NAME% /S /Q
git clone %GIT_URL% %THEME_NAME%
popd
call bundle exec rake install['%THEME_NAME%']
popd