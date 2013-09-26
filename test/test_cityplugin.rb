require 'test/unit'
require 'thecity-plugin'


class CitypluginTest < Test::Unit::TestCase

  TEST_ENCRYPTED_STRING = "mi8120mtdLklO7TLg_aaWGBVvIfSLnBXYhOH-ssYk308qJM0A8lJVVjOQW4bEqaQ82Trf2ur041zhE5EihnIeOz5C-rhuV9ChYLAZYhVM8-pDZBqWVLAfTaz6QjWzOjDtJwbKdDUElbPtrEZwPc8QlAB6EPwH-cITfy_5zbdUJVzVG4mELlL9OV61eBALQyLtE7Yhuwy8eZxzW30mEWWFqpKtfniUybX4GS3fhp-5VI="
  TEST_DECRYPTED_STRING = '{"oauth_token":"7dcf516250bf550bf93bf2b12fbb4613ec6f562f1103c341299d2c3f06d50433","global_user_id":959745582,"account_id":1,"user_id":946060874,"subdomain":"local"}'

  TEST_IV = 'fF_XYU82htUXkSH1c66eew=='
  TEST_SECRET = '2566099a01ddb7913a9a37dd967a74bd'

  def test_decrypt
    assert_equal(TEST_DECRYPTED_STRING, Thecity::Plugin::decrypt_city_data(TEST_ENCRYPTED_STRING, TEST_IV, TEST_SECRET))
  end

end