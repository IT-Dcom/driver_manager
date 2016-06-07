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
      content_tag :div, class: "input-group" do
        # value[:input].each do |input|

          # puts "TEST : #{input}"
          # text_field_tag input[:name], input[:value], name: input[:name], class: 'form-control', disabled: input[:disabled]
        tmp = text_field_tag value[:input][0][:name], value[:input][0][:value], name: value[:input][0][:name], class: 'form-control', disabled: value[:input][0][:disabled]
        # end
        content_tag :span, nil, class: 'input-group-addon' do
          content_tag :span, nil, class: value[:span][:class]
        end
      end
    end
  end
end
# TYPE[input[:type]]
#   res = "<div class='col-sm-6'>\n"
#   value[:input].each do |input|
#     res << "\t<div class='input-group'>\n"
#     res << "\t\t<input name='#{input[:name]}' class='form-control'\n"
#     res << "\t\t\tvalue='#{{input[:value]}}'>\n"
#
#   end
#   res << "\t</div>\n"
#   res << "</div>\n"
#
#
#     <div class='input-group'>
#       <input name='firstname' class='form-control'
#         value='<%= current_user.firstname %>' disabled='true'>
#       </input>
#       <input name='lastname' class='form-control'
#              value='<%= current_user.lastname %>' disabled='true'>
#       </input>
#       <span class='input-group-addon'>
#         <span class='glyphicon glyphicon-user'></span>
#       </span>
#     </div>
# end
