json.array!(@drinks) do |drink|
  json.extract! drink, :id, :name, :category, :obr1, :obr2, :obr3, :autor, :time, :iba, :text1, :text2, :text3, :text4, :text5
  json.url drink_url(drink, format: :json)
end
