# Named Parameter `v0.0.1`

## Description
Have you ever dreamed about named parameter with Ruby? Well, you don't have to wait for 
Ruby 2.0, just install this gem and have fun!

## How it works
All you need is to extend the module NamedParameter in your class/module and apply the method 'named'
before you define your method. When you call your method, pass a hash as argument. The hash keys 
represents the named parameters. Checkout this example:

    class People
      extend NamedParameter
      
      named def say(phrase)
        puts "People says: #{phrase}"
      end
    end
    
    People.new.say phrase: "Awesome!"

Or maybe you want to define an optional parameter, no problem!

    class People
      extend NamedParameter
      
      named def say(phrase="I'm mute")
        puts "People says: #{phrase}"
      end
    end
    
    People.new.say

Multiple arguments? Of course!

    class Point
      extend NamedParameter
      
      named def move_to(x,y,z=0)
        puts "Moving to [#{x},#{y},#{z}]"
      end
    end
    
    Point.new.move_to(y: 30,x: 50)

## Production ready?
**You (maybe)**:"Oh! Magic! I'll use in my projects!"
**Me**: Wait! Before you use it in production, you have to know that gem
uses the [method_added callback](http://ruby-doc.org/core/classes/Module.html#M000460). So if you want to apply named parameter
and this callback in the same class, you have to use this [around alias spell](https://gist.github.com/534772#file_around_alias.rb).

## How to Install
Just install the gem:

    gem install named_parameter
