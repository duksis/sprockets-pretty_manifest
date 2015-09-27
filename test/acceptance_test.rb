require 'minitest/autorun'
require 'sprockets/pretty_manifest'

class AcceptanceTest < MiniTest::Test
  def setup
    @manifest_path = [
      './tmp/', Time.now.to_i, rand(1000), __method__, '.json'
    ].join
  end

  def teardown
    File.delete(@manifest_path)
  end

  def file_content
    File.open(@manifest_path, 'r').read
  end

  def test_manifest_file_output
    Sprockets::Manifest.new(
      Sprockets::Environment.new, @manifest_path
    ).compile

    assert_equal("{\n}", file_content)
  end
end
