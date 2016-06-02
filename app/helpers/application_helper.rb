#
module ApplicationHelper
  # value = {
  #           input: [{ name: firstname, value: Alexandre}],
  #           span: { class1: %w(input-group-addon),
  #                   class2: %w(glyphicon glyphicon-user) }
  #         }

  # def input_field(value)
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
end
