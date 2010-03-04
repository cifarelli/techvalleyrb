atom_feed :schema_date => 2009 do |feed|
  feed.title("Techvalley.rb upcoming Events")
  feed.subtitle("Events coming up for TechValley Ruby Brigade")
  feed.updated(@events.first.updated_at) if not @events.blank?

  @events.each do |event|
    feed.entry(event) do |entry|
      entry.title(event.title)
      entry.content(event.description_html, :type => 'html')
      entry.author do |author|
        author.name("TechValley Ruby Brigade")
      end
    end
  end
end
