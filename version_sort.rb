class Array
  def version_sort
    each do |element|
      element.singleton_class.send(:attr_accessor, :fname, :num1, :num2, :letter, :decimals)

      number = /(?<filename>.*)\-(?<first_number>\d+)\.?(?<second_number>[\d\.]+)?(?<letter_version>[a-z])?\.[a-z]/.match(element)
      decimals = element.split("").select {|letter| letter == "."}.size

      element.send(:fname=, number[:filename])

      element.send(:num1=, number[:first_number].to_i)

      number[:second_number] ? element.send(:num2=, number[:second_number].to_f) : element.send(:num2=, 0.0)

      number[:letter_version] ? element.send(:letter=, number[:letter_version]) : element.send(:letter=, "0")

      element.send(:decimals=, decimals)
    end

    sort! do |a,b|
      [a.send(:fname), a.send(:num1), a.send(:num2), a.send(:decimals), a.send(:letter)] <=> [b.send(:fname), b.send(:num1), b.send(:num2), b.send(:decimals), b.send(:letter)]
    end
  end
end