class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    int_array = a.collect{ |c| (c.to_i) }
    add_two_array = int_array.collect{ |i| (i + 2) }
    less_than_ten_array = add_two_array.delete_if{ |i| (i > 9) }
    even_array = less_than_ten_array.delete_if{ |i| (i % 2 == 1) }
    return even_array.uniq.sum
  end
end
