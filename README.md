# Recruitline

Basic application that keeps track of recruiting candidate information, including interviewers,
types of screenings performed, stage of candidate in the pipeline, etc. It is a poor-person's
HR hiring system.

## Prerequisites

This application requires Ruby to be installed - the preferred method is to use RVM to manage
the Ruby environment (although deploying the application in a production setting is likely very
different any may be added for informational purposes at a later date). First, install RVM
per the following link:

https://rvm.io/

Then, install the latest Ruby version:

```bash
$ gem install ruby
```

The application currently assumes a SQLite database is installed:

```bash
$ sudo apt-get install sqlite3
```

## Installation

To get started with the install, clone the repository and install the required dependencies:

```bash
$ git clone https://github.com/jekhokie/recruitline.git
$ cd recruitline/
$ bundle install
```

The migrations required for the database to contain the correct information need to be run:

```bash
$ rake db:migrate
```

Finally, launch the app!

```bash
$ rails s --binding 0.0.0.0
```

Assuming your IP address is '10.11.13.14', you can now access the application via a web
browser at the following URL:

http://10.11.13.14:3000/
