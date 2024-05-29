# frozen_string_literal: true

class ExampleClass
  attr_reader :foo, :bar

  def my_awesome_method(foo:, bar:, **)
    if foo == bar
      return 'foo is equal to bar'
    elsif foo > bar
      return 'foo is greater than bar'
    elsif foo < bar
      return 'foo is less than bar'
    elsif !baz.nil?
      return 'a wild baz appeared'
    end

    return unless foo > 0 and bar > 0

    'foo and bar are both positive'
  end
end
