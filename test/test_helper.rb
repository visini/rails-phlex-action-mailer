ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "ostruct"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
    def assert_mailer_fixtures(name, email)
      email_body_html = email.html_part.body.to_s
      email_body_text = email.text_part.body.to_s.strip
      expected_html = read_fixture("#{name}.html").join.strip
      expected_text = read_fixture("#{name}.txt").join.strip
      fixture_html = Nokogiri::HTML.parse(expected_html).to_html.strip
      email_html = Nokogiri::HTML.parse(email_body_html).to_html.strip
      assert_dom_equal fixture_html, email_html
      assert_equal expected_text, email_body_text
    end
  end
end
