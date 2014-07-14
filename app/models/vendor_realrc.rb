class VendorRealrc < Vendor
  def pars
      # encoding: UTF-8
    @total = 0

    categories = [16, 85, 24, 12]
    # categories = [16]
    categories.each do |category_id|
      url = "http://realrc.ru/category.php?id_category=#{category_id}"

      raw_html = open(url)
      parsed_html = Nokogiri::HTML(raw_html)

      parsed_html.css('#product_list li').each do |prod| 
        name = prod.css('h3 a').first['title'] 
        price = prod.css('span.price').first.text.split[0..-2].join.to_f
        @total += price
        puts "name: #{name}"
        puts "price: #{price}\n\n"
      end
    end
  end
end

