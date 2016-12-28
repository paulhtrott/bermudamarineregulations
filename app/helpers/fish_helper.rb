module FishHelper

  def google_image_search_path(fish)
    fish_param = { q: fish.species, tbm: "isch" }.to_param
    "https://www.google.com/search?#{fish_param}"
  end

  def title(fish)
    if fish.name.downcase.eql? fish.alt_name.downcase
      content_tag :h3, fish.name.titlecase
    else
      content_tag :h3, "#{fish.name.titlecase} (#{fish.alt_name.titlecase})"
    end
  end
end
