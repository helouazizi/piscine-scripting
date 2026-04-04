MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
export MY_MESSAGE
export MY_NUM
export MY_PI
printenv | grep -e MY_MESSAGE -e MY_NUM -e MY_PI

