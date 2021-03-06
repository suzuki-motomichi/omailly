require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  describe '投稿' do
    context '入力値が正しい場合' do
      context 'フォームの入力値が正常' do
        it '確認ページが正しく表示されること' do
          visit new_post_path
          title = '確認ページのテスト'
          last_day = Faker::Number.between(from: 1, to: 9999)
          content = Faker::Games::Pokemon.name
          fill_in 'post_title', with: title
          fill_in 'post_last_day', with: last_day
          select '秒', from: status
          fill_in 'post_content', with: content
          click_button '確認'
          expect(page).to have_content(title)
          expect(page).to have_content(last_day)
          expect(page).to have_content(status)
          expect(page).to have_content(content)
        end

        it '投稿が成功すること' do
          visit new_post_path
          title = '投稿のテスト'
          last_day = Faker::Number.between(from: 1, to: 9999)
          content = Faker::Games::Pokemon.name
          fill_in 'post_title', with: title
          fill_in 'post_last_day', with: last_day
          select '秒', from: status
          fill_in 'post_content', with: content
          click_button '確認'
          click_button '作成'

          post = Post.first
          expect(current_path).to eq post_path(post)
          expect(post.title).to eq title
          expect(post.last_day).to eq last_day
          expect(page).to have_content(status)
          expect(post.content).to eq content
        end
      end
    end

    context '入力値が誤りの場合' do
      context '御名前が未入力の場合' do
        it '御名前が未入力の場合失敗すること' do
          visit new_post_path
          title = ''
          last_day = Faker::Number.between(from: 1, to: 9999)
          content = Faker::Games::Pokemon.name
          fill_in 'post_title', with: title
          fill_in 'post_last_day', with: last_day
          fill_in 'post_content', with: content
          click_button '確認'
          expect(page).to have_content('御名前を入力してください')
        end
      end

      context '御活躍が未入力の場合' do
        it '御活躍が未入力の場合失敗すること' do
          visit new_post_path
          title = 'タイトル'
          last_day = Faker::Number.between(from: 1, to: 9999)
          content = ''
          fill_in 'post_title', with: title
          fill_in 'post_last_day', with: last_day
          fill_in 'post_content', with: content
          click_button '確認'
          expect(page).to have_content('御活躍を入力してください')
        end
      end

      context '御名前で人の名前を入力した場合' do
        it '人の名前を入力した場合失敗すること' do
          visit new_post_path
          title = '佐藤'
          last_day = Faker::Number.between(from: 1, to: 9999)
          content = Faker::Games::Pokemon.name
          fill_in 'post_title', with: title
          fill_in 'post_last_day', with: last_day
          fill_in 'post_content', with: content
          click_button '確認'
          expect(page).to have_content('御名前 佐藤 様が傷つきます。')
        end
      end
    end
  end

  describe '詳細' do
    let(:post) { create(:post) }
    it '詳細ページが正しく表示されること' do
      visit posts_path(post)
      click_on post.title
      expect(page).to have_content(post.title)
      expect(page).to have_content(post.last_day)
      expect(page).to have_content(post.content)
    end
  end
end
