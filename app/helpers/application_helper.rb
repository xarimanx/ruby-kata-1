module ApplicationHelper
  def author_emails(list)
    list_items = list.split(',').map do |email|
      content_tag(:li, email)
    end
    content_tag(:ul, list_items.join().html_safe)
  end

  def extra_info(item)
    if item.is_a?(Book)
      content_tag(:span, 'Description: ') +
        content_tag(:span, item.description)
    else
      content_tag(:span, 'Published At: ') +
        content_tag(:span, item.published_at)
    end
  end
end
