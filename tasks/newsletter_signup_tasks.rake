# desc "Explaining what the task does"
task :newsletter_signup do
  #file 'path/target.txt' => 'path/source.txt' do
      cp 'path/source.txt', 'path/target.txt', [ :verbose => true]
  #end
end
