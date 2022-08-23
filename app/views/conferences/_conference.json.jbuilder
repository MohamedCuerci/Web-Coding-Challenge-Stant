json.extract! conference#, :id, :title, :time, :created_at, :updated_at

json.id conference.id
json.title conference.title
json.time conference.time
json.url conference_url(conference, format: :json)
