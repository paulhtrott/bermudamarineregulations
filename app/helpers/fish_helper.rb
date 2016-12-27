module FishHelper

  def google_image_search_path(fish)
    fish_param = { q: fish.species, tbm: "isch" }.to_param
    "https://www.google.com/search?#{fish_param}"
  end

  def title(fish)
    if fish.name.downcase.eql? fish.alt_name.downcase
      content_tag :h1, fish.name.capitalize
    else
      content_tag :h1, "#{fish.name.capitalize} (#{fish.alt_name.downcase})"
    end
  end
end
