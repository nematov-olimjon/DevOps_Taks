 2003  git init
 2004  lla
 2005  ll
 2006  git remote add origin https://github.com/nematov-olimjon/DevOps_Taks.git
 2007  mkdir Task1
 2008  cd Task1/
 2009  touch README.md
 2010  cd ..
 2011  ll
 2012  git add .
 2013  git commit -m "Task1/README.md added"
 2014  git push -u origin master
 2015  git checkout -b dev
 2016  touch test_sample.py
 2017  git add .
 2018  git commit
 2019  git push origin dev
 2020  git remote -v
 2021  git remote set-url origin origin git@github.com:nematov-olimjon/DevOps_Taks
 2022  git remote set-url origin git@github.com:nematov-olimjon/DevOps_Taks
 2023  git remote -v
 2024  git push origin dev
 2025  git checkout -b %nematov-olimjon-new_feature
 2026  git status
 2027  vim .gitignore
 2028  git add .
 2029  git commit -m "Added .gitignore"
 2030  git status
 2031  ls
 2032  ll
 2033  git add .git/
 2034  git status
 2035  git add .gitignore
 2036  vim .gitignore 
 2037  git add .
 2038  git status
 2039  vim .git/
 2040  vim .gitignore 
 2041  git add -f .gitignore
 2042  git staus
 2043  git status
 2044  git commit -m "Added .gitignore"
 2045  git push origin -u %nematov-olimjon-new_feature
 2046  git pull
 2047  git checkout master
 2048  git pull
 2049  git checkout dev
 2050  git pull
 2051  git branch --set-upstream-to=origin/dev dev
 2052  git pull
 2053  git checkout %nematov-olimjon-new_feature 
 2054  ls
 2055  ll
 2056  tree -L 2
 2057  vim README.md
 2058  git add .
 2059  git commit -m "Added README.md"
 2060  git push origin %nematov-olimjon-new_feature
 2061  git checkout dev
 2062  git merge %nematov-olimjon-new_feature
 2063  git log
 2064  git push origin dev
 2065  git checkout master
 2066  git merge dev
 2067  git push origin master
 2068  git checkout %nematov-olimjon-new_feature
 2069  vim README.md 
 2070  git add .
 2071  git commit -m "Changes to README.md"
 2072  git revert --help
 2073  git revert
 2074  git revert 1
 2075  git log
 2076  git revert 03a7d1af636edfe59f75a31a0718fbd332376401
 2077  git log
 2078  cat README.md 
 2079  git checkout master
 2080  git checkout -
 2081  git log | xclip
 2082  git checkout -
 2083  vim log.txt
 2084  git branch -d %nematov-olimjon-new_feature 
 2085  git branch -D %nematov-olimjon-new_feature 
 2086  git add .
 2087  git commit -m "Added log.txt"
 2088  git push origin master
 2089  git checkout dev
 2090  touch git_commands.md
