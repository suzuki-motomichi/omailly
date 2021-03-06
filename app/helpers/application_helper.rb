module ApplicationHelper
  def default_meta_tags
    {
      site: "O'MAILLY",
      title: "O'MAILLY で供養しましょう",
      reverse: true,
      charset: 'utf-8',
      separator: '|',
      description: 'すでに終わっていたり、オワコンに近いモノやサービスを勝手に終わらせるサービスです。壊れていても構いません。',
      keywords: 'お参り,オマイリー,Omailly,おまいり,オワコン',
      canonical: request.original_url,
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        url: request.original_url,
        image: image_url('top-image.png'),
        type: 'website',
        locale: 'ja_JP'
      },
      twitter: {
        site: '@Find_michi',
        card: 'summary_large_image'
      }
    }
  end

  def page_title(page_title = '')
    base_title = "O'MAILLY"
    root_title = "O'MAILLY | オマイリー"

    page_title.empty? ? root_title : page_title + ' | ' + base_title
  end
end
