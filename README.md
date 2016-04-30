# FlashSpeaker

Simplify organizing your flash messages!

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'flash_speaker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flash_speaker

## Usage

In the head of ApplicationController add following line:
```ruby
  include FlashSpeaker
```
Now you can user specific method in your controller methods.
Like:
```ruby
  def update
    attach_message @user.update(user_params), @user.errors
    redirect_to user_path(@user)
  end
```

The stucture of the users.yml(for example) file with messages should be next:
```yml
  en:
    users:
      actions:
        update:
          success: User is successfully updated!
          failed: There are problems during user updating
```

You can also create set of default messages in default.yml:
```yml
  en:
    default:
      actions:
        update:
          success: <entity> is successfully updated!
          failed: There are problems during <entity> updating
```

But don't forget specify entity..
```yml
  en:
    users:
      entity: User
```

## Contributing

1. Fork it ( https://github.com/elhowm/flash_speaker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
