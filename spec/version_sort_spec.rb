describe "#version sort" do

  context "simple" do
    let(:unsorted_versions) { ["foo-25.ext", "foo-6.ext", "foo-100.ext", "foo-1.ext"]}
    let(:sorted_versions) { ["foo-1.ext", "foo-6.ext", "foo-25.ext", "foo-100.ext"] }

    it "turns an array of unsorted files into an array of sorted files" do
      expect(unsorted_versions.version_sort).to eq(sorted_versions)
    end
  end

  context "medium" do
    let(:unsorted_versions) {  ["foo-7.0b.ext", "foo-7.0.ext", "foo-6.0.ext", "foo-7.0a.ext"] }
    let(:sorted_versions) { [ "foo-6.0.ext", "foo-7.0.ext", "foo-7.0a.ext", "foo-7.0b.ext"] }

    it "turns an array of unsorted files into an array of sorted files" do
      expect(unsorted_versions.version_sort).to eq(sorted_versions)
    end
  end

  context "complex" do
    let(:unsorted_versions) {  JSON.parse(File.read("spec/fixtures/unsorted.json"))}
    let(:sorted_versions) { JSON.parse(File.read("spec/fixtures/sorted.json")) }
    let(:result) { unsorted_versions.version_sort }

    it "overview: turns an array of unsorted files into an array of sorted files" do
      expect(result).to eq(sorted_versions)
    end
    
    it "detail: turns an array of unsorted files into an array of sorted files" do
      sorted_versions.each_with_index do |version, i|
        expect(result[i]).to eq(version)
      end
    end

  end

end