json.array!(@anagramas) do |anagrama|
  json.extract! anagrama, :id, :word1, :word2, :check
  json.url anagrama_url(anagrama, format: :json)
end
