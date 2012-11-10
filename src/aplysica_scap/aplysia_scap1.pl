use Image::Grab;

$pic = new Image::Grab;
$pic->url('http://prosite.expasy.org/cgi-bin/prosite/PSImage.cgi?hit=998,1188,6_1,Na+165,419,1_3,ION+789,964,1_3,ION+1534,1731,1_3,ION+1214,1440,1_3,ION+477,594,3_4,UNK&len=1993&hscale=0.5');
$pic->grab;

# Now to save the image to disk
open(IMAGE, ">image.png") || die"image.png: $!";
print IMAGE $pic->image;
close IMAGE;