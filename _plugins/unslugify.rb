module Unslugify
  def unslugify(text)
    text.split("-").join(" ")
  end
end

Liquid::Template.register_filter(Unslugify)
