Rails.application.routes.draw do
  get "/" =>  "site#home"
  get "/text_inspections/new" => "text_inspections#new"
  post "/text_inspections" => "text_inspections#create"
  get "/asciis/new" => "asciis#new"
  post "/asciis/" =>"asciis#create"
end
