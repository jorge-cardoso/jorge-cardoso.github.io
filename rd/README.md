
Managing Content
=============
To update github run the following instructions.

## Generate the new bibs and publications
To generate the new bibs and rd (R&D) web page:

```bash
# cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/rd
cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/rd
# Run php bibtex2html.php cardoso.bib index.md
vi cardoso.bib
# To make sure the generated file works, run 
php bibtex2html.php cardoso.bib index.md
cd ..
bundle exec jekyll serve
```

### Commit to github
```bash
git add ./bibs
git add .
git commit -m "Added survey 2024 paper"
git push origin master
# when a password is required, enter your personal access token
```

### Troubleshooting

If there is Gemfile, always prepend bunde exec.
Delete Gemfile.lock and run 'bundle exec jekyll serve --trace' 
