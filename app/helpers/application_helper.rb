#
module ApplicationHelper
  # value = {
  #           input: [{ name: firstname, value: Alexandre, type: :text_field_tag, disabled: true}],
  #           span: { class1: %w(input-group-addon),
  #                   class2: %w(glyphicon glyphicon-user) }
  #         }
  TYPE = { text: :text_field_tag, password: :password_field_tag }.freeze

  def input_field(value)
    content_tag :div, class: "col-sm-6" do
      content_tag :div, class: "input-group" do |t|
        tmp = value[:input].map do |input|
          text_field_tag input[:name], input[:value], name: input[:name], class: 'form-control', disabled: input[:disabled]
        end

        tmp << (content_tag :span, nil, class: 'input-group-addon' do
          content_tag :span, nil, class: value[:span][:class]
        end)

        tmp.join.html_safe
      end
    end
  end
end
