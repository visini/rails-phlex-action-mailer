# frozen_string_literal: true

class Components::Layouts::Mailers::Text < Phlex::HTML
  def view_template(&block)
    plain "Application Name"
    plain "\n\n"
    yield block
    plain "\n\n\n"
    plain "Best Regards,"
    plain "\n"
    plain "Company Name"
  end
end
