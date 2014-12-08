ActiveAdmin.register Page do
  permit_params :exception, :message_matcher, :body

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs "Page" do
      f.input :exception, placeholder: "NameError"
      f.input :message_matcher, placeholder: "undefined local variable or method `(.+)' for", hint: "Visit #{link_to "rubular.com", "http://rubular.com/?test=#{URI.encode f.object.message_matcher}", target: :blank} to test your regex".html_safe
      f.input :body
    end
    f.actions
  end
end
