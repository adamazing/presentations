
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
