# static-site-template

## usage

1. Clone this project

    git://github.com/lguardiola/static-site-template.git my_new_static_site

2. Unlink original github reference

    git remote rm origin

3. Create a Heroku application

    cd my_new_static_site

    heroku apps:create my_new_static_site

4. Install gems

    bundle --path=.bundle

5. copy or create new files to public

    cd public #("copy or create files here...")

    note:
      to test this site, run localy a rackup server,
      on this way into your project base directory..

      rackup[enter]

      at this moment you can navigate localy http:localhost:9292/ to see you static site

6. add new files to the repository

    git add .

7. commit the changes

    git commit -m "add some files"

8. push and deploy to heroku

    git push heroku master

7. navigate site

    heroku open
