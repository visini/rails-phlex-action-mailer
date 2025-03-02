# frozen_string_literal: true

class Components::Layouts::Mailers::Html < Phlex::HTML
  def view_template(&block)
    doctype
    html do
      head do
        meta charset: "utf-8"
        style do
          plain <<~CSS
            body {
              font-family: Arial, sans-serif;
            }
            .highlight {
              background-color: yellow;
            }
            .signature {
              font-style: italic;
            }
          CSS
        end
      end
      body do
        div do
          b { "Application Name" }
        end
        yield block

        div { "Best Regards," }
        div(class: "signature") { "Company Name" }
      end
    end
  end
end
