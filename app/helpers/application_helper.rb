module ApplicationHelper
  def default_meta_tags
    {
      site: 'Omailly',
      title: 'オマイリー',
      reverse: true,
      charset: 'utf-8',
      separator: '|',
      description: '過去の"やらかし"や、既に終わっていたり、オワコンに近いものを勝手にサービスを終わらせるサービスです',
      keywords: 'お参り,オマイリー,Omailly,おまいり,オワコン',
      canonical: request.original_url,
      icon: [
        { href: image_url('favicon.png') }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        # image: image_url('ogp_twitter_card.png'),
        locale: 'ja_JP'
      },
      twitter: {
        site: '@Find_michi',
        card: 'summary_large_image',
        # image: image_url('ogp_twitter_card.png')
      }
    }
  end
end
