atom_feed do |feed|
  feed.title("Blog Title")
  feed.updated((@entries.first.created_at))

  for entry in @entries
    feed.entry(entry) do |item|
      item.title(entry.title)
      item.content(entry.content, :type => 'html')
      item.author do |author|
        author.name("Taro")
      end
    end
  end
end