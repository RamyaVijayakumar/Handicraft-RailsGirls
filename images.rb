# Update snippet
Handicraft.all.each do |handicraft|
	image = ["http://g02.s.alicdn.com/kf/HT1H3kdFIJcXXagOFbX5/200003176/HT1H3kdFIJcXXagOFbX5.jpg","http://www.rajasthantour4u.com/images/copadolls1.gif","http://www.tapja.com/wp-content/uploads/2013/02/modern-wall-art-as-wall-hangings.jpg","https://saumyascards.files.wordpress.com/2012/06/paper-doily-card-brown-2.jpg", "http://3.bp.blogspot.com/__NddmR2QiGo/TGU3bWaGUgI/AAAAAAAABG4/sxssofzb8zs/s320/KA-13RP-150-01.jpg","http://i00.i.aliimg.com/img/pb/622/011/748/748011622_050.jpg","http://s1.hubimg.com/u/8281858_f496.jpg", "http://img.kwikdeko.com/2013/04/decorative-items-5.jpg"].sample
	handicraft.update_attributes(:image => image)
end


