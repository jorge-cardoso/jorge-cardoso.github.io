
Managing Content
=============
To update github run the following instructions.

## Generate the new bibs and publications
To generate the new bibs and publications web page:
+ cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
+ Edit the file cardoso.bib add new publications
+ Run php bibtex2html.php cardoso.bib index.md
+ To make sure the generated file works, run 
+ $ jekyll serve

```bash
cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
vi cardoso.bib
php bibtex2html.php cardoso.bib index.md
git add ./bibs
cd ..
jekyll serve
```

### Commit to github
```bash
git add .
git commit -m "Added survey 2022 paper"
git push origin master
# when a password is required, enter your personal access token
# 
```

### Troubleshooting

If there is Gemfile, always prepend bunde exec.
Delete Gemfile.lock and run 'bundle exec jekyll serve --trace' 
