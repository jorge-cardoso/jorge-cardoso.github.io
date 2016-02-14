
Install Jekyll
sudo gem install jekyll
sudo gem install jekyll-sitemap
jekyll new my-awesome-site
cd my-awesome-site
~/my-awesome-site $ jekyll serve


To deploy the site locally run:
jekyll serve


To update git hub run the following commands:
git add .
git commit -m "made some changes"
git push origin master

To generate the new bibs and publications web page:
cd jorge-cardoso.github.io/publications
php bibtex2html.php cardoso.bib index.md
