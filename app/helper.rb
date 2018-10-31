def textAnySize text
  any_sized = []
  if text.is_a? Array
    text.each do |t|
      any_sized << [t, t.downcase, t.upcase, t.capitalize, t.titleize]
    end
  else
    any_sized << [text, text.downcase, text.upcase, text.capitalize, text.titleize]
  end
end
