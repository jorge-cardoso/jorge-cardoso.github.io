Running Website
===============

Web site for Jorge Cardoso.

Run ``bundle exec jekyll serve`` to start a Jekyll server for local development,
allowing a preview of the site locally before deploying it. 

Steps to Run ``bundle exec jekyll serve``
-----------------------------------------

1. **Install Ruby**:

   Ensure you have Ruby installed on your system. You can check if Ruby is installed by running::

     ruby -v

   If Ruby 3.2.3 is not installed, you can install it using a package manager:
   
   - **MacOS**: Using Homebrew::

       brew install ruby

   - **Ubuntu**: Using apt-get::

       sudo apt-get install ruby-full

2. **Install Bundler**:

   Bundler is a dependency manager for Ruby projects. You can install Bundler by running::

     gem install bundler

3. **Install Dependencies**:

   Ensure that you have a ``Gemfile`` in your Jekyll site directory. This file should list all the dependencies required by your Jekyll site. Run the following command to install these dependencies::

     bundle install

4. **Run Jekyll Server**:

   After installing all the necessary dependencies, you can start the Jekyll server using Bundler::

     bundle exec jekyll serve

5. **Access Web Site**:

   Open web browser: ``http://localhost:4000``


Troubleshooting Tips
--------------------

- **Check Gemfile**: Ensure your ``Gemfile`` includes the Jekyll gem::

    source 'https://rubygems.org'
    gem 'jekyll'

- **Update Bundler and Gems**: Sometimes, you might need to update Bundler or the gems listed in your ``Gemfile``::

    bundle update

- **Permissions**: If you run into permission issues when installing gems, you might need to use ``sudo`` or set up a local gem installation path.



