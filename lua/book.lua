local json = require 'cjson'

local book = {
    title = 'Pride and Prejudice',
    author = 'Jane Austen',
}

book_json = json.encode(book)
ngx.say(book_json)
