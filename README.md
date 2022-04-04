# README

Ruby project to support a blog, to study the language.

## Commands used during the code:

* Create project
```
rails new blog  -j esbuild --css bootstrap -d postgresql
```

* Install popperjs
```
npm install @popperjs/core --save
```

* Add gems
```
gem "rails-i18n"
gem "pry"
gem 'friendly_id'
gem 'pg_search'
```

* Generate friendly_id
```
rails generate friendly_id
rm db/migrate/20220404170112_create_friendly_id_slugs.rb
rails g migration add_slug_column_to_posts slug 
# add "unique: true" do the new migration file
rails db:migrate
```

* Precompile
```
rails assets:precompile
```

* Create database
```
rails db:create
```

* Create with scaffold controller/view/model/migration (model called "post" with properties "title", "author" e "body")
```
rails g scaffold post title:string author:string body:text
```

* Create a model for blog comments (called "comment", references "post" and has the properties "author" e "body")
* This model will have a reference in class Ruby, but the post class not, so enter in class "post.rb" and include "has_many: comments"
```
rails g model comment post:references author:string body:text
```

* Create tables
```
rails db:migrate
```

* Enters in Rails console and creates the first post manually
```
rails c
Post.create title: 'First post', body: 'First!', author: 'Eduardo Teixeira'
```
