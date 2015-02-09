describe "#version sort" do

  let(:unsorted_versions) { 
    [
      "foo-1.10.2.ext",
      "foo-1.11.ext",
      "foo-1.3.ext",
      "foo-1.50.ext",
      "foo-1.8.7.ext",
      "foo-1.9.3.ext",
      "foo-1.ext",
      "foo-10.1.ext",
      "foo-10.ext",
      "foo-100.ext",
      "foo-13.ext",
      "foo-2.0.0.ext",
      "foo-2.0.1.ext",
      "foo-2.0.ext",
      "foo-2.007.ext",
      "foo-2.01.ext",
      "foo-2.012b.ext",
      "foo-2.01a.ext",
      "foo-2.0a.ext",
      "foo-2.0b.ext",
      "foo-2.1.ext",
      "foo-25.ext",
      "foo-6.ext"
    ] 
  }
  
  let(:sorted_versions) { 
    [
      "foo-1.ext",
      "foo-1.3.ext",
      "foo-1.8.7.ext",
      "foo-1.9.3.ext",
      "foo-1.10.2.ext",
      "foo-1.11.ext",
      "foo-1.50.ext",
      "foo-2.0.ext",
      "foo-2.0a.ext",
      "foo-2.0b.ext",
      "foo-2.0.0.ext",
      "foo-2.0.1.ext",
      "foo-2.01.ext",
      "foo-2.01a.ext",
      "foo-2.1.ext",
      "foo-2.007.ext",
      "foo-2.012b.ext",
      "foo-6.ext",
      "foo-10.ext",
      "foo-10.1.ext",
      "foo-13.ext",
      "foo-25.ext",
      "foo-100.ext"
    ]
  }

  it "turns an array of unsorted files into an array of sorted files" do
    result = unsorted_versions.version_sort
    puts "\nDesired Order:"
    puts sorted_versions
    puts "\nYour Order:"
    puts result

    sorted_versions.each_with_index do |version, i|
      expect(result[i]).to eq(version)
    end
  end

end