
This is, well, my web site
=============

You can go directly to the [web site](http://jorge-cardoso.github.io) and see what is all about :)
Bellow I include the main things you need to know in order to operate it in a very simple way.


Operating Jekyll
--------------
### Deploy locally
+ sudo gem install jekyll
+ sudo gem install jekyll-sitemap
+ jekyll new my-awesome-site
+ cd my-awesome-site
+ ~/my-awesome-site $ jekyll serve

### Run a local webserver
To deploy the site locally run:
+ jekyll serve


Managing Content
--------------
To update git hub run the following instructions.

### Updating github after changes
+ git add .
+ git commit -m "made some changes"
+ git push origin master

### Generate the new bibs and publications
To generate the new bibs and publications web page:
+ cd /Users/jcardoso/GitHub/jorge-cardoso.github.io/publications
+ Create a new file named cardoso-2018.xx.yy.bib
+ Edit the file and add new publications
+ Copy the file to cardoso.bib   
+ php bibtex2html.php cardoso.bib index.md
+ make sure the file works and rune $ jekyll serve
