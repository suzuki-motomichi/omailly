class CheckPersonNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    names = tokenize(value)
    return if names.blank?
    record.errors[attribute] << "  #{names.join} 様が傷つきます。"
  end

  private

  def tokenize(value)
    nm = Natto::MeCab.new("-d #{Rails.root.join('dic/mecab-ipadic-neologd')} -u #{Rails.root.join('dic/userdic/user_dic_omailly.dic')}")
    names = []
    nm.parse(value) do |n|
      names << n.surface if n.feature.split(',')[2] == '人名'
    end
    return names
  end
end
