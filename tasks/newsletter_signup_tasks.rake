namespace :newsletter_signup do
  desc "(incomplete) Task to copy migration, and invoke rake db:migrate"
  task :setup do
    #file 'path/target.txt' => 'path/source.txt' do
    cp 'path/source.txt', 'path/target.txt', [ :verbose => true]
    #end
  end
  
end