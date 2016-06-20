module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Cyber Portal"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def randomized_background_image
    images = ["/images/esl-bg2.jpg", "/images/esl-bg.jpg", "/images/esl-bg3.jpg"]
    images[rand(images.size)]
  end
end
