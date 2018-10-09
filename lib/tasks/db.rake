# rake db:reinstall
# データベースのリセットを行い、シードを投入する
namespace :db do
  desc 'Drop and install db'
  task :reinstall do
    if Rails.env.development?
      Rake::Task['db:drop'].invoke
      Rake::Task['db:create'].invoke
      Rake::Task['db:migrate'].invoke
      Rake::Task['db:seed'].invoke
    end
  end
end
