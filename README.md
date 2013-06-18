# Voxie WebGL / Angular Prototyp Base

this is a base image / repo for any sort of angular / webgl / three or other io intensive webgl prototyping I want to do.

## Detailed Docs

- install and `rake doc:view`
- [New to rails?][rails-rdoc]

## Local Install

This package is set up to use some external tools:

- [git-flow][git-flow]
- [rvm][rvm]
- [postgresql][postgresql]
- [qt][qt-website]
- [phatomjs][phantomjs]

First you will need to set up a postgresql user for the database:

    sudo -u postgres createuser --createdb --pwprompt voxie
    # make password voxie
    # make superuser

To set up a local env clone and cd into cloned directory then:

    bundle install
    rake db:setup
    foreman start

You should be able to view the site on `localhost:3000`, or [here][local-host]

## Dev Guidlines

- Use git flow
- Use the issue tracker
- Comment
- Test
- Keep docs up to date!

## Roadmap

- initial angular / d3js / three.js instansiation
- improve / re-design / profile / expand over time
  - update to rails 4 when released
  - use rails 4 perf_test gem after update for performance testing

[phantomjs]: http://phantomjs.org/ "Headless javascript api"
[local-host]: http://localhost:3000 "Local default server port"
[postgresql]: http://postgresql.org "Postgresql Official Site"
[rvm]: http://rvm.io "Ruby Versioning Manager Official Site"
[git-flow]: http://github.com/nvie/gitflow "Git-flow plugin page"
[local-rdoc]: http://localhost:3001/doc/app "Local generated rdoc"
[rails-rdoc]: rails_primer.rdoc "Local rails default doc"
[qt-website]: http://qt-project.org "Qt Official Project Page"