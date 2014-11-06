# HappyPath

1. Navigate to your `posts/new` form.
2. Fill it out, hit create.
3. Go do other stuff.
4. Navigate back to your last post.
5. But wait what was the id of that post?
6. Go to command line
7. `rails c` your way into typing `Post.last.id`
8. Go to `posts/id`
9. Tedious.

With HappyPath, you can just do:

1. Navigate to your `posts/new` form.
2. Fill it out, hit create.
3. Go do other stuff.
4. Navigate back to your last post with `/posts/last`.

This is enabled for `/last` and `/first`.

## Installation

Add this line to your application's Gemfile:

    gem 'happy_path'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install happy_path

## How Do the Things?

After installation, put `extend HappyPath` in your `ApplicationController` and then any controllers you want this functionality to work in such as `posts_controller.rb`.

Then put `setup_happy_path` in ApplicationController, and `follow_happy_paths` in each other controller and you are good to go.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/happy_path/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
