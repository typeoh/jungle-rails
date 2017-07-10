# Jungle

A mini e-commerce application built with Rails 4.2. Users can purchase and review items.
Upon purchase they will receive an email confirmation with their order details. 
Admin can add and update categories and products. 


![Admin Categories](https://github.com/typeoh/jungle-rails/blob/master/public/screenshots/admin_cat.png)
![Index](https://github.com/typeoh/jungle-rails/blob/master/public/screenshots/jungle_index.png)
![Jungle Index](https://github.com/typeoh/jungle-rails/blob/master/public/screenshots/jungle_index.png)
![View Cart](https://github.com/typeoh/jungle-rails/blob/master/public/screenshots/view_cart.png)


## Getting started

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Create .env file based on .env.example
5. Sign up for a Stripe account
6. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Letter_opener
* Bcrypt
