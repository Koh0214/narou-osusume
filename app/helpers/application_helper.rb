module ApplicationHelper
  def page_title
    title = @page_title if @page_title
  end

  def page_description
    description = @page_description
  end

  def default_meta_tags
    {
      site: 'なろう廃人のすすめ',
      title: page_title,
      reverse: false,
      charset: 'utf-8',
      description: '小説家になろうのオススメ小説を教えあう共有サイトです。',
      keywords: '小説家になろう, おすすめ, オススメ',
      canonical: request.original_url,
      separator: ':',
      icon: [
        # { href: image_url('favicon.ico') },
        # { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'なろう廃人のすすめ',
        title: page_title,
        description: '小説家になろうのオススメ小説を教えあう共有サイトです。',
        type: 'website',
        url: request.original_url,
        # image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@ツイッターのアカウント名',
      }
    }
  end
end
