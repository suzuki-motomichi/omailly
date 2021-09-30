module ApplicationHelper
  def default_meta_tags
    {
      site: "O'MAILLY",
      title: 'オマイリー',
      reverse: true,
      charset: 'utf-8',
      separator: '|',
      description: 'すでに終わっていたり、オワコンに近いものを勝手にサービスを終わらせるサービスです',
      keywords: 'お参り,オマイリー,Omailly,おまいり,オワコン',
      canonical: request.original_url,
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :title,
        description: :description,
        url: request.original_url,
        image: image_url('top-image.png'),
        type: 'website',
        locale: 'ja_JP'
      },
      twitter: {
        site: '@Find_michi',
        card: 'summary_large_image',
        image: image_url('top-image.png')
      }
    }
  end

  def page_title(page_title = '')
    base_title = "O'MAILLY"

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end
end
