crumb :root do
  link "ホーム", root_path
end

crumb :show_items do |item|
  link '商品ページ', item
  parent :root
end

crumb :register_users do |user|
  link '本人情報', "/users/#{current_user.id}/register"
  parent :root
end

crumb :profile_users do |user|
  link 'プロフィール', "/users/#{current_user.id}/profile"
  parent :root
end

crumb :mypage_users do |user|
  link 'マイページ', "/users/#{current_user.id}"
  parent :root
end

crumb :delete_users do |user|
  link 'ログアウト', user
  parent :mypage_users
end

crumb :lists_items do |item|
  link '出品した商品 - 出品中', item
  parent :mypage_users
end

crumb :check_items do |item|
  link '出品商品画面', item
  parent :mypage_users
end

crumb :new_creditcard do |user|
  link 'クレジットカード情報入力', user
  parent :mypage_users
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
