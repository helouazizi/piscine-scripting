curl https://learn.zone01oujda.ma/assets/devops-branch/HeadTail.txt -s | (head -1 && tail -1)
#head close input so curl raise error because it can't write -s to silence curl
