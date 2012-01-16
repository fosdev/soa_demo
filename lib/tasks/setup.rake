desc 'Initialize application'
task :setup => :environment do
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
  Rake::Task['db:seed'].invoke
end