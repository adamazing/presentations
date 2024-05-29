
# What is Rubocop? 

  > "Rubocop is a Ruby static code analyzer (a.k.a. `linter`) and code formatter"
    
  If you are coming from the Front End, think of it like ESLint. 

  Similar tools exist for pretty much every language and they:
    - Pick up non-idiomatic code 
      e.g. repeated `if-elsif-elsif-elsif`s instead of a `case-when`, or whatever this is: `puts 'foo'; puts 'bar'`
    - Pick up potential sources of errors
      e.g. statements like `x =- y` where you probably meant `x -= y`
    - Pick up potential code-smells 
      e.g. excessive nesting of conditional and loop constructs

# How do we use Rubocop to lint our Ruby here at Flick? 

   We have a lot of services and a lot of gems. And Rubocop is hiiiighly configurable. Simply adding `gem rubocop` 
   to each service or gem's Gemfile would lead to inconsistent linting rules being applied across Flick's ecosystem. 

   Instead, we bundle up rubocop and its configuration within the `flick_lint` gem. 
    ([flick_lint](https://github.com/FlickElectric/flick_lint)
                

# How does Rubocop work? 

  Under Rubocop's cold, unfeeling, metal exterior, lies a gem called [`parser`](https://github.com/whitequark/parser). 
  It is written in Ruby and its singular function is to parse Ruby code and output something called an 
  `Abstract Syntax Tree` or `AST`. 

  AST's are a pretty common intermediary step between what *we* write, and what the machines *run*. 
  An Abstract Syntax Tree is just a representation of the code, and you'll often see it shown as ✨`S-Expressions`✨

  - It takes Ruby that looks like:
    ```ruby
    !array.empty?
    ```

  - And turns it into this:
    ```scheme
    (send
      (send
        (send nil :array) :empty?) :!)
    ```

# Ok, so what now? Can anyone just write one of these Cop things?
  
  Well we've already got some Custom Cops in the `flick_lint` gem, so we can have a look at how those take the 
  Abstract Syntax Tree representation and turn it into the judgmental, passive-aggressive messages in your terminal!

  [flick_lint](/Users/adam/Documents/Projects/flick_lint/lib/flick_lint/cops/env_access.rb)
                  

# How do we know that the Cops we write are doing the right thing?

  Great question! Because we're honest and law-abiding developers, and because no-one is above the law, we 
  need to make sure our Custom Cops are tested! And that THEY follow the law!

  [test_those_cops](/Users/adam/Documents/Projects/flick_lint/spec/cops/env_access_spec.rb)


# Other questions!












































!!Presentation:Font:26
