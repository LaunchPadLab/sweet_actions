# Sweet Actions

## Introduction
Controller actions (`events#create`) tend to have more in common with their cousins (`articles#create`) than their siblings (`events#show`). Because of this, we think actions should be classes instead of methods. This makes it possible for actions to take advantage of common Object Oriented principles like Inheritance and Composition.

## Installation

### 1. Install Gem

Gemfile:
```ruby
gem 'sweet_actions'
```

Terminal:

```
bundle
```

## Usage

### Creating An Action

Let's say you want to create the action `events#export`.

1. Create a new file at app/actions/events/export.rb:
2. Implement `action` method that responds with a response hash
3. Create the route

```ruby
# app/actions/events/export.rb:
module Events
  class Export < SweetActions::JSONAction
    def action
      {
        success: true
      }
    end
  end
end
```

```ruby
# config/routes.rb
Rails.application.routes.draw do
  scope :api
    scope :v1      
      get '/events/export' => 'sweet_actions#export', namespace: 'Events'
    end
  end
end
```

Using a tool like Postman, submit the following request:

```
GET to localhost:3000/api/v1/events/export
```

You should get a response like so:

```json
{
  success: true
}
```

