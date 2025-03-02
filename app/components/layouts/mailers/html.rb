# frozen_string_literal: true

class Components::Layouts::Mailers::Html < Phlex::HTML
  def view_template(&block)
    doctype
    html do
      head do
        meta charset: "utf-8"
      end
      body do
        div do
          b { "Application Name" }
        end
        yield block
        div { "Best Regards," }
        div { "Company Name" }
      end
    end
  end
end
