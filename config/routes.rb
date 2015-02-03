# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html


get 'wiki_history', to: "wiki_history#history"

get '/projects/:project_id/wiki/:id/:version/wiki_diff', to: 'wiki_history#wiki_diff', as: :wiki_diff_page
get '/projects/:project_id/wiki/:id/wiki_diff', to: 'wiki_history#wiki_diff', as: :wiki_diff_page