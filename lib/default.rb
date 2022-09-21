Encoding.default_external = Encoding::UTF_8

include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo

module ArticlesHelper

  def reported_time(article)
    reported = article[:reported]
    "<time pubdate datetime='#{reported.strftime("%Y-%m-%d")}'>#{reported.strftime("%e/%b/%Y")}</time>"
  end

  def render_article(article)
    if article[:body]
      return article[:body]
    end

  end

  def get_year(article)
    article[:reported].strftime("%Y")
  end

  # def get_on_air(playlist)
  #   playlist[:on_air_at].getlocal(playlist[:on_air_at_timezone])
  # end

  # def get_display_title(playlist)
  #   get_on_air(playlist).strftime('%B %-d, %Y')
  # end

  # def get_display_month(playlist)
  #   get_on_air(playlist).strftime('%B %Y')
  # end

  # def get_anchor_month(playlist)
  #   get_on_air(playlist).strftime('%Y-%m')
  # end

  # def render_tracks(playlist)
  #   output = '<ol>'
  #   playlist[:tracks].each {|track|
  #     output << "<li>#{h(track[:album].to_s)} - #{h(track[:artist].to_s)} - #{h(track[:title].to_s)}</li>"
  #   }
  #   output << '</ol>'
  #   output
  # end

  # def render_mixcloud(playlist)
  #   unless playlist[:mixcloud_uri].nil?
  #     return "<p><a href='#{playlist[:mixcloud_uri]}' target='_blank'>Listen to the #{get_display_title(playlist)} show on Mixcloud</a></p>"
  #   end
  # end
end

include ArticlesHelper
