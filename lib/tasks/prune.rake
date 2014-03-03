namespace :todolist do

  desc 'Removes old todos'
  task prune: :environment do
    Todolist.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end