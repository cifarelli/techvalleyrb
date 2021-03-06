atom_feed :schema_date => 2009 do |feed|
  feed.title("Techvalley.rb Jobs")
  feed.subtitle("Jobs for TechValley Rubyists")
  feed.updated(@jobs.first.updated_at) if @jobs.any?

  @jobs.each do |job|
    feed.entry(job) do |entry|
      entry.title("#{job.title} at #{job.organization}")
      entry.content "type" => "html" do
        xml.text!("<strong>Location:</strong> #{job.location}")
        xml.text!(job.cached_description_html)
      end
      
      entry.author do |author|
        author.name("TechValley Ruby Brigade")
      end
    end
  end
end
