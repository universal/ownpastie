module PicturesHelper
  
  def pictures_to_trs(pictures, cols)
    html = ""
    i = 0
    while i < pictures.length
      links = "<tr class=\"odd\">\n"
      html << "<tr>\n"
      i.upto i+cols-1 do |j|
        if picture = pictures[j]
          html << "  <td>"
          html << link_to(image_tag(picture.public_filename(:thumb)), picture.public_filename)
          html << "</td>\n"
          links << "  <td>"
          links << link_to('Delete', picture, :confirm => 'Are you sure?', :method => :delete)
          links << "</td>\n"
        else
          html << "  <td></td>"
          links << "  <td></td>"
        end
      end
      html << "</tr>\n"
      links << "</tr>\n"
      html << links
      i += cols
    end
    html
  end
  alias_method :p2trs, :pictures_to_trs
end
