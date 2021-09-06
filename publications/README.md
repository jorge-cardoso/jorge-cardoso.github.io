
Managing Content
=============
To update github run the following instructions.

## Generate the new bibs and publications
To generate the new bibs and publications web page:
+ cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
+ Create a new file named cardoso-2018.xx.yy.bib
+ Edit the file and add new publications
+ Copy the file to cardoso.bib   
+ php bibtex2html.php cardoso.bib index.md
+ make sure the file works and run $ jekyll serve

### Updating github after changes
+ git add .
+ git commit -m "Added UCC 2020 paper"
+ git push origin master