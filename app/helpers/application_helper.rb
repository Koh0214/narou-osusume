module ApplicationHelper
  def page_title
    title = "なろう廃人のすすめ"
    title = title + "：" + @page_title if @page_title
  end
end
