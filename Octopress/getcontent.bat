set GIT_URL=git@github.com:sihugh/Markdown-Files.git
set POSTS_TEMP=poststemp

pushd ..\..\octopress

if exist %POSTS_TEMP% rmdir %POSTS_TEMP% /S /Q 

git clone %GIT_URL% .\%POSTS_TEMP%
xcopy .\%POSTS_TEMP%\Blog\* .\source\_posts\ /D /S 

rmdir %POSTS_TEMP% /S /Q

popd