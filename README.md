# README

Ruby project to support a blog, to study the language.

## Commands used during the code:

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
