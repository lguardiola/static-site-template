# static-site-template

## usage

1. Clone this project

    git://github.com/lguardiola/static-site-template.git my_new_static_site

2. Create a Heroku application

    cd my_new_static_site
    heroku apps:create static-site-template

2. Install gems

    bundle --path=.bundle

3. copy or create new files to public

    cd public #("copy or create files here...")

4. add new files to the repository

    git add .

5. commit the changes

    git commit -m "add some files"

6. push and deploy to heroku

    git push heroku master

7. navigate site

    heroku open
