require 'minitest/autorun'
require 'sprockets/pretty_manifest'

class PrettyManifestTest < MiniTest::Test
  def setup
    @manifest = Sprockets::Manifest.new(Sprockets::Environment.new, './tmp.json')
  end

  def test_original_json_encode
    assert_equal '{}', @manifest.send(:original_json_encode, {})
  end

  def test_patched_json_encode
    assert_equal "{\n}", @manifest.send(:json_encode, {})
  end
end
