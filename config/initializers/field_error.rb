ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  class_attr_index = html_tag.index 'class="'

  if class_attr_index
    html_tag.insert class_attr_index+7, 'error '
  else
    html_tag.insert html_tag.index('>'), ' class="error"'
  end
end

# ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
#   if html_tag =~ /<(input|textarea|select)[^>]+class=/
#     class_attribute = html_tag =~ /class=['"]/
#     html_tag.insert(class_attribute + 7, "fieldWithErrors ")
#   elsif html_tag =~ /<(input|textarea|select)/
#     first_whitespace = html_tag =~ /\s/
#     html_tag[first_whitespace] = " class='fieldWithErrors' "
#   end
#   html_tag  
# end

# This goes inside config/application.rb
# config.action_view.field_error_proc = Proc.new { |html_tag, instance| "#{html_tag}".html_safe }