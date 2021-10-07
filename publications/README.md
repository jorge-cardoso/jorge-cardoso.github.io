
Managing Content
=============
To update github run the following instructions.

## Generate the new bibs and publications
To generate the new bibs and publications web page:
+ cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
+ Edit the file cardoso.bib add new publications
+ Ru php bibtex2html.php cardoso.bib index.md
+ To make sure the file works, run 
+ $ jekyll serve

```bash
cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
vi cardoso.bib
php bibtex2html.php cardoso.bib index.md
git add ./bibs
cd ..
jekyll serve
```

### Updating github after changes
```bash
git add .
git commit -m "Added CSI 2021 paper"
git push origin master
```